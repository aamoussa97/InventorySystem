using System;
using System.ComponentModel.DataAnnotations;
using System.IdentityModel.Tokens.Jwt;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;

namespace InventorySystem.Controllers
{
    /**
     * This class serves the handling of sessions.
     * POST API/SESSION to get authenticated.
     */
    [Route("api/[controller]")]
    [ApiController]
    public class SessionController : Controller
    {
        private readonly IConfiguration _configuration;

        public SessionController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        [HttpPost]
        [AllowAnonymous]
        public async Task<IActionResult> PostAsync([FromBody] User userData)
        {
            var ResponseStatusCode = await UserAuthHTTPRequestAsync(userData);

            if (ResponseStatusCode == 401) return BadRequest(ModelState);

            return Ok(GenerateJSONWebToken());
        }

        private object GenerateJSONWebToken()
        {
            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("superSecretKey@345"));
            var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);

            var tokeOptions = new JwtSecurityToken(
                expires: DateTime.Now.AddMinutes(30),
                signingCredentials: signinCredentials
            );

            var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
            return new {Token = tokenString};
        }

        protected async Task<int> UserAuthHTTPRequestAsync(User user)
        {
            var
                url =
                    @"http://dist.saluton.dk:5119/auth/authenticate"; //"http://localhost:5119/auth/authenticate";//;"http://dist.saluton.dk:5119/auth/authenticate"; //http://localhost:8080/auth/authenticate"; //REST java auth server

            var client = new HttpClient();
            var response = await client.PostAsJsonAsync(url, user);
            var ResponseStatusCode = (int) response.StatusCode;

            return ResponseStatusCode;
        }
    }

    public struct User
    {
        [MinLength(4)] [MaxLength(7)] public string Username { get; set; }
        public string Password { get; set; }
    }
}