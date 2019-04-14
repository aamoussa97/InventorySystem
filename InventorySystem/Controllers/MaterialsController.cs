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
    public class MaterialsController : Controller
    {
        private readonly IConfiguration _configuration;

        public MaterialsController(IConfiguration configuration)
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

        // POST api/materials
        [HttpPost]
        public IActionResult Post([FromBody]Material material)
        {
            return Ok(new MaterialsDataLayer(_configuration).InsertMaterial(material));
        }

        // PUT api/materials/1
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/materials/1
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
