//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IDH.FxSignalPro.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class CurrencyPair
    {
        public CurrencyPair()
        {
            this.Signals = new HashSet<Signal>();
        }
    
        public System.Guid CurrencyPairId { get; set; }
        public string ShortName { get; set; }
        public string LongName { get; set; }
        public System.DateTime Created { get; set; }
        public System.DateTime Deleted { get; set; }
        public System.DateTime Modified { get; set; }
        public string ModifiedBy { get; set; }
    
        public virtual ICollection<Signal> Signals { get; set; }
    }
}