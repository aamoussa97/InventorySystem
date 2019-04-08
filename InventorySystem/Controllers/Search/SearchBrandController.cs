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

        // GET: api/product/name
        [HttpGet("{brand}")]
        public IEnumerable<Brand> Get(string name)
        {
            Console.WriteLine(name);
            return new BrandsDataLayer(_configuration).GetBrandsByName(name);
        }
    }
}