using System.Collections.Generic;
using InventorySystem.DataLayerClasses;
using InventorySystem.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace InventorySystem.Controllers
{
    [Route("api/search/[controller]")]
    [ApiController]
    public class SearchProductController : ControllerBase
    {
        private readonly IConfiguration _configuration;

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