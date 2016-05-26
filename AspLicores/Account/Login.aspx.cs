using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using AspLicores.Models;
using System.Collections.Generic;
using System.Linq;

namespace AspLicores.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //RegisterHyperLink.NavigateUrl = "Register";
            //// Habilite esta opción una vez tenga la confirmación de la cuenta habilitada para la funcionalidad de restablecimiento de contraseña
            ////ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if(txtuser.Text == string.Empty)
            {
                lblErrorUser.Visible = true;
                lblErrorUser.Text = "El campo usuario no puede estar vacio";
            }

            if(txtPassword.Text == string.Empty)
            {
                lblErrorPass.Visible = true;
                lblErrorPass.Text = "El campo password no puede estar vacio";
            }

            if(txtuser.Text != string.Empty && txtPassword.Text != string.Empty)
            {
                using (Entidad con = new Entidad())
                {
                    Segurida bbg = new Segurida();
                    string user1 = txtuser.Text.ToLower();
                    string cc = bbg.Encripta(txtPassword.Text);

                    var user = (from usuario in con.usuario where usuario.username == user1 select usuario).ToList<usuario>();
                    var Password = (from usuario in con.usuario where usuario.password == cc select usuario).ToList<usuario>();

                    if(user.Count == 0)
                    {
                        lblErrorUser.Visible = true;
                        lblErrorUser.Text = "El usuario que ha ingresado no se encuentra registrado";
                    }

                    if(user.Count == 1 && Password.Count == 0)
                    {
                        lblErrorPass.Visible = true;
                        lblErrorPass.Text = "La contraseña es incorrecta";
                    }

                    if(user.Count == 1 && Password.Count != 0)
                    {

                    }

                }

            


            }
            //if (IsValid)
            //{

            //    // Validar la contraseña del usuario
            //    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //    var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

            //    // Esto no cuenta los errores de inicio de sesión hacia el bloqueo de cuenta
            //    // Para habilitar los errores de contraseña para desencadenar el bloqueo, cambie a shouldLockout: true
            //    var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

            //    switch (result)
            //    {
            //        case SignInStatus.Success:
            //            IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //            break;
            //        case SignInStatus.LockedOut:
            //            Response.Redirect("/Account/Lockout");
            //            break;
            //        case SignInStatus.RequiresVerification:
            //            Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
            //                                            Request.QueryString["ReturnUrl"],
            //                                            RememberMe.Checked),
            //                              true);
            //            break;
            //        case SignInStatus.Failure:
            //        default:
            //            FailureText.Text = "Intento de inicio de sesión no válido";
            //            ErrorMessage.Visible = true;
            //            break;
            //    }
            //}
        }
    }
}