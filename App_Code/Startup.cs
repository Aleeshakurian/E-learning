using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(E_LEARNING2018.Startup))]
namespace E_LEARNING2018
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
