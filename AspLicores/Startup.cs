using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspLicores.Startup))]
namespace AspLicores
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
