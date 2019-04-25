using System;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authorization;
using System.Collections.Generic;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Net.Http;

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
//            int ResponseStatusCode;
//
//            ResponseStatusCode = await UserAuthHTTPRequestAsync(userData);
//
//            if (ResponseStatusCode == 401)
//            {
//                return BadRequest(ModelState);
//            }

            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("superSecretKey@345"));
            var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);

            var tokeOptions = new JwtSecurityToken(
                "http://localhost:5001",
                "http://localhost:4200",
                new List<Claim>(),
                expires: DateTime.Now.AddMinutes(5),
                signingCredentials: signinCredentials
            );

            var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
            return Ok(new { Token = tokenString });
        }

        private string GenerateJSONWebToken()
        {
            return "TODO";
        }

        protected async Task<int> UserAuthHTTPRequestAsync(User user)
        {
            string url = @"http://dist.saluton.dk:5119/auth/authenticate"; //http://localhost:8080/auth/authenticate"; //REST java auth server

            HttpClient client = new HttpClient();
            var response = await client.PostAsJsonAsync(url, user);
            var ResponseStatusCode = (int)response.StatusCode;

            return ResponseStatusCode;
        }

    }

    public struct User
    {
        [MinLength(4)]
        [MaxLength(7)]
        public string Username { get; set; }
        public string Password { get; set; }
    }
}