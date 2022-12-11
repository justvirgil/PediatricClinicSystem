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
    public partial class Billing : System.Web.UI.Page
    {
        String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Online Class\\ELDNET\\New folder - Copy\\PediatricClinicSystem\\PediatricClinicSystem\\App_Data\\Information.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PatientCodeTextBox_TextChanged(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "Select * from PATIENTFILE WHERE PATCODE = " + PatientCodeTextBox.Text + "";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            while (thisReader.Read())
            {
                if (PatientCodeTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid Patient Code!');</script>");
                    PatientCodeTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else
                {
                    PatientNameTextBox.Text = thisReader["PATNAME"].ToString();
                    AgeTextBox.Text = thisReader["PATAGE"].ToString();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "Select * from EMPLOYEEFILE WHERE EMPCODE = " + preparedByTextBox.Text + "";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            while (thisReader.Read())
            {
                if (ImmuNumberTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid Consultation Number');</script>");
                    preparedByOutputTextBox.Text = "";
                    preparedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (PatientCodeTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid patient code!');</script>");
                    preparedByOutputTextBox.Text = "";
                    preparedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (thisReader["EMPSTATUS"].ToString() == "IC")
                {
                    Response.Write("<script> alert('Employee I.D not Inactive');</script>");
                    preparedByOutputTextBox.Text = "";
                    preparedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (thisReader["EMPPOSITION"].ToString() == "Guard")
                {
                    Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
                    preparedByOutputTextBox.Text = "";
                    preparedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else
                {
                    preparedByOutputTextBox.Text = thisReader["EMPLNAME"].ToString() + "  " + thisReader["EMPFNAME"].ToString();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM BILLINGHEADERFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "BILLINGHEADERFILE");
            if (ImmuNumberTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["BILLINGHEADERFILE"].Rows.Find(BillingNumberTextBox.Text);
                if (checkRow == null)
                {
                    if (PatientCodeTextBox.Text == "" || PatientNameTextBox.Text == "" || AgeTextBox.Text == "  ")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["BILLINGHEADERFILE"].NewRow();
                        thisRow["BILLHNO"] = BillingNumberTextBox.Text;
                        thisRow["BILLHPATCODE"] = PatientCodeTextBox.Text;
                        thisRow["BILLHDATE"] = DateTime.Parse(DateTextBox.Text);
                        thisRow["BILLHTOTAMT"] = int.Parse(TotalAmountOutputTextBox.Text);
                        thisRow["BILLHPREPBY"] = preparedByOutputTextBox.Text;
                        thisRow["BILLHSTAT"] = "Ok";
                        thisDataSet.Tables["IMMUNIZATIONHEADERFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "BILLINGHEADERFILE");
                        Response.Write("<script> alert('Entries Successfully Recorded!');</script>");
                        clear();
                    }
                }
                else
                {
                    Response.Write("<script> alert('Immunization Number Already Exist!');</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        protected void billingDetailFile()
        {
        
        
        }
        protected void clear()
        {
            ImmuNumberTextBox.Text = "";
            DateTextBox.Text = "";
            PatientCodeTextBox.Text = "";
            PatientNameTextBox.Text = "";
            AgeTextBox.Text = "";
            preparedByTextBox.Text = "";
            preparedByOutputTextBox.Text = "";
            BillingNumberTextBox.Text = "";
            TotalAmountOutputTextBox.Text = "";
        }
        protected void ImmuNumberTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}