using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using InventorySystem.Models;
using InventorySystem.Models.Categories.Vehicles;
using Microsoft.AspNetCore.Mvc;

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        
        [HttpGet]
        public IActionResult Get()
        {
            return Ok();
        }

        [HttpPost]
        public IActionResult Post([FromBody] Request requestPost)
        {
            return Ok(requestPost);
        }

    }

    public struct Request
    {
        public IProduct product { get; set; }
        public Categories Categories { get; set; }
    }
}