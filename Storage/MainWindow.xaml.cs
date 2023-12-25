using Storage.Data;
using Storage.Pages;
using StoragePage.AppServices;
using StoragePage.Data;
using StoragePage.Pages;
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

namespace StoragePage
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            
           

            FrameApp.frmObj = frm;
            DbConnect.entObj = new StorageEntities();

            FrameApp.frmObj.Navigate(new AuthPage());

        }
    }
}
