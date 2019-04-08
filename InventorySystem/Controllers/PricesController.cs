using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    public class PricesController : Controller
    {
        IConfiguration _configuration;

        public PricesController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/prices
        [HttpGet]
        public IActionResult Get()
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            PricesDataLayer dataLayer = new PricesDataLayer(_configuration);
            return Ok(dataLayer.GetPrice(0));
        }

        // GET: api/prices/1
        [HttpGet("{id}")]
        public IEnumerable<Price> Get(int id)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            PricesDataLayer dataLayer = new PricesDataLayer(_configuration);
            return dataLayer.GetPrice(id);
        }

        // POST api/prices
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/prices/1
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/prices/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
