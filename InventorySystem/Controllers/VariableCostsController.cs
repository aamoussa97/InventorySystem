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
        public IEnumerable<VariableCost> Get(int? id)
        {
            return new VariableCostsDataLayer(_configuration).GetVariableCost(id);
        }

        // POST api/variablecosts
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] VariableCost variableCost)
        {
            return Ok(new VariableCostsDataLayer(_configuration).InsertVariableCost(variableCost));
        }

        // PUT api/variablecosts/1
        [HttpPut("{id}")]
        public IActionResult Put([FromBody] VariableCost variableCost)
        {
            return Ok(new VariableCostsDataLayer(_configuration).UpdateVariableCost(variableCost));
        }

        // DELETE api/variablecosts/1
        [HttpDelete("{id}")]
        public IActionResult Delete([FromBody] VariableCost variableCost)
        {
            return Ok(new VariableCostsDataLayer(_configuration).DeleteVariableCost(variableCost));
        }
    }
}
