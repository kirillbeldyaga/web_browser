﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebKit.Interop;

namespace WBCore.DOM
{
    class XMLDocument:Document
    {
        protected XMLDocument(IDOMDocument Document)
            : base(Document)
        {
        }
    }
}
