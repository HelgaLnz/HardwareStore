using HardwareStore.Core;
using HardwareStoreApi.Model;
using System.Collections.ObjectModel;
using System.Threading.Tasks;

namespace HardwareStore.ViewModel
{
    internal class UserViewModel : BaseViewModel
    {
        private ObservableCollection<User> _users;

        public ObservableCollection<User> Users
        {
            get => _users;
            set => SetProperty(ref _users, value);
        }

        public UserViewModel()
        {
            Task.Run(async () =>
            {
                Users = new ObservableCollection<User>(await HttpHelper.GetUsersAsync());
            });
        }
    }
}
