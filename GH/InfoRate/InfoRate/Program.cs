using System;
using System.Linq;
using System.Net;
using System.Xml.Linq;

namespace InfoRate
{
    class Program
    {
        public static decimal GetRate(string NameRate, DateTime dateTime)
        {
            WebClient client = new WebClient();
            String URLString = "http://www.cbr.ru/scripts/XML_daily.asp?date_req=" + dateTime.ToString("d");
            var xml = client.DownloadString(URLString);
            XDocument xdoc = XDocument.Parse(xml);
            var el = xdoc.Element("ValCurs").Elements("Valute");

            if (NameRate.Length <= 3)
            {
                string valueNumber = el.Where(x => x.Element("CharCode").Value == NameRate).Select(x => x.Element("Value").Value).FirstOrDefault();
                return Convert.ToDecimal(valueNumber);
            }
            else
            {
                string valueNumber = el.Where(x => x.Element("Name").Value == NameRate).Select(x => x.Element("Value").Value).FirstOrDefault();
                return Convert.ToDecimal(valueNumber);
            }
        }
        static void Main(string[] args)
        {
            DateTime dtNow = DateTime.Now;
            Console.WriteLine(GetRate("Швейцарский франк", dtNow));
            Console.WriteLine(GetRate("BYN", dtNow));
            Console.ReadKey();
        }
    }
}
