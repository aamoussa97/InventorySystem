using System.Collections.Generic;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNet.OData;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace InventorySystem.Controllers
{
    [Route("api/material/[controller]")]
    public class MaterialsOrdersController : Controller
    {
        private readonly IConfiguration _configuration;

        public MaterialsOrdersController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brands?id
        [HttpGet("{id?}")]
        [EnableQuery]
        public IEnumerable<ProductMaterialsOrderName> Get(int? id)
        {
            return new ProductMaterialsOrderDataLayer(_configuration).GetMaterialsFromProducts(id);
        }

        // POST api/brands
        [HttpPost]
        //[Consumes("application/json")]
        public IActionResult Post([FromBody] ProductMaterialsOrderInsert productMaterialsOrderInsert)
        {
            return Ok(
                new ProductMaterialsOrderDataLayer(_configuration).InsertMaterialsOrder(productMaterialsOrderInsert));
        }

        // PUT api/brands/1
        [HttpPut]
        public IActionResult Put([FromBody] ProductMaterialsOrderUpdate productMaterialsOrderUpdate)
        {
            return Ok(
                new ProductMaterialsOrderDataLayer(_configuration).UpdateMaterialsOrder(productMaterialsOrderUpdate));
        }

        // DELETE api/brands/1
        [HttpDelete]
        public IActionResult Delete([FromBody] ProductMaterialsOrderDelete productMaterialsOrderDelete)
        {
            return Ok(
                new ProductMaterialsOrderDataLayer(_configuration).DeleteMaterialsOrder(productMaterialsOrderDelete));
        }
    }
}