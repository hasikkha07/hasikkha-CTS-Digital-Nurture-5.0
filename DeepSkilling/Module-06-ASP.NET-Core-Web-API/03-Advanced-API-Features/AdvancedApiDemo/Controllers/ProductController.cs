using Microsoft.AspNetCore.Mvc;
using AdvancedApiDemo.Models;

namespace AdvancedApiDemo.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : ControllerBase
    {
        private static List<Product> products = new()
        {
            new Product{ Id=1, Name="Laptop", Price=50000 },
            new Product{ Id=2, Name="Phone", Price=25000 }
        };

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(products);
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var product = products.FirstOrDefault(p => p.Id == id);

            if (product == null)
                return NotFound();

            return Ok(product);
        }

        [HttpPost]
        public IActionResult Add(Product product)
        {
            products.Add(product);
            return Ok(product);
        }
    }
}