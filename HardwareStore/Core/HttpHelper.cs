using HardwareStoreApi.Model;
using HardwareStoreApi.Model.Requests;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace HardwareStore.Core
{
    public static class HttpHelper
    {
        private const string Url = "https://localhost:7077/api/";
        private const string UrlAuth = Url + "Auth";
        private const string UrlGetUser = Url + "User";
        private const string UrlGetProduct = Url + "Product";

        private static readonly HttpClient s_client;

        static HttpHelper()
        {
            s_client = new HttpClient();
        }

        public static async Task<User> AuthAsync(AuthRequest auth)
        {
            var response = await s_client.PostAsync(UrlAuth,
                new StringContent(JsonConvert.SerializeObject(auth), Encoding.UTF8, "application/json"));
            return JsonConvert.DeserializeObject<User>(await response.Content.ReadAsStringAsync());
        }

        public static async Task<IEnumerable<User>> GetUsersAsync()
        {
            var response = await s_client.GetAsync(UrlGetUser);
            return JsonConvert.DeserializeObject<IEnumerable<User>>(await response.Content.ReadAsStringAsync());
        }

        public static async Task<IEnumerable<Product>> GetProductsAsync()
        {
            try
            {
                var response = await s_client.GetStringAsync(UrlGetProduct);
                return JsonConvert.DeserializeObject<IEnumerable<Product>>(response.ToString());
            }
            catch (System.Exception ex)
            {
                var a = ";";
                throw;
            }
        }
    }
}
