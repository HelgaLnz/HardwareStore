using HardwareStore.Core;
using HardwareStore.ViewModel;
using System;
using System.Windows;

namespace HardwareStore.View
{
    /// <summary>
    /// Interaction logic for AuthWindow.xaml
    /// </summary>
    public partial class AuthWindow : Window
    {
        public AuthWindow()
        {
            InitializeComponent();
        }

        private async void SignIn(object sender, EventArgs e)
        {
            (DataContext as AuthViewModel).Password = pbPassword.Password;

            if (await (DataContext as AuthViewModel).AuthBoolAsync())
            {
                new DashboardWindow().Show();
                Hide();
            }
            else
                MessageBox.Show("Something wrong...", "Error", MessageBoxButton.OK, MessageBoxImage.Stop);
        }
    }
}
