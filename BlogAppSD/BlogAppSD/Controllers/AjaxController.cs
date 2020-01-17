using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BlogAppSD.DAL;
using Microsoft.AspNetCore.Mvc;

namespace BlogAppSD.Controllers
{
    public class AjaxController : Controller
    {
        private readonly BlogContext _context;
        public AjaxController(BlogContext context)
        {
            _context = context;
        }

        public IActionResult LikeBestPost()
        {
            return Json(new
            {
                status = 200,
                message = "",
                data = _context.Likes
            });

        }
    }
}