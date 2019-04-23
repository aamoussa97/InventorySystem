using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.Controllers
{
    [Route("api/search/[controller]")]
    [ApiController]
    public class SearchProductController : ControllerBase
    {
        readonly IConfiguration _configuration;

        public SearchProductController(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        // GET: api/product/name
        [HttpGet("{ProductName}")]
        public IEnumerable<ProductsGet> Get(string productName)
        {
            return new ProductsDataLayer(_configuration).GetProductByName(productName);
        }

    }
}