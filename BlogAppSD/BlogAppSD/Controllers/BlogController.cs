using BlogAppSD.DAL;
using BlogAppSD.Models;
using BlogAppSD.ViewModels;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using System.Linq;
using System;

namespace BlogAppSD.Controllers
{
    public class BlogController : Controller
    {
        private readonly BlogContext _context;

        public BlogController(BlogContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            BlogIndexViewM blogIndexViewM = new BlogIndexViewM()
            {
                Posts = _context.Posts.OrderByDescending(s => s.CreatedAt)
            };

            return View(blogIndexViewM);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Post post)
        {
            if (!ModelState.IsValid)
            {
                return View(post);
            }

            post.CreatedAt = DateTime.Now;
            await _context.Posts.AddAsync(post);
            await _context.SaveChangesAsync();

            return RedirectToAction(nameof(Index));
        }
    }
}