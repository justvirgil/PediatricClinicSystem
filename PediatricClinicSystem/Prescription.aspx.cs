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
    public partial class Prescription : System.Web.UI.Page
    {
        String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Online Class\\ELDNET\\New folder - Copy\\PediatricClinicSystem\\PediatricClinicSystem\\App_Data\\Information.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PatientCodeTextBox_TextChanged(object sender, EventArgs e)
        {

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
                if (ConsultationNumberTextBox.Text == "")
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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clear();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void ConsultationNumberTextBox_TextChanged(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "Select * from CONSULTATIONHEADERFILE WHERE CONHNO = " + ConsultationNumberTextBox.Text + "";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            while (thisReader.Read())
            {
                if (ConsultationNumberTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid Consultation Code!');</script>");
                    ConsultationNumberTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else {
                    ConsultationNumberTextBox.Text = thisReader["CONHNO"].ToString();
                    PatientNameTextBox.Text = thisReader["CONHPATCODE"].ToString();
                    patientfile();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }
        protected void patientfile()
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
        protected void clear()
        {
            DateTextBox.Text = "";
            PatientCodeTextBox.Text = "";
            PatientNameTextBox.Text = "";
            AgeTextBox.Text = "";
            preparedByTextBox.Text = "";
            preparedByOutputTextBox.Text = "";
            MedicineCodeTextBox.Text = "";
            QuantityTextBox.Text = "";
            RemarksTextBox.Text = "";
            PrescriptionNumberTextBox.Text = "";
            ConsultationNumberTextBox.Text = "";
        }
    }
}