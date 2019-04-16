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
    public class ProductVariableCostsController : Controller
    {
        private readonly IConfiguration _configuration;

        public ProductVariableCostsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/variablecosts?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<VariableCost> Get(int? id)
        {
            return new ProductVariableCostsDataLayer(_configuration).GetVariableCost(id);
        }

        // POST api/variablecosts
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] VariableCost variableCost)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).InsertVariableCost(variableCost));
        }

        // PUT api/variablecosts/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductsVariableCostUpdate productsVariableCostUpdate)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).UpdateVariableCost(productsVariableCostUpdate));
        }

        // DELETE api/variablecosts/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductsVariableCostDelete productsVariableCostDelete)
        {
            return Ok(new ProductVariableCostsDataLayer(_configuration).DeleteVariableCost(productsVariableCostDelete));
        }
    }
}
