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

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    public class BrandsController : Controller
    {
        IConfiguration _configuration;

        public BrandsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands
        [HttpGet]
        public IActionResult Get()
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            BrandsDataLayer dataLayer = new BrandsDataLayer(_configuration);
            return Ok(dataLayer.GetBrand(0));
        }

        // GET: api/brands/1
        [HttpGet("{id}")]
        public IEnumerable<Brand> Get(int id)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            BrandsDataLayer dataLayer = new BrandsDataLayer(_configuration);
            return dataLayer.GetBrand(id);
        }

        // POST api/brands
        [HttpPost]
        public IActionResult Post([FromBody] Brand brand)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            BrandsDataLayer dataLayer = new BrandsDataLayer(_configuration);

            return Ok(dataLayer.InsertBrand(brand));

        }

        // PUT api/brands/1
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/brands/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
