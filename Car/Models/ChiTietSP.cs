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
    
    public partial class ChiTietSP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ChiTietSP()
        {
            this.SanPhams = new HashSet<SanPham>();
        }
    
        public int MaCTSP { get; set; }
        public string ChungLoai { get; set; }
        public string XuatXu { get; set; }
        public Nullable<int> NamSanXuat { get; set; }
        public string KichThuoc { get; set; }
        public string ChieuDaiCoSo { get; set; }
        public string TuTrong { get; set; }
        public string DungTichXiLanh { get; set; }
        public string KieuDongCo { get; set; }
        public string HopSo { get; set; }
        public string CongSuatLonNhat { get; set; }
        public string Momen { get; set; }
        public string TocDoToiDa { get; set; }
        public string NhienLieu { get; set; }
        public string KieuDanDong { get; set; }
        public Nullable<int> SoChoNgoi { get; set; }
        public string TieuThu { get; set; }
        public string CoLop { get; set; }
        public string MoTa { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham> SanPhams { get; set; }
    }
}
