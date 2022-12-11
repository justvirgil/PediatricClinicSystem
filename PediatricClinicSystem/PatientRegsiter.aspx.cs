using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace PediatricClinicSystem
{
    public partial class PatientRegsiter : System.Web.UI.Page
    {
        String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Online Class\\ELDNET\\New folder - Copy\\PediatricClinicSystem\\PediatricClinicSystem\\App_Data\\Information.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM PATIENTFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "PATIENTFILE");
            if (PatientCodeTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["PATIENTFILE"].Rows.Find(PatientCodeTextBox.Text);
                if (checkRow == null)
                {
                    if (PatientCodeTextBox.Text == "" || PatientNameTextBox.Text == "" || AgeTextBox.Text == "" || GenderDropDownList.Text == "" || BirthdayTextBox.Text == "" || AddressTextBox.Text == "" || TelephoneTextBox.Text == "" || FatherNameTextBox.Text == "" || MotherNameTextBox.Text == "" || HeightTextBox.Text == "" || WeightTextBox.Text == "")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["PATIENTFILE"].NewRow();
                        thisRow["PATCODE"] = PatientCodeTextBox.Text;
                        thisRow["PATNAME"] = PatientNameTextBox.Text;
                        thisRow["PATAGE"] = int.Parse(AgeTextBox.Text);
                        thisRow["PATGENDER"] = GenderDropDownList.Text;
                        thisRow["PATBDATE"] = DateTime.Parse(BirthdayTextBox.Text);
                        thisRow["PATADDR"] = AddressTextBox.Text;
                        thisRow["PATTEL"] = int.Parse(TelephoneTextBox.Text);
                        thisRow["PATFATHNAME"] = FatherNameTextBox.Text;
                        thisRow["PATMOTHNAME"] = MotherNameTextBox.Text;
                        thisRow["PATHEIGHT"] = int.Parse(HeightTextBox.Text);
                        thisRow["PATWEIGHT"] = int.Parse(WeightTextBox.Text);
                        thisRow["PATSTATUS"] = "Stable";
                        thisDataSet.Tables["PATIENTFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "PATIENTFILE");
                        Response.Write("<script> alert('Entries Successfully Recorded!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('Patient Number Already Exist!');</script>");
                }
            }
        }
        protected void clear()
        {
            
        }
    }
}