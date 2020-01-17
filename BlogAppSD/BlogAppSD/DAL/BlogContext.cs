using BlogAppSD.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlogAppSD.DAL
{
    public class BlogContext : DbContext
    {
        public BlogContext(DbContextOptions<BlogContext> options) : base(options)
        {

        }

        public DbSet<Post> Posts { get; set; }
        public DbSet<Like> Likes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Post>().HasData(
        new Post
        {
            Id = 1,
            CreatedAt = DateTime.Now,
            Title = "The best VR games on the market",
            Content = "Lorem ipsum dolor sit amet consectetur adipiscing elit, " +
        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, " +
        "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
        },
                new Post
                {
                    Id = 2,
                    CreatedAt = DateTime.Now,
                    Title = "The best online game is out now!",
                    Content = "Lorem ipsum dolor sit amet consectetur adipiscing elit, " +
        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, " +
        "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
                },
                            new Post
                            {
                                Id = 3,
                                CreatedAt = DateTime.Now,
                                Title = "The best online game is out now!",
                                Content = "Lorem ipsum dolor sit amet consectetur adipiscing elit, " +
        "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, " +
        "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
                            }
        );


            modelBuilder.Entity<Like>().HasData(
        new Like { Id = 1, PostId = 1 },
         new Like { Id = 2, PostId = 1 },
         new Like { Id = 3, PostId = 1 },
         new Like { Id = 4, PostId = 1 }
        );

        }
    }
}
