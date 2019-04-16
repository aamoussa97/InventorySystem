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
    public class MaterialsOrdersController : Controller
    {
        private readonly IConfiguration _configuration;

        public MaterialsOrdersController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<MaterialsOrder> Get(int? id)
        {
            return new MaterialsOrderDataLayer(_configuration).GetProductMaterialsOrder(id);
        }

        // POST api/brands
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] MaterialsOrder materialsOrder)
        {
            return Ok(new MaterialsOrderDataLayer(_configuration).InsertMaterialsOrder(materialsOrder));
        }

        // PUT api/brands/1
        [HttpPut("{id}")]
        public IActionResult Put([FromBody] MaterialsOrder materialsOrder)
        {
            return Ok(new MaterialsOrderDataLayer(_configuration).UpdateMaterialsOrder(materialsOrder));
        }

        // DELETE api/brands/1
        [HttpDelete("{id}")]
        public IActionResult Delete([FromBody] MaterialsOrder materialsOrder)
        {
            return Ok(new MaterialsOrderDataLayer(_configuration).DeleteMaterialsOrder(materialsOrder));
        }
    }
}
