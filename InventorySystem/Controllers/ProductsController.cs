using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNet.OData;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        private readonly IConfiguration _configuration;

        public ProductsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/products?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<ProductsGet> Get(int? id)
        {
            return new ProductsDataLayer(_configuration).GetProduct(id);
        }

        // PUT api/products/1
        [HttpPost]
        public IActionResult Post([FromBody] ProductsGet productsGet)
        {
            ProductsInsert productsInsert = new ProductsInsert(0, 0, 0, 0, 0, 0);

            productsInsert = new ProductsInsertDataLayer(_configuration).InsertProduct(productsGet);

            return Ok(new ProductsDataLayer(_configuration).InsertProduct(productsInsert));
        }

        // DELETE api/products/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
