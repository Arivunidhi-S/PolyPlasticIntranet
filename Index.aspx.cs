using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Telerik.Web.UI;

using System.Globalization;
using System.Collections;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.OleDb;
using System.Drawing;

using System.Collections.Generic;
using System.Linq;
using Telerik.Web.UI.Calendar;
//using NCalc;
using System.Text.RegularExpressions;
using System.Data.Common;
using System.Web.Configuration;
using System.Net;
public partial class Index : System.Web.UI.Page
{
    public DataTable dtNewsItems = new DataTable();

    public DataTable dtStaffItems = new DataTable();

    public DataTable dtDeptItems = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_Init(object sender, EventArgs e)
    {
        try
        {
          
            OleDbConnection connMenu = BusinessTier.getConnection();
            connMenu.Open();
            OleDbDataReader readerMenu = BusinessTier.getNewsList(connMenu);
            dtNewsItems.Load(readerMenu);
            BusinessTier.DisposeReader(readerMenu);
            //---------------------------------------------------------------
            OleDbDataReader readerMenu1 = BusinessTier.getStaffList(connMenu);
            dtStaffItems.Load(readerMenu1);
            BusinessTier.DisposeReader(readerMenu1);
            //---------------------------------------------------------------
            OleDbDataReader readerMenu2 = BusinessTier.getDeptList(connMenu);
            dtDeptItems.Load(readerMenu2);
            BusinessTier.DisposeReader(readerMenu2);
            //---------------------------------------------------------------
            BusinessTier.DisposeConnection(connMenu);

        }
        catch (Exception ex)
        {
            Session["sesUserID"] = "";
            Response.Redirect("index.aspx");
            //lblWelcome.Visible = false;
        }
    }
}