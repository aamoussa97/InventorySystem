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
    public class VariableCostsController : Controller
    {
        private readonly IConfiguration _configuration;

        public VariableCostsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/variablecosts
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(new VariableCostsDataLayer(_configuration).GetVariableCost(0));
        }

        // GET: api/variablecosts/1
        [HttpGet("{id}")]
        public IEnumerable<VariableCost> Get(int id)
        {
            return new VariableCostsDataLayer(_configuration).GetVariableCost(id);
        }

        // POST api/variablecosts/1
        [HttpPost]
        public IActionResult Post([FromBody]VariableCost variableCost)
        {
            return Ok(new VariableCostsDataLayer(_configuration).InsertVariableCost(variableCost));
        }

        // PUT api/variablecosts/1
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/variablecosts/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
