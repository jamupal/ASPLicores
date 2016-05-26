using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using AspLicores.Models;
using System.Collections.Generic;

namespace AspLicores.Account
{
    public partial class Register : Page
    {

        public void Limpiar()
        {
            txtCedula.Text = string.Empty;
            txtDireccion1.Text = string.Empty;
            txtFecha_nacimiento1.Text = string.Empty;
            txtNombres.Text = string.Empty;
            txttarjetaCredito1.Text = string.Empty;
            txttelefono.Text = string.Empty;
            txtusername1.Text = string.Empty;
            Email2.Text = string.Empty;
        }

        private bool validaciones()
        {
            Entidad conex = new Entidad();

            string usuari = txtusername1.Text.ToLower();
            string cc = txtCedula.Text;
            var usuarios = (from usuario in conex.usuario where usuario.username == usuari select usuario).ToList<usuario>();
            var document = (from usuario in conex.usuario where usuario.cedula == cc select usuario).ToList<usuario>();

            try
            {
                DateTime nacimiento = Convert.ToDateTime(txtFecha_nacimiento1.Text);
                int edad = DateTime.Today.AddTicks(-nacimiento.Ticks).Year - 1;

                if (edad < 18)
                {
                    lblerroredad.Visible = true;
                    lblerroredad.Text = "Solo se permite el registro de mayores de edad";
                    return false;
                }
            }
            catch (Exception ex)
            {
                lblerroredad.Visible = true;
                lblerroredad.Text = "La fecha de nacimiento no puede ser mayor a la actual";
                return false;
            }

            if (usuarios.Count != 0)
            {
                lblerroruser.Visible = true;
                lblerroruser.Text = "El usuario ya se encuentra registrado";
                return false;

            }
            if (document.Count != 0)
            {
                lblerrordoc.Visible = true;
                lblerrordoc.Text = "El documento ya se encuentra registrado";
                return false;
            }

            return true;

        }
        Segurida bbg = new Segurida();
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            lblerroruser.Visible = false;
            lblerrordoc.Visible = false;
            lblerroredad.Visible = false;
            string p = bbg.Encripta(Password.Text);
            string k = bbg.Desencripta(p);
            int stado = 1;
            int perfil = 2;
            
            if (validaciones())
            {
                using (Entidad conex = new Entidad())
                {
                    usuario newUser = new usuario();

                    newUser.nombre = txtNombres.Text.ToLower();
                    newUser.cedula = txtCedula.Text;
                    newUser.direccion = txtDireccion1.Text.ToLower();
                    newUser.email = Email2.Text.ToLower();
                    newUser.Estado = stado;
                    newUser.fecha_nacimiento = Convert.ToDateTime(txtFecha_nacimiento1.Text);
                    newUser.password = p;
                    newUser.perfil_usuario = perfil;
                    newUser.targetaCredito = txttarjetaCredito1.Text;
                    newUser.telefono = txttelefono.Text;
                    newUser.username = txtusername1.Text.ToLower();

                    conex.usuario.Add(newUser);
                    conex.SaveChanges();

                    Limpiar();
                    Session["registro"] = 1;
                    Response.Redirect("~/Sesion.aspx");
                    
                }
            }
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = Email2.Text, Email = Email2.Text };
            //IdentityResult result = manager.Create(user, Password.Text);
            //if (result.Succeeded)
            //{
            //    // Para obtener más información sobre cómo habilitar la confirmación de cuentas y el restablecimiento de contraseña, visite http://go.microsoft.com/fwlink/?LinkID=320771
            //    //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //    //manager.SendEmail(user.Id, "Confirmar cuenta", "Para confirmar la cuenta, haga clic <a href=\"" + callbackUrl + "\">aquí</a>.");

            //    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
            //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //}
            //else
            //{
            //    ErrorMessage.Text = result.Errors.FirstOrDefault();
            //}
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpiar();
            Response.Redirect("~/Sesion.aspx");
        }
    }
}