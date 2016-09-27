using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class inasis_x_conven : System.Web.UI.Page
{
    inasisconven clase = new inasisconven();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int convencod = Convert.ToInt32(DropDownList1.SelectedValue.ToString());
        int inasiscod = Convert.ToInt32(DropDownList2.SelectedValue.ToString());


        int datos = clase.guardarinacon(convencod, inasiscod);
        if (datos == 1)
        {
            Response.Redirect("inasis_x_conven.aspx");
        }
        else {
            Response.Write("<script>alert('No guardó')</script>");
        }
        Server.Transfer("institucionview.aspx", true);
    }
}
