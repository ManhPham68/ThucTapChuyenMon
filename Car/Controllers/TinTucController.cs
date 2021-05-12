using Car.Models;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Car.Controllers
{
    public class TinTucController : Controller
    {
        // GET: TinTuc
        private WebOtoEntities db = new WebOtoEntities();
        // GET: Tintuc
        public ActionResult Index(int? page)
        {
            int PageSize = 3;
            int PageNumber = (page ?? 1);

            var sp = db.Blogs.OrderByDescending(n => n.NgayCapNhat).ToList();
            return View(sp.ToPagedList(PageNumber, PageSize));
        }
        public ActionResult BlogDetails(int blogid)
        {
            var blog = db.Blogs.Find(blogid);
            return View(blog);
        }
        [HttpGet]
        public ActionResult SearchBlog(string searchString, int? page)
        {
            int PageSize = 2;
            int PageNumber = (page ?? 1);
            var search = from s in db.Blogs
                         select s;

            if (!String.IsNullOrEmpty(searchString))
            {
                search = search.Where(c => c.TieuDe.Contains(searchString));
            }

            return View(search.OrderBy(c => c.NgayCapNhat).ToPagedList(PageNumber, PageSize));
        }
    }
}