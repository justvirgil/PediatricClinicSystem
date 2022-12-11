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
    public partial class WebForm3 : System.Web.UI.Page
    {
        String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Online Class\\ELDNET\\New folder - Copy\\PediatricClinicSystem\\PediatricClinicSystem\\App_Data\\Information.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
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
                    GenderTextBox.Text = thisReader["PATGENDER"].ToString();
                    BirthdayTextBox.Text = thisReader["PATBDATE"].ToString();
                    AddressTextBox.Text = thisReader["PATADDR"].ToString();
                    TelephoneTextBox.Text = thisReader["PATTEL"].ToString();
                    FatherNameTextBox.Text = thisReader["PATFATHNAME"].ToString();
                    MotherNameTextBox.Text = thisReader["PATMOTHNAME"].ToString();
                    HeightTextBox.Text = thisReader["PATHEIGHT"].ToString();
                    WeightTextBox.Text = thisReader["PATWEIGHT"].ToString();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
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
                if (immuNumberTextBox.Text == "")
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

    protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM IMMUNIZATIONHEADERFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "IMMUNIZATIONHEADERFILE");
            if (immuNumberTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["IMMUNIZATIONHEADERFILE"].Rows.Find(immuNumberTextBox.Text);
                if (checkRow == null)
                {
                    if (PatientCodeTextBox.Text == "" || PatientNameTextBox.Text == "" || AgeTextBox.Text == "" || GenderTextBox.Text == "" || BirthdayTextBox.Text == "" || AddressTextBox.Text == "" || TelephoneTextBox.Text == "" || FatherNameTextBox.Text == "" || MotherNameTextBox.Text == "" || HeightTextBox.Text == "" || WeightTextBox.Text == "")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["IMMUNIZATIONHEADERFILE"].NewRow();
                        thisRow["IMMHIMMUNO"] = immuNumberTextBox.Text;
                        thisRow["IMMHPATCODE"] = PatientCodeTextBox.Text;
                        thisRow["IMMHDATE"] = DateTime.Parse(DateTextBox.Text);
                        thisRow["IMMHPATHEIGHT"] = int.Parse(HeightTextBox.Text);
                        thisRow["IMMHPATWEIGHT"] = int.Parse(WeightTextBox.Text);
                        thisRow["IMMHPREPBY"] = preparedByOutputTextBox.Text;
                        thisRow["IMMHIMMUBY"] = examinedByOutputTextBox.Text;
                        thisRow["IMMHSTAT"] = "Stable";
                        ImmunizationDetailUpdate();
                        thisDataSet.Tables["IMMUNIZATIONHEADERFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "IMMUNIZATIONHEADERFILE");
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
        protected void ImmunizationDetailUpdate()
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM IMMUNIZATIONDETAILFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "IMMUNIZATIONDETAILFILE");
            if (immuNumberTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["IMMUNIZATIONDETAILFILE"].Rows.Find(immuNumberTextBox.Text);
                if (checkRow == null)
                {
                    if (immuNumberTextBox.Text == "" || VaccineTextBox.Text == "" || ShotNumberTextBox.Text == "" || reactionTextBox.Text == "")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["IMMUNIZATIONDETAILFILE"].NewRow();
                        thisRow["IMMDIMMUHNO"] = immuNumberTextBox.Text;
                        thisRow["IMMDVACCODE"] = VaccineTextBox.Text;
                        thisRow["IMMDSHOTNUM"] = int.Parse(ShotNumberTextBox.Text);
                        thisRow["IMMDREACTION"] = reactionTextBox.Text;
                        thisRow["IMDDSTAT"] = "Stable";
                        thisDataSet.Tables["IMMUNIZATIONDETAILFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "IMMUNIZATIONDETAILFILE");
                        Response.Write("<script> alert('Entries Successfully Recorded!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('Immunization Number Already Exist!');</script>");
                }
            }
        }
        
        protected void PatientNameTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ExaminedByTextBox_TextChanged(object sender, EventArgs e)
        {
                        SqlConnection thisConnection = new SqlConnection(connectionString);
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "Select * from EMPLOYEEFILE WHERE EMPCODE = " + ExaminedByTextBox.Text + "";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            while (thisReader.Read())
            {
                if (PatientCodeTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid Patient Code!');</script>");
                    examinedByOutputTextBox.Text = "";
                    ExaminedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (thisReader["EMPSTATUS"].ToString() == "IC")
                {
                    Response.Write("<script> alert('Employee I.D not Inactive');</script>");
                    examinedByOutputTextBox.Text = "";
                    ExaminedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (thisReader["EMPPOSITION"].ToString() == "Guard")
                {
                    Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
                    examinedByOutputTextBox.Text = "";
                    ExaminedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else if (thisReader["EMPPOSITION"].ToString() == "NURSE")
                {
                    Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
                    examinedByOutputTextBox.Text = "";
                    ExaminedByTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else
                {
                    examinedByOutputTextBox.Text = thisReader["EMPLNAME"].ToString() + "  " + thisReader["EMPFNAME"].ToString();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            immuNumberTextBox.Text = "";
            DateTextBox.Text = "";
            PatientCodeTextBox.Text = "";
            PatientNameTextBox.Text = "";
            AgeTextBox.Text = "";
            GenderTextBox.Text = "";
            BirthdayTextBox.Text = "";
            AddressTextBox.Text = "";
            TelephoneTextBox.Text = "";
            FatherNameTextBox.Text = "";
            MotherNameTextBox.Text = "";
            HeightTextBox.Text = "";
            WeightTextBox.Text = "";
            bodyTempTextBox.Text = "";
            VaccineTextBox.Text = "";
            ShotNumberTextBox.Text = "";
            reactionTextBox.Text = "";
            preparedByTextBox.Text = "";
            preparedByOutputTextBox.Text = "";
            examinedByOutputTextBox.Text = "";
            ExaminedByTextBox.Text = "";
        }
        protected void clear()
        { 
            immuNumberTextBox.Text = "";
            DateTextBox.Text = "";
            PatientCodeTextBox.Text = "";
            PatientNameTextBox.Text = "";
            AgeTextBox.Text = "";
            GenderTextBox.Text = "";
            BirthdayTextBox.Text = "";
            AddressTextBox.Text = "";
            TelephoneTextBox.Text = "";
            FatherNameTextBox.Text = "";
            MotherNameTextBox.Text = "";
            HeightTextBox.Text = "";
            WeightTextBox.Text = "";
            bodyTempTextBox.Text = "";
            VaccineTextBox.Text = "";
            ShotNumberTextBox.Text = "";
            reactionTextBox.Text = "";
            preparedByTextBox.Text = "";
            preparedByOutputTextBox.Text = "";
            examinedByOutputTextBox.Text = "";
            ExaminedByTextBox.Text = "";
        }

        protected void preparedByOutputTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}