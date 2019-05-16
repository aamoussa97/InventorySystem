using System.Collections.Generic;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNet.OData;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/product/[controller]")]
    public class QuantitiesController : Controller
    {
        private readonly IConfiguration _configuration;

        public QuantitiesController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands?id
        [HttpGet("{id?}")] //("/{id?}")] //("{id?}")]
        [EnableQuery]
        public IEnumerable<ProductQuantityModel> Get(int? id)
        {
            return new ProductQuantitiesDataLayer(_configuration).GetQuantities(id);
        }

        // POST api/brand
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] ProductQuantitiesInsert productQuantitiesInsert)
        {
            return Ok(new ProductQuantitiesDataLayer(_configuration).InsertProductQuantitiy(productQuantitiesInsert));
        }

        // PUT api/brand/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductQuantitiesUpdate productQuantitiesUpdate)
        {
            return Ok(new ProductQuantitiesDataLayer(_configuration).UpdateProductQuantitiy(productQuantitiesUpdate));
        }

        // DELETE api/brand/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductQuantitiesDelete productQuantitiesDelete)
        {
            return Ok(new ProductQuantitiesDataLayer(_configuration).DeleteProductQuantitiy(productQuantitiesDelete));
        }
    }
}