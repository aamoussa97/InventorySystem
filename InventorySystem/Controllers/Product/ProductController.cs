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
    public class ProductController : Controller
    {
        private readonly IConfiguration _configuration;

        public ProductController(IConfiguration configuration)
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

        // POST api/products/1
        [HttpPost]
        public IActionResult Post([FromBody] ProductsGet productsGet)
        {
            ProductsInsert productsInsert = new ProductsInsert(0, 0, 0, 0, 0, 0);

            productsInsert = new ProductsInsertDataLayer(_configuration).InsertProduct(productsGet);

            return Ok(new ProductsDataLayer(_configuration).InsertProduct(productsInsert));
        }

        // PUT api/products/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsUpdate productsUpdate)
        {
            return Ok(new ProductsDataLayer(_configuration).UpdateProduct(productsUpdate));
        }

        // DELETE api/products/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductsDelete productsDelete)
        {
            return Ok(new ProductsDataLayer(_configuration).DeleteProduct(productsDelete));
        }
    }
}
