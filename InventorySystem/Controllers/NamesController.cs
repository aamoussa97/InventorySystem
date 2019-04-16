using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using System.IO;
using Microsoft.AspNet.OData;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    public class NamesController : Controller
    {
        private readonly IConfiguration _configuration;

        public NamesController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<Name> Get(int? id)
        {
            return new NameDataLayer(_configuration).GetProductName(id);
        }

        // POST api/brands
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] Name name)
        {
            return Ok(new NameDataLayer(_configuration).InsertName(name));
        }

        // PUT api/brands/1
        [HttpPut("{id}")]
        public IActionResult Put([FromBody] Name name)
        {
            return Ok(new NameDataLayer(_configuration).UpdateName(name));
        }

        // DELETE api/brands/1
        [HttpDelete("{id}")]
        public IActionResult Delete([FromBody] Name name)
        {
            return Ok(new NameDataLayer(_configuration).DeleteName(name));
        }
    }
}
