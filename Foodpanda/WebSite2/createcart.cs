using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for createcart
/// </summary>
public class createcart
{
    //int resid, itid;
    string resid, itid,itname, itdesc,itprice;
	public createcart(string r_id,string it_id,string it_name,string it_desc,string it_price)
	{
        this.resid = r_id;
        this.itid = it_id;
        this.itname = it_name;
        this.itdesc = it_desc;
        this.itprice = it_price;
    }
    public string RESID
    {
        get
        {
            return this.resid;
        }
    }
    public string ITEMID
    {
        get
        {
            return this.itid;
        }
    }
    public string ITEMNAME
    {
        get
        {
            return this.itname;
        }
    }
    public string ITEMDESC
    {
        get
        {
            return this.itdesc;
        }
    }
    public string ITEMPRICE
    {
        get
        {
            return this.itprice;
        }
    }
}
