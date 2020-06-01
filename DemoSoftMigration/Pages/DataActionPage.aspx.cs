using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DemoSoftMigration.Pages
{
    public partial class DataActionPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Variable declaration
            string SelectedType = Session["Type"].ToString();
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + SelectedType + "');", true);
            var OrderID="";
            var CustomerID = "";
            var EmployeeID = "";
            var OrderDate = "";
            var RequiredDate = "";
            var ShippedDate = "";
            var ShipVia = "";
            var Freight = "";
            var ShipName = "";
            var ShipAddress = "";
            var ShipCity = "";
            var ShipRegion = "";
            var ShipPostalCode = "";
            var ShipCountry = "";
            #endregion

            if ((SelectedType=="Modify")||(SelectedType == "Inspect"))
            {
                //OrderID = Convert.ToInt64(Session["OrderID"]);
                //CustomerID = Session["CustomerID"].ToString();
                //EmployeeID = Convert.ToInt64(Session["CustomerID"]);
                //OrderDate = Convert.ToDateTime(Session["OrderDate"]);
                //RequiredDate = Convert.ToDateTime(Session["RequiredDate"]);
                //ShippedDate = Convert.ToDateTime(Session["ShippedDate"]);
                //ShipVia = Convert.ToUInt32(Session["ShipVia"]);
                //Freight = Convert.ToDecimal(Session["Freight"]);
                //ShipName = Session["ShipName"].ToString();
                //ShipAddress = Session["ShipAddress"].ToString();
                //ShipCity = Session["ShipCity"].ToString();
                //ShipRegion = Session["ShipRegion"].ToString();
                //ShipPostalCode = Convert.ToInt32(Session["ShipPostalCode"]);
                //ShipCountry = Session["ShipCountry"].ToString();

                OrderID = Session["OrderID"].ToString();
                CustomerID = Session["CustomerID"].ToString();
                EmployeeID = Session["CustomerID"].ToString();
                OrderDate = Session["OrderDate"].ToString();
                RequiredDate = Session["RequiredDate"].ToString();
                ShippedDate = Session["ShippedDate"].ToString();
                ShipVia = Session["ShipVia"].ToString();
                Freight = Session["Freight"].ToString();
                ShipName = Session["ShipName"].ToString();
                ShipAddress = Session["ShipAddress"].ToString();
                ShipCity = Session["ShipCity"].ToString();
                ShipRegion = Session["ShipRegion"].ToString();
                ShipPostalCode = Session["ShipPostalCode"].ToString();
                ShipCountry = Session["ShipCountry"].ToString();

                if (SelectedType == "Modify") {
                    OrderIdTextbox.Text = OrderID.ToString();
                    OrderIdTextbox.ReadOnly = true;
                    CustomerIdTextbox.Text = CustomerID.ToString();
                    EmployeeIdTextbox.Text = EmployeeID.ToString();
                    OrderDateTextbox.Text = OrderDate.ToString();
                    RequiredDateTextbox.Text = RequiredDate.ToString();
                    ShippedDateTextbox.Text = ShippedDate.ToString();
                    ShipviaTextbox.Text = ShipVia.ToString();
                    FreightTextbox.Text = Freight.ToString();
                    ShipNameTextbox.Text = ShipName.ToString();
                    ShipAddressTextbox.Text = ShipAddress.ToString();
                    ShipCityTextbox.Text = ShipCity.ToString();
                    ShipRegionTextbox.Text = ShipRegion.ToString();
                    ShipPostal.Text = ShipPostalCode.ToString();
                    ShipCountryTextbox.Text = ShipCountry.ToString();
                }
                else {
                    OrderIdTextbox.Text = OrderID.ToString();
                    OrderIdTextbox.ReadOnly = true;
                    CustomerIdTextbox.Text = CustomerID.ToString();
                    CustomerIdTextbox.ReadOnly = true;
                    EmployeeIdTextbox.Text = EmployeeID.ToString();
                    EmployeeIdTextbox.ReadOnly = true;
                    OrderDateTextbox.Text = OrderDate.ToString();
                    OrderDateTextbox.ReadOnly = true;
                    RequiredDateTextbox.Text = RequiredDate.ToString();
                    RequiredDateTextbox.ReadOnly = true;
                    ShippedDateTextbox.Text = ShippedDate.ToString();
                    ShippedDateTextbox.ReadOnly = true;
                    ShipviaTextbox.Text = ShipVia.ToString();
                    ShipviaTextbox.ReadOnly = true;
                    FreightTextbox.Text = Freight.ToString();
                    FreightTextbox.ReadOnly = true;
                    ShipNameTextbox.Text = ShipName.ToString();
                    ShipNameTextbox.ReadOnly = true;
                    ShipAddressTextbox.Text = ShipAddress.ToString();
                    ShipAddressTextbox.ReadOnly = true;
                    ShipCityTextbox.Text = ShipCity.ToString();
                    ShipCityTextbox.ReadOnly = true;
                    ShipRegionTextbox.Text = ShipRegion.ToString();
                    ShipRegionTextbox.ReadOnly = true;
                    ShipPostalTextbox.Text = ShipPostalCode.ToString();
                    ShipPostalTextbox.ReadOnly = true;
                    ShipCountryTextbox.Text = ShipCountry.ToString();
                    ShipCountryTextbox.ReadOnly = true;
                }
            }
            
        }
    }
}