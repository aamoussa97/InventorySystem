using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventorySystem.Models.Connection
{
    public class VCostModel
    {
        int id;
        string name;
        int price;

        public int getId()
        {
            return this.id;
        }
        public int setId(int value)
        {
            return this.id = value;
        }

        public string getNavn()
        {
            return this.name;
        }
        public string setNavn(string value)
        {
            return this.name = value;
        }

        public int getPrice()
        {
            return this.price;
        }
        public int setPrice(int value)
        {
            return this.price = value;
        }
    }
}
