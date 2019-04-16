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
    public class ProductSkusController : Controller
    {
        private readonly IConfiguration _configuration;

        public ProductSkusController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/skus?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<ProductSku> Get(int? id)
        {
            return new ProductSkusDataLayer(_configuration).GetProductSku(id);
        }

        // POST api/skus
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] ProductsSkuInsert productsSkuInsert)
        {
            return Ok(new ProductSkusDataLayer(_configuration).InsertProductSKU(productsSkuInsert));
        }

        // PUT api/skus/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsSkuUpdate productsSkuUpdate)
        {
            return Ok(new ProductSkusDataLayer(_configuration).UpdateProductSku(productsSkuUpdate));
        }

        // DELETE api/skus/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductsSkuDelete productsSkuDelete)
        {
            return Ok(new ProductSkusDataLayer(_configuration).DeleteProductSku(productsSkuDelete));
        }
    }
}
