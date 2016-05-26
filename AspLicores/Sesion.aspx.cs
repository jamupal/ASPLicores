using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspLicores
{
    public partial class Sesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

                if (Session["registro"] != null)
                {
                    lblMensaje.Text = "Su registro ha sido exitoso, Por favor inicie sesión con su usuario y contraseña";
                }

                lblMensaje.Visible = false;
                Session["registro"] = null;
            }
        }
    }
}