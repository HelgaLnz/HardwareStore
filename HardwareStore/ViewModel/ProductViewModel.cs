using HardwareStore.Core;
using HardwareStoreApi.Model;
using System.Collections.ObjectModel;
using System.Threading.Tasks;

namespace HardwareStore.ViewModel
{
    internal class ProductViewModel : BaseViewModel
    {
        private ObservableCollection<Product> _products;

        public ObservableCollection<Product> Products
        {
            get => _products;
            set => SetProperty(ref _products, value);
        }

        public ProductViewModel()
        {
            Task.Run(async () =>
            {
                Products = new ObservableCollection<Product>(await HttpHelper.GetProductsAsync());
            });
        }
    }
}
