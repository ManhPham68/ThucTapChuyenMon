using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Car.Models;

namespace Car.Controllers
{
    [Authorize]
    public class BlogsController : Controller
    {
       
        private WebOtoEntities db = new WebOtoEntities();

        // GET: Blogs
        public ActionResult Index()
        {
            return View(db.Blogs.OrderByDescending(n=>n.MaBlog).ToList());
        }

        // GET: Blogs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blog blog = db.Blogs.Find(id);
            if (blog == null)
            {
                return HttpNotFound();
            }
            return View(blog);
        }

        // GET: Blogs/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Blogs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "MaBlog,TieuDe,NoiDung,HinhAnh,NgayCapNhat,metaTiltle")] Blog blog, HttpPostedFileBase HinhAnh)
        {
            int loi = 0;
           
                if (HinhAnh.ContentType != "image/jpeg" && HinhAnh.ContentType != "image/png" && HinhAnh.ContentType != "image/gif" && HinhAnh.ContentType != "image/jpg")
                {
                    ViewBag.upload += "Hình Ảnh Không Hợp Lệ <br/>";
                    loi++;
                }
                else
                {
                    var fileName = Path.GetFileName(HinhAnh.FileName);
                    var path = Path.Combine(Server.MapPath("~/Content/assets/images"), fileName);
                    HinhAnh.SaveAs(path);
                }
               

                if (loi > 0)
                {
                    return View();
                }

                blog.HinhAnh = HinhAnh.FileName;
                db.Blogs.Add(blog);
                db.SaveChanges();
                return RedirectToAction("Index");
         }

        // GET: Blogs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blog blog = db.Blogs.Find(id);
            if (blog == null)
            {
                return HttpNotFound();
            }
            return View(blog);
        }

        // POST: Blogs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "MaBlog,TieuDe,NoiDung,HinhAnh,NgayCapNhat,metaTiltle")] Blog blog, HttpPostedFileBase HinhAnh)
        {
            int loi = 0;

            if (HinhAnh.ContentType != "image/jpeg" && HinhAnh.ContentType != "image/png" && HinhAnh.ContentType != "image/gif" && HinhAnh.ContentType != "image/jpg")
            {
                ViewBag.upload += "Hình Ảnh Không Hợp Lệ <br/>";
                loi++;
            }
            else
            {
                var fileName = Path.GetFileName(HinhAnh.FileName);
                var path = Path.Combine(Server.MapPath("~/Content/assets/images"), fileName);
                HinhAnh.SaveAs(path);
            }


            if (loi > 0)
            {
                return View();
            }

            blog.HinhAnh = HinhAnh.FileName;
            db.Entry(blog).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            
            return View(blog);
        }

        // GET: Blogs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Blog blog = db.Blogs.Find(id);
            if (blog == null)
            {
                return HttpNotFound();
            }
            return View(blog);
        }

        // POST: Blogs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Blog blog = db.Blogs.Find(id);
            db.Blogs.Remove(blog);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
