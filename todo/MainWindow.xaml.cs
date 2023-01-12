using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

//Using namespaces  
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace DataGridBind
{
    /// <summary>  
    /// Interaction logic for MainWindow.xaml  
    /// </summary>  
    public partial class MainWindow : Window
    {
        #region MySqlConnection Connection  
        MySqlConnection conn = new
        MySqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public MainWindow()
        {
            InitializeComponent();
        }
        #endregion
        #region bind data to DataGrid.  
        private void btnloaddata_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("Select Id,Surname,Name,Address,City,Phone,Email from common", conn);
                MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds, "LoadDataBinding");
                dataGridCustomers.DataContext = ds;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
        #endregion


        private void btnupdatedata_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                conn.Open();
                DataTable dt = (dataGridCustomers.DataContext as DataSet).Tables[0];

                foreach (DataRow row in dt.Rows)
                {
                    if (row.RowState == DataRowState.Modified)
                    {
                        MySqlCommand cmd = new MySqlCommand("UPDATE common SET Surname=@Surname,Name=@Name,Address=@Address,City=@City,Phone=@Phone,Email=@Email WHERE Id=@Id", conn);
                        cmd.Parameters.AddWithValue("@Surname", row["Surname"]);
                        cmd.Parameters.AddWithValue("@Name", row["Name"]);
                        cmd.Parameters.AddWithValue("@Address", row["Address"]);
                        cmd.Parameters.AddWithValue("@City", row["City"]);
                        cmd.Parameters.AddWithValue("@Phone", row["Phone"]);
                        cmd.Parameters.AddWithValue("@Email", row["Email"]);
                        cmd.Parameters.AddWithValue("@Id", row["Id"]);

                        cmd.ExecuteNonQuery();
                    }
                    if (row.RowState == DataRowState.Added)
                    {
                        MySqlCommand cmd = new MySqlCommand("INSERT INTO common (Surname,Name,Address,City,Phone,Email) VALUES (@Surname,@Name,@Address,@City,@Phone,@Email)", conn);
                        cmd.Parameters.AddWithValue("@Surname", row["Surname"]);
                        cmd.Parameters.AddWithValue("@Name", row["Name"]);
                        cmd.Parameters.AddWithValue("@Address", row["Address"]);
                        cmd.Parameters.AddWithValue("@City", row["City"]);
                        cmd.Parameters.AddWithValue("@Phone", row["Phone"]);
                        cmd.Parameters.AddWithValue("@Email", row["Email"]);

                        cmd.ExecuteNonQuery();
                    }
                }
                MessageBox.Show("Data Updated Successfully");
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.ToString());
            }
            finally
            {
                conn.Close();
                btnloaddata_Click(sender, e);
            }
        }
    }
}