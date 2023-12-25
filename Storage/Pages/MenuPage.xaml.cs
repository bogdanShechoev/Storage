using StoragePage.AppServices;
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
    /// Interaction logic for MenuPage.xaml
    /// </summary>
    public partial class MenuPage : Page
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        void GoToStorage()
        {
            FrameApp.frmObj.Navigate(new StorPage());
        }

        void GoToMaterialList()
        {
            FrameApp.frmObj.Navigate(new MaterialList());
        }

        void GoBack()
        {
            FrameApp.frmObj.GoBack();
        }

       
        private void ListMaterial_Click(object sender, RoutedEventArgs e) => GoToMaterialList();
        

        private void ListProducts_Click(object sender, RoutedEventArgs e) => GoToStorage();

        private void btnBack_Click(object sender, RoutedEventArgs e) => GoBack();
     
    }
}
