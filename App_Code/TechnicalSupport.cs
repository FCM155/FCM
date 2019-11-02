using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for TechnicalSupport
/// </summary>
public class TechnicalSupport : User
{
    public TechnicalSupport(int id, String name, String email, String teleNo, String mobile)
        : base(id, name, email, teleNo, mobile)
    {
        
    }

    public TechnicalSupport getInfo()
    {
        return this;
    }
}