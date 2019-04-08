using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.Controllers.Search
{
    [Route("api/search/[controller]")]
    [ApiController]
    public class BrandController : ControllerBase
    {
        IConfiguration _configuration;

        public BrandController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/brand/name
        [HttpGet("{name}")]
        public IEnumerable<String> Get(string name)
        {
            String connectionString = _configuration.GetConnectionString("localDB");

            return new BrandsDataLayer(_configuration).GetBrandsByName(name);
        }
    }
}