using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace BlogAppSD.Models
{
    public class Post
    {
        public Post()
        {
            Likes = new HashSet<Like>();

        }
        public int Id { get; set; }
        public DateTime CreatedAt { get; set; }
        [Required, StringLength(100)]
        public string Title { get; set; }
        [Required, StringLength(500)]
        public string Content { get; set; }
        public virtual ICollection<Like> Likes { get; set; }
    }
}
