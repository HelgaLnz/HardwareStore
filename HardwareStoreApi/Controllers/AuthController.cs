using HardwareStoreApi.Model;
using HardwareStoreApi.Model.Requests;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HardwareStoreApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private TradeDbContext _context;

        public AuthController(TradeDbContext context)
        {
            _context = context;
        }

        [HttpPost]
        public async Task<ActionResult<User?>?> AuthAsync([FromBody] AuthRequest authRequest)
        {
            if (authRequest.Login.IsNullOrEmpty() && authRequest.Password.IsNullOrEmpty())
            {
                return BadRequest(null);
            }

            var user = await _context.Users.FirstOrDefaultAsync(u =>
                u.UserLogin.Equals(authRequest.Login) &&
                u.UserPassword.Equals(authRequest.Password));

            if (user is not null)
            {
                return Ok(user);
            }
            return NotFound(null);
        }
    }
}
