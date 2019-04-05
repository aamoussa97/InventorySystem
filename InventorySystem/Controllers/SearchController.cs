using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InventorySystem.DataLayerClasses;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SearchController : ControllerBase
    {
        IConfiguration _configuration;

        public SearchController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/product/name
        [HttpGet("{name}")]
        public IEnumerable<String> Get(string name)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            return new ProductsDataLayer(_configuration).GetProductByName(name);
        }
    }
}