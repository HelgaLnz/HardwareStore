namespace HardwareStoreApi.Model.Requests
{
    public class AuthRequest
    {
        public string Login { get; set; }
        public string Password { get; set; }

        public AuthRequest(string login, string password)
        {
            Login = login;
            Password = password;
        }
    }
}
