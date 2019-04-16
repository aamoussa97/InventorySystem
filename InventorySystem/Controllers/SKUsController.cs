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
    public class SKUsController : Controller
    {
        private readonly IConfiguration _configuration;

        public SKUsController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/skus?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<SKU> Get(int? id)
        {
            return new SKUDataLayer(_configuration).GetProductSKU(id);
        }

        // POST api/skus
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] SKU sKU)
        {
            return Ok(new SKUDataLayer(_configuration).InsertSKU(sKU));
        }

        // PUT api/skus/1
        [HttpPut("{id}")]
        public IActionResult Put([FromBody] SKU sKU)
        {
            return Ok(new SKUDataLayer(_configuration).UpdateSKU(sKU));
        }

        // DELETE api/skus/1
        [HttpDelete("{id}")]
        public IActionResult Delete([FromBody] SKU sKU)
        {
            return Ok(new SKUDataLayer(_configuration).DeleteSKU(sKU));
        }
    }
}
