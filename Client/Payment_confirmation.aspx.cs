using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data.SqlClient;
using paytm;


public partial class Client_Payment_confirmation : System.Web.UI.Page
{
    int no;
    int OrderId1;
    protected void Page_Load(object sender, EventArgs e)
    {

        string connetionString = null;
        string qry;
        SqlConnection cnn;
        connetionString = @"Server=tcp:perfecttransport.database.windows.net,1433;Initial Catalog=Database;Persist Security Info=False;User ID=perfecttranport;Password=Perfect@transport;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
        cnn = new SqlConnection(connetionString);



        if (Session["payment_method"] == "cod")
        {
            h1Messasge.InnerText = "Our Courier Executive will be at your door soon!!!";

        }
        else
        {
            
                
                string merchantKey = "bLGoRMKBKiNiEy&@";

                Dictionary<string, string> parameters = new Dictionary<string, string>();
                string paytmChecksum = "";
                foreach (string key in Request.Form.Keys)
                {
                    parameters.Add(key.Trim(), Request.Form[key].Trim());
                }

                if (parameters.ContainsKey("CHECKSUMHASH"))
                {
                    paytmChecksum = parameters["CHECKSUMHASH"];
                    parameters.Remove("CHECKSUMHASH");
                }

                if (CheckSum.verifyCheckSum(merchantKey, parameters, paytmChecksum))
                {
                    string paytmstatus = parameters["STATUS"];
                    string txnId = parameters["TXNID"];
                    Session["txnId"] = txnId;

                    if (paytmstatus == "TXN_SUCCESS")
                    {
                        h1Messasge.InnerText = "Courier Pick Up Request has been made Successfully";
                        pTxnId.InnerText = "Note This Transaction Id : " + txnId;
                        //OrderId1 = CType(Session["OrderId"], integer);
                        //OrderId.InnerText = CType(Session["OrderId"],integer);
                    }
                    else if (paytmstatus == "PENDING")
                    {
                        h1Messasge.InnerText = "Plese Wait Transaction is Process";
                    }
                    else if(paytmstatus == "TXN_FAILURE")
                    {
                        h1Messasge.InnerText = "Transaction Failed ! If it is deducted from your bank account it will be get refunded within 5-6 days";
                    }
                }

            }
        }
        
    
    
}