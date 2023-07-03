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

namespace DemoWorkMusin
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static List<Products> FullList = App.DB.Products.ToList();
        public MainWindow()
        {
            InitializeComponent();
            table.ItemsSource = FullList;
            quantity.Content = $"Товаров {FullList.Count()}";
        }

        private void sort_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            int SortSelectedIndex = sort.SelectedIndex;
            int SaleSelectedIndex = selectSale.SelectedIndex;

            IEnumerable<Products> filteredList = FullList;

            switch (SaleSelectedIndex)
            {
                case 1:
                    filteredList = FullList.Where(p => p.sale >= 0 && p.sale < 10.0);
                    break;
                case 2:
                    filteredList = FullList.Where(p => p.sale >= 10 && p.sale < 15.0);
                    break;
                case 3:
                    filteredList = FullList.Where(p => p.sale > 15.0);
                    break;
            }

            switch (SortSelectedIndex)
            {
                case 1:
                    filteredList = filteredList.OrderBy(p => p.price);
                    break;
                case 2:
                    filteredList = filteredList.OrderByDescending(p => p.price);
                    break;
            }

            table.ItemsSource = filteredList.ToList();

            int filteredCount = filteredList.Count();
            quantity.Content = filteredCount != FullList.Count() ? $"Товаров {filteredCount} из {FullList.Count()}" : $"Товаров {filteredCount}";
        }
    }
}
