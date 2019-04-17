using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;
using System.IdentityModel.Tokens.Jwt;
using System.Text;
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
        public IActionResult Post([FromBody] User userData)
        {
           //TODO: Connect to JAVA REST API
           if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

           return Ok(GenerateJSONWebToken(userData));
        }

        private string GenerateJSONWebToken(User user)
        {
            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["Jwt:Key"]));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);
            
            var token = new JwtSecurityToken(_configuration["Jwt:Issuer"],  
                _configuration["Jwt:Issuer"],  
                null,  
                expires: DateTime.Now.AddMinutes(60),  
                signingCredentials: credentials);
  
            return new JwtSecurityTokenHandler().WriteToken(token);
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