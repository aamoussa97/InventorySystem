using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;

namespace InventorySystem
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateWebHostBuilder(args).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args)
        {
            return WebHost.CreateDefaultBuilder(args)
                .UseUrls("http://0.0.0.0:5000") //Disable HTTPS //http://localhost:5000 , "https://localhost:5000"
                .UseStartup<Startup>();
        }
    }
}