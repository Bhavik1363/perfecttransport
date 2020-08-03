using paytm;
using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Transport
{

    public partial class paytm_payment_getway : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {     
          String merchantKey="bLGoRMKBKiNiEy&@";
          Int32 value = (Int32)HttpContext.Current.Session["tamount"];
          string finalamount = value.ToString();
          int length = 10;
          Session["payment_method"] = "Paytm";
          StringBuilder str_Build = new StringBuilder();
          Random random = new Random();
          char letter;
          for (int i = 0; i < length; i++)
          {
              double flt = random.NextDouble();
              int shift = Convert.ToInt32(Math.Floor(25 * flt));
              letter = Convert.ToChar(shift + 65);
              str_Build.Append(letter);
          }
          string randomorderstring = str_Build.ToString();
          Session["OrderId"] = randomorderstring;
          Dictionary<string, string> parameters = new Dictionary<string, string>
        {
            {"MID", "SumYEV84819366696938"},
            {"CHANNEL_ID", "WEB"},
            {"INDUSTRY_TYPE_ID","Retail"},
            {"WEBSITE", "WEBSTAGING"},
            {"EMAIL", "nikkipastagiya@gmail.com"},
            {"MOBILE_NO", "9106989636"},
            {"CUST_ID", "03"},
            {"ORDER_ID", randomorderstring},
            {"TXN_AMOUNT",finalamount},
            {"CALLBACK_URL", "https://perfectransport.azurewebsites.net/client/payment_confirmation.aspx"}, //This parameter is not mandatory. Use this to pass the callback url dynamically.
        };
            string checksum = CheckSum.generateCheckSum(merchantKey, parameters);
            string paytmURL = "https://securegw-stage.paytm.in/theia/processTransaction";
            string outputHTML = "<html>";
            outputHTML += "<head>";
            outputHTML += "<title>Merchant Check Out Page</title>";
            outputHTML += "</head>";
            outputHTML += "<body>";
            outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
            outputHTML += "<form method='post' action='" + paytmURL + "' name='f1'>";
            outputHTML += "<table border='1'>";
            outputHTML += "<tbody>";
            foreach (string key in parameters.Keys)
                {
                     outputHTML += "<input type='hidden' name='" + key + "' value='" + parameters[key] + "'>";
                }
            outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + checksum + "'>";
            outputHTML += "</tbody>";
            outputHTML += "</table>";
            outputHTML += "<script type='text/javascript'>";
            outputHTML += "document.f1.submit();";
            outputHTML += "</script>";
            outputHTML += "</form>";
            outputHTML += "</body>";
            outputHTML += "</html>";
            Response.Write(outputHTML);


        }
    }
}