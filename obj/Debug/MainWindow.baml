   M S B A M L   `   `   `  ����H  DDemoWorkMusin, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:DemoWorkMusinDemoWorkMusin  5   	       DemoWorkMusin.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:DemoWorkMusin     5   	     � Title$  
MainWindow��5   	   $	��600��6   $	��800��6,   $	��600��6=   $	��800��6J   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ table��5
         AutoGenerateColumns .  $��
14,58,9,25q�6>      SelectionUnit$ FullRow=�6R   $��Calibri)�6k      CanUserAddRows .     CanUserDeleteRows .     CanUserReorderColumns .     CanUserResizeColumns .     CanUserSortColumns .  	   CanUserResizeRows	 .  
   	RowHeight$
 *Q�6!     	CellStyle 5      �� 5       �� 
TargetType*  $System.Windows.Controls.DataGridCell"  6   .�5      ��  �� Property � �� �� Value 63   �� *solidColorBrush+5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Название��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6P   1  +System.Windows.Controls.DataGridBoundColumn   Binding 67   �� *name+6P     5      $ Описание��6%   $ * 6W    67   �� *description+6W     5      $  Производитель��6%   $ * 6]    6<   �� *manufacturer+6]     5      $ Цена��6%   $ * 6Q    63   �� *	PriceText+6Q     5      $ Скидка��6%   $ * 6N    65   �� *sale+6N   4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Изображение��6)   $ * 6>      CellTemplate 5      �� 5      .R�5      �� $	��100��6=   $	��100��6I   ��6$   �� *Image+6I   5      5      5      �� 5   
   -   5         ��Name$
 sort��5      $��267,14,343,0q�6!   $	��Top=�67   .@�5       �� $ ��Все  диапазоны��6   $	��180��6.    �� TextAlignment$ Center=�6:   �� 5!      $!��По возрастанию��6   $	��180��6.   $ Center=�6:   �� 5"      $��По убыванию��6   $	��180��6+   $ Center=�67   5#      �� 5$   
   $��Сортировать��6   $
��Left=�6&   $��
167,14,0,0q�6A   $	��Top=�6U   �� 5%   
   -   5         ��Name$ quantity��5%      $��Товаров��6"   $
��Left=�64   $��	21,14,0,0q�6O   $	��Top=�6b   �� 5&   
   -   5        $	 low��5&      $��Скидка��6   $��Right=�6.   $��
0,14,230,0q�6J   $	��Top=�6^   �� 5'   
   -   5        $ 
selectSale��5'      $��	0,14,13,0q�6'   $	��Top=�6:   $��Right=�6R   $	��190��6n   .@�5(      �� $ ��Все  диапазоны��6   $	��180��6.   $ Center=�6:   �� 5)      $��Скидка 0-9,9%��6   $	��180��6-   $ Center=�69   �� 5*      $��Скидка 10,14,9%��6   $	��180��6/   $ Center=�6;   �� 5+      $#��Скидка 15 и более��6   $	��180��61   $ Center=�6=   5,      5-      5.      