using System.Collections.Generic;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNet.OData;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

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
        [HttpGet]
        [EnableQuery]
        public IEnumerable<ProductsGet> Get(int? id)
        {
            return new ProductsDataLayer(_configuration).GetProduct(id);
        }

        // POST api/products/1
        [HttpPost]
        public IActionResult Post([FromBody] ProductsInsertComplex productsInsertComplex)
        {
            var productsInsert = new ProductsInsert(0, 0, 0, 0, 0, 0, 0);
            var priceOptimize = new PriceOptimize();
            productsInsertComplex.ProductPrice = priceOptimize.OptimizePrice(productsInsertComplex.ProductVariableCost,
                productsInsertComplex.ProductStartFactor, productsInsertComplex.ProductGrowthFactor);
            productsInsert = new ProductsInsertDataLayer(_configuration).InsertProduct(productsInsertComplex);


            var ProductID = new ProductsDataLayer(_configuration).InsertProduct(productsInsert);

            new ProductsInsertDataLayer(_configuration).InsertProductMaterial(ProductID, productsInsertComplex);
            new ProductsInsertDataLayer(_configuration).InsertProductQuantity(ProductID, productsInsertComplex);

            return Ok();
        }

        // PUT api/products/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsUpdate productsUpdate)
        {
            return Ok(new ProductsDataLayer(_configuration).UpdateProduct(productsUpdate));
        }

        // DELETE api/products/1
        [HttpDelete("{id?}")] //[HttpDelete]
        public IActionResult Delete(int id) //([FromBody] ProductsDelete productsDelete)
        {
            return Ok(new ProductsDataLayer(_configuration).DeleteProduct(id));
        }
    }
}