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
    public class MaterialController : Controller
    {
        private readonly IConfiguration _configuration;

        public MaterialController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET api/materials?id
        [HttpGet("{id?}")]
        [EnableQuery()]
        public IEnumerable<Material> Get(int? id)
        {
            return new MaterialsDataLayer(_configuration).GetMaterial(id);
        }

        // POST api/material
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] MaterialsInsert materialsInsert)
        {
            return Ok(new MaterialsDataLayer(_configuration).InsertMaterial(materialsInsert));
        }

        // PUT api/material/1
        [HttpPut]
        public IActionResult Put([FromBody] MaterialsUpdate materialsUpdate)
        {
            return Ok(new MaterialsDataLayer(_configuration).UpdateMaterial(materialsUpdate));
        }

        // DELETE api/material/1
        [HttpDelete]
        public IActionResult Delete([FromBody] MaterialsDelete materialsDelete)
        {
            return Ok(new MaterialsDataLayer(_configuration).DeleteMaterial(materialsDelete));
        }
    }
}
