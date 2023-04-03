using HardwareStore.Core;
using HardwareStoreApi.Model.Requests;
using System;
using System.Threading.Tasks;
using System.Windows;

namespace HardwareStore.ViewModel
{

    internal class AuthViewModel : BaseViewModel
    {
        private const string SignInString = "Sign In";
        private const string WaitString = "Wait...";
        private string _login;
        private string _password;
        private string _btnSignInString = SignInString;

        public string Login
        {
            get => _login;
            set => SetProperty(ref _login, value);
        }
        public string Password
        {
            get => _password;
            set => SetProperty(ref _password, value);
        }

        public string ButtonSignInString
        {
            get => _btnSignInString;
            set => SetProperty(ref _btnSignInString, value);
        }

        public async Task<bool> AuthBoolAsync()
        {
            try
            {
                ButtonSignInString = WaitString;
                var user = await HttpHelper.AuthAsync(new AuthRequest(Login, Password));
                if (user is not null)
                {
                    return true;
                }
                else return false;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error message", MessageBoxButton.OK, MessageBoxImage.Stop);
            }
            finally
            {
                ButtonSignInString = SignInString;
            }
            return false;

        }
    }
}
