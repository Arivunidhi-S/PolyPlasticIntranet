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

public partial class Department : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RadGrid1_NeedDataSource(object source, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
    {
        try
        {
            RadGrid1.DataSource = DataSourceHelper();
        }
        catch (Exception ex)
        {
            //ShowMessage(9);
            //InsertLogAuditTrial is used to insert the action into MasterAuditTrail table
            //InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "NeedDataSource", ex.ToString(), "Audit");
        }
    }

    public DataTable DataSourceHelper()
    {
        int delval = 0;
        string sql = "";
        OleDbConnection conn = BusinessTier.getConnection();
        conn.Open();
        sql = "select * FROM Master_Department WHERE Deleted=" + delval + " order by Dept_Id";
        OleDbDataAdapter oldbDataAdapter = new OleDbDataAdapter(sql, conn);
        DataTable g_datatable = new DataTable();
        oldbDataAdapter.Fill(g_datatable);
        BusinessTier.DisposeAdapter(oldbDataAdapter);
        BusinessTier.DisposeConnection(conn);
        return g_datatable;
    }

    protected void RadGrid1_DeleteCommand(object source, Telerik.Web.UI.GridCommandEventArgs e)
    {
        try
        {
            string ID = e.Item.OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Dept_Id"].ToString();
            OleDbConnection conn = BusinessTier.getConnection();
            conn.Open();
            int flg = BusinessTier.SaveDepartmentMaster(conn, Convert.ToInt32(ID), "", "", true, "", "", Session["sesUserID"].ToString(), "D");
            BusinessTier.DisposeConnection(conn);
            if (flg >= 1)
            {
                ShowMessage(37);
            }
            //InsertLogAuditTrial is used to insert the action into MasterLog table
            InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Delete", "Success", "Log");
        }
        catch (Exception ex)
        {
            ShowMessage(7);
            e.Canceled = true;
            //InsertLogAuditTrial is used to insert the action into MasterAuditTrail table
            InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Delete", ex.ToString(), "Audit");
        }
    }

    protected void RadGrid1_InsertCommand(object source, Telerik.Web.UI.GridCommandEventArgs e)
    {
        OleDbConnection conn = BusinessTier.getConnection();
        try
        {
            conn.Open();
            GridEditableItem editedItem = e.Item as GridEditableItem;
            TextBox txtDeptcode = (TextBox)editedItem.FindControl("txtDeptcode");
            TextBox txtDeptName = (TextBox)editedItem.FindControl("txtDeptName");
            CheckBox ChkLab = (CheckBox)editedItem.FindControl("ChkLab");
            TextBox txtShortName = (TextBox)editedItem.FindControl("txtShortName");
            TextBox txtDesc = (TextBox)editedItem.FindControl("txtDesc");
            Label lblStatus = (Label)editedItem.FindControl("lblStatus");
            string strCheckflag = "0";
            //OleDbDataReader reader = BusinessTier.IDCheck(conn, txtDeptcode.Text.ToString().Trim());
            //if (reader.Read())
            //{
            //    strCheckflag = reader["IDCheck"].ToString();

            //}
            //BusinessTier.DisposeReader(reader);

            //if (strCheckflag.ToString() == "1")
            //{
            //    ShowMessage(39);
            //    return;
            //}

            //int flg = BusinessTier.SaveDepartmentMaster(conn, 1, txtDeptcode.Text.ToString().Trim(), txtDeptName.Text.ToString().Trim(), ChkLab.Checked, txtShortName.Text.ToString().Trim(), txtDesc.Text.ToString().Trim(),"1", "N");
            string sql = "insert into Master_Department(Dept_code,Dept_Name,Lab,Description,Short_Name,created_by,created_date) values ('" + txtDeptcode.Text.ToString().Trim() + "','" + txtDeptName.Text.ToString().Trim() + "'," + ChkLab.Checked + ",'" + txtShortName.Text.ToString().Trim() + "','" + txtDesc.Text.ToString().Trim() + "'," + 1 + ",'" + DateTime.Now + "')";
            //OleDbConnection dbCon = new OleDbConnection(conStr);
            //dbCon.Open();
            OleDbCommand dbCom = new OleDbCommand(sql, conn);
            int flg = dbCom.ExecuteNonQuery();
            BusinessTier.DisposeConnection(conn);
            if (flg >= 1)
            {
                lblStatus.Text = "Inserted";
                //ShowMessage(36);
            }
            //InsertLogAuditTrial is used to insert the action into MasterLog table
            //InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Insert", "Success", "Log");
        }
        catch (Exception ex)
        {
            //ShowMessage(5);
            lblStatus.Text = ex.Message.ToString();
            e.Canceled = true;
            //InsertLogAuditTrial is used to insert the action into MasterAuditTrail table
            //InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Insert", ex.ToString(), "Audit");
        }
        finally
        {
            BusinessTier.DisposeConnection(conn);
        }

        RadGrid1.Rebind();
    }

    protected void RadGrid1_UpdateCommand(object source, Telerik.Web.UI.GridCommandEventArgs e)
    {
        OleDbConnection conn = BusinessTier.getConnection();
        try
        {
            conn.Open();
            GridEditableItem editedItem = e.Item as GridEditableItem;
            string ID = e.Item.OwnerTableView.DataKeyValues[e.Item.ItemIndex]["Dept_Id"].ToString();
            Label lblExistingname = (Label)editedItem.FindControl("lblExistingname");
            TextBox txtDeptcode = (TextBox)editedItem.FindControl("txtDeptcode");
            TextBox txtDeptName = (TextBox)editedItem.FindControl("txtDeptName");
            CheckBox ChkLab = (CheckBox)editedItem.FindControl("ChkLab");
            TextBox txtShortName = (TextBox)editedItem.FindControl("txtShortName");
            TextBox txtDesc = (TextBox)editedItem.FindControl("txtDesc");
            string strCheckflag = "0";
            OleDbDataReader reader = BusinessTier.IDCheck(conn, txtDeptcode.Text.ToString().Trim());
            if (reader.Read())
            {
                strCheckflag = reader["IDCheck"].ToString();

            }
            BusinessTier.DisposeReader(reader);

            if (strCheckflag.ToString() == "1")
            {
                if (!(lblExistingname.Text.ToString().Trim() == txtDeptcode.Text.ToString().Trim()))
                {
                    ShowMessage(39);
                    return;
                }
            }



            int flg = BusinessTier.SaveDepartmentMaster(conn, Convert.ToInt32(ID), txtDeptcode.Text.ToString().Trim(), txtDeptName.Text.ToString().Trim(), ChkLab.Checked, txtShortName.Text.ToString().Trim(), txtDesc.Text.ToString().Trim(), Session["sesUserID"].ToString(), "U");

            BusinessTier.DisposeConnection(conn);
            if (flg >= 1)
            {
                ShowMessage(38);
            }
            //InsertLogAuditTrial is used to insert the action into MasterLog table
            InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Update", "Success", "Log");
        }
        catch (Exception ex)
        {
            ShowMessage(5);
            e.Canceled = true;
            //InsertLogAuditTrial is used to insert the action into MasterAuditTrail table
            InsertLogAuditTrail(Session["sesUserID"].ToString(), "Master_Department", "Update", ex.ToString(), "Audit");
        }
        finally
        {
            BusinessTier.DisposeConnection(conn);
        }

        RadGrid1.Rebind();
    }

    private void ShowMessage(int errorNo)
    {
        lblStatus.Text = BusinessTier.g_ErrorMessagesDataTable.Rows[errorNo - 1]["Message"].ToString();
        System.Drawing.ColorConverter colConvert = new ColorConverter();
        string strColor = BusinessTier.g_ErrorMessagesDataTable.Rows[errorNo - 1]["Color"].ToString();
        lblStatus.ForeColor = (System.Drawing.Color)colConvert.ConvertFromString(strColor);
    }

    private void InsertLogAuditTrail(string userid, string module, string activity, string result, string flag)
    {
        OleDbConnection connLog = BusinessTier.getConnection();
        connLog.Open();
        BusinessTier.InsertLogAuditTrial(connLog, userid, module, activity, result, flag);
        BusinessTier.DisposeConnection(connLog);
    }
}