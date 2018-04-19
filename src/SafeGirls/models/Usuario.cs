using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace SafeGirls
{
    public class Usuario
    {
        public int codigo { get; set; }
        public string nome { get; set; }
        public string login { get; set; }
        public string senha { get; set; }
        public string foto { get; set; }
        public string token { get; set; }
        public string sobrenome { get; set; }
        public string idade { get; set; }
    }
}