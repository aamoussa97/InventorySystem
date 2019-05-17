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
    [Route("api/product/[controller]")]
    public class VariableCostsController : Controller
    {
        private readonly IConfiguration _configuration;

        public VariableCostsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/variablecosts?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<ProductVariableCost> Get(int? id)
        {
            return new ProductVariableCostsDataLayer(_configuration).GetProductVariableCost(id);
        }

        // POST api/variablecosts
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] ProductsVariableCostInsert productsVariableCostInsert)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).InsertProductVariableCost(productsVariableCostInsert));
        }

        // PUT api/variablecosts/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsVariableCostUpdate productsVariableCostUpdate)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).UpdateProductVariableCost(productsVariableCostUpdate));
        }

        // DELETE api/variablecosts/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductsVariableCostDelete productsVariableCostDelete)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).DeleteProductVariableCost(productsVariableCostDelete));
        }
    }
}
