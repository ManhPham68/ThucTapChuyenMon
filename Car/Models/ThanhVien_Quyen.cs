//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Car.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ThanhVien_Quyen
    {
        public int MaTVQ { get; set; }
        public Nullable<int> MaLoaiTV { get; set; }
        public string MaQuyen { get; set; }
        public string GhiChu { get; set; }
    
        public virtual Quyen Quyen { get; set; }
        public virtual ThanhVien ThanhVien { get; set; }
    }
}
