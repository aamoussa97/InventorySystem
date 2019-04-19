using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authorization;
using System.Collections.Generic;
using System.Security.Claims;

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
        public IActionResult Post([FromBody] User userData)
        {
            Console.WriteLine(userData);
            //TODO: Connect to JAVA REST API
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("superSecretKey@345"));
            var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);

            var tokeOptions = new JwtSecurityToken(
                issuer: "http://localhost:5001",
                audience: "http://localhost:4200",
                claims: new List<Claim>(),
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
    }


    public struct User
    {
        [MinLength(4)]
        [MaxLength(7)]
        public string Username { get; set; }
        public string Password { get; set; }
    }
}