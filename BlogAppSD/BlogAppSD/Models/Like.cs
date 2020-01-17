using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlogAppSD.Models
{
    public class Like
    {
        public int Id { get; set; }
        public int PostId { get; set; }
        public virtual Post Post { get; set; }
    }
}
