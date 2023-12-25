using StoragePage.AppServices;
using StoragePage.Data;
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

namespace Storage.Pages
{
    /// <summary>
    /// Interaction logic for MaterialList.xaml
    /// </summary>
    public partial class MaterialList : Page
    {
        public MaterialList()
        {
            InitializeComponent();
        }

        void PageLoad()
        {

            try
            {
                CmbFilter.ItemsSource = DbConnect.entObj.Materials.ToList();
                CmbFilter.DisplayMemberPath = "Title";
                CmbSort.SelectedIndex = 0;
                CmbFilter.SelectedIndex = 0;

                ProductList.ItemsSource = DbConnect.entObj.Materials.ToList();

                ResultTxb.Text = ProductList.Items.Count + "/" + DbConnect.entObj.Materials.Count().ToString();
            }
            catch (Exception except)
            {

                MessageBox.Show(except.Message, "Что-то пошло не так!", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }
        void txbSrch()
        {
            try
            {
                ProductList.ItemsSource = DbConnect.entObj.Materials.Where(x => x.Name.Contains(TxbSearch.Text)).ToList();
                ResultTxb.Text = ProductList.Items.Count + "/" + DbConnect.entObj.Materials.Where(x => x.Name.Contains(TxbSearch.Text)).Count().ToString();
            }
            catch (Exception ex)
            {

                throw;
            }
        }

        void CmbBoxSelect()
        {
            switch (CmbSort.SelectedIndex)
            {
                case 0:
                    ProductList.ItemsSource = DbConnect.entObj.Materials.ToList();
                    break;
                case 1:
                    ProductList.ItemsSource = DbConnect.entObj.Materials.OrderBy(i => i.Name).ToList();
                    break;
                case 2:
                    ProductList.ItemsSource = DbConnect.entObj.Materials.OrderByDescending(i => i.Name).ToList();
                    break;
                case 3:
                    ProductList.ItemsSource = DbConnect.entObj.Materials.OrderBy(i => i.Producer).ToList();
                    break;
                case 4:
                    ProductList.ItemsSource = DbConnect.entObj.Materials.OrderByDescending(i => i.Producer).ToList();
                    break;


            }
        }

        private void TxbSearch_TextChanged(object sender, TextChangedEventArgs e) => txbSrch();


        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e) => CmbBoxSelect();




        private void CmbFilter_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {


        }



        private void Page_Loaded(object sender, RoutedEventArgs e) => PageLoad();


        private void MaterialList_SelectionChanged_1(object sender, SelectionChangedEventArgs e)
        {

        }

        private void btnGoBack_Click(object sender, RoutedEventArgs e)
        {
            FrameApp.frmObj.GoBack();
        }
    }
}
