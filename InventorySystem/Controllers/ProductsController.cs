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
    public class ProductsController : Controller
    {

        IConfiguration _configuration;

        public ProductsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/products
        [HttpGet]
        public IActionResult Get()
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            ProductsDataLayer dataLayer = new ProductsDataLayer(_configuration);
            return Ok(dataLayer.GetProduct(0));
        }

        // GET: api/products/1
        [HttpGet("{id}")]
        public IEnumerable<Product> Get(int id)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            ProductsDataLayer dataLayer = new ProductsDataLayer(_configuration);
            return dataLayer.GetProduct(id);
        }

        // PUT api/products/1
        [HttpPost]
        public void Post([FromBody] Product product)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            ProductsDataLayer dataLayer = new ProductsDataLayer(_configuration);
            dataLayer.InsertProduct(product);
        }

        // DELETE api/products/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
