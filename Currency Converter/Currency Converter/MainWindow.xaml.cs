using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;


namespace Currency_Converter
{
    public class Rate
    {
        public string id { get; set; }
        public string Name { get; set; }
        public string rate { get; set; }
        public string Date { get; set; }
        public string Time { get; set; }
        public string Ask { get; set; }
        public string Bid { get; set; }
    }

    public class Results
    {
        public Rate rate { get; set; }
    }

    public class Query
    {
        public int count { get; set; }
        public string created { get; set; }
        public string lang { get; set; }
        public Results results { get; set; }
    }

    public class RootObject
    {
        public Query query { get; set; }
    }
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string fromCurrency = FromCurrency.Text; // Валюта с которой конвертируем
            string toCurrency = ToCurrency.Text; // Валюта в которую конвертируем
            WebRequest request = // Делаем запрос к API Yahoo
                WebRequest.Create($"https://query.yahooapis.com/v1/public/yql?q=select+*+from+yahoo.finance.xchange+where+pair+=+\"" +
                $"{fromCurrency}{toCurrency}\"&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback=");
            WebResponse response = request.GetResponse(); // Получаем ответ
            using (StreamReader stream = new StreamReader(response.GetResponseStream()))
            {
                string line = "";
                if ((line = stream.ReadLine()) != null)
                {
                    RootObject result = JsonConvert.DeserializeObject<RootObject>(line);
                    Result.Text = (Convert.ToInt32(Amount.Text) * 
                        Convert.ToDouble(result.query.results.rate.rate.Replace(".", ","))).ToString();
                }
            }
        }
    }
}
