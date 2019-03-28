using System;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;

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
           
            return Ok(userData);
        }
        
    }

    public struct User
    {
        public string Username { get; set; }
        public string Password { get; set; }
    }
}