   M S B A M L   `   `   `  ????  todo    DataGridBind.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     6+   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     6m     ? Title$  
MainWindow??6?   $	??400??6?   $	??825??6?   .??5      ? $	??400??6   $	??825??6   ???#FFFFFF.+?5   
   ?? -   5         ??Name$ textBlockHeading??5   N   $??32??6   $
??Left=?6    $??	16,15,0,0q?6;   $	??Top=?6h   $	??310??6?   $??20(?6?   $??Normal&?6?   ?? 6?    ? Language$ pl-pl?6?   $?Class Table??6?   6?   ? 5   
   $
??Left=?6   $	??360??6*   $	??Top=?67   $	??825??6O   .+?5      &   System.Windows.Controls.DataGrid  -   5        $??dataGridCustomers??5   b      AutoGenerateColumns$ False??6   $
??Left=?63   $??
14,55,0,46q?6N      CanUserResizeRows$ False??6?   ??6{   ??  ?? Path$ LoadDataBinding?   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id??6E      Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 6Q   	   
IsReadOnly$
	 True??6\   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 6)   ?? $ Id?6\     5      $ Surname??6J   $	 100 6[   $	 False??6g   
 6)   ?? $ Surname?6g     5	      $
 Name??6G   $	 100 6U   $	 False??6a   
 6)   ?? $
 Name?6a     5
      $ Address??6J   $	 150 6[   $	 False??6g   
 6)   ?? $ Address?6g     5      $
 City??6G   $	 100 6U   $	 False??6a   
 6)   ?? $
 City?6a     5      $ Phone??6H   $	 120 6W   $	 False??6c   
 6)   ?? $ Phone?6c     5      $ Email??6H   $	 120 6W   $	 False??6c   
 6)   ?? $ Email?6c   5      ?? 5      -   5        $??btnloaddata??5   d   $??	Load Data??6   $??25??6)   $
??Left=?65   $??
14,325,0,0q?6P   $	??Top=?6w   $	??100??6?   6?   ?? 5      -   5        $??btnupdatedata??5   g   $??Update Data??6   $??25??6+   $
??Left=?67   $??119,325,0,0q?6R   $	??Top=?6|   $	??100??6?   6?   5      5      5      