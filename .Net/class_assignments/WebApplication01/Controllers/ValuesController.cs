using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication01.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>
        {
            new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},
            new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},
        };

        [HttpGet]
        public IActionResult GetAllstudents()
        {
            return new JsonResult(student_dict);
        }

        [HttpGet("{id}")]
    }
}
