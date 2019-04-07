using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.DataAnnotations;

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
        [HttpPost]
        public IActionResult Post([FromBody] User userData)
        {
           //TODO: Connect to JAVA REST API
           if(!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            return Ok(userData);
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