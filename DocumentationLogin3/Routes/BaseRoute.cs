using Microsoft.AspNetCore.Mvc;

namespace DocumentationLogin3.Routes {
    [Route("/api/docu")]
    [ApiController]
    public class BaseRoute : ControllerBase { 
        protected readonly IConfiguration Config;

            // constructor
            public BaseRoute(IConfiguration configuration) {
                Config = configuration;
            }

        
    }
}
