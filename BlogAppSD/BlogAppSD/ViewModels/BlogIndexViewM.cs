using BlogAppSD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlogAppSD.ViewModels
{
    public class BlogIndexViewM
    {
        public IEnumerable<Post> Posts { get; set; }
        public IEnumerable<Like> Likes { get; set; }
    }
}
