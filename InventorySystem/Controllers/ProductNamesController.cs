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
    public class ProductNamesController : Controller
    {
        private readonly IConfiguration _configuration;

        public ProductNamesController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<ProductName> Get(int? id)
        {
            return new ProductNamesDataLayer(_configuration).GetProductName(id);
        }

        // POST api/brands
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] ProductsNameInsert productsNameInsert)
        {
            return Ok(new ProductNamesDataLayer(_configuration).InsertProductName(productsNameInsert));
        }

        // PUT api/brands/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsNameUpdate productsNameUpdate)
        {
            return Ok(new ProductNamesDataLayer(_configuration).UpdateProductName(productsNameUpdate));
        }

        // DELETE api/brands/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductsNameDelete productsNameDelete)
        {
            return Ok(new ProductNamesDataLayer(_configuration).DeleteProductName(productsNameDelete));
        }
    }
}
