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
    public partial class WebForm4 : System.Web.UI.Page
    {
        String connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Online Class\\ELDNET\\New folder - Copy\\PediatricClinicSystem\\PediatricClinicSystem\\App_Data\\Information.mdf;Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //bool dataCellChecker = false;
            //dataCellChecker = IsExistCellChecker();
            //if (dataCellChecker == true)
            //{
            //    Response.Write("<script> alert('Fill everything in Datagrid!');</script>");
            //    return;
            //}
            
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM CONSULTATIONHEADERFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "CONSULTATIONHEADERFILE");
            if (immuNumberTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["CONSULTATIONHEADERFILE"].Rows.Find(immuNumberTextBox.Text);
                if (checkRow == null)
                {
                    if (ConsultationNumberTextBox.Text == "" || immuNumberTextBox.Text == "" || DateTextBox.Text == "" || PatientCodeTextBox.Text == "" || HeightTextBox.Text == "" || WeightTextBox.Text == "" || BodyTempTextBox.Text == "" || preparedByOutputTextBox.Text == "" || examinedByOutputTextBox.Text == "")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["CONSULTATIONHEADERFILE"].NewRow();
                        thisRow["CONHNO"] = ConsultationNumberTextBox.Text;
                        thisRow["CONHIMMREF"] = immuNumberTextBox.Text;
                        thisRow["CONHDATE"] = DateTextBox.Text;
                        thisRow["CONHPATCODE"] = PatientCodeTextBox.Text;
                        thisRow["CONHPATHEIGHT"] = int.Parse(HeightTextBox.Text);
                        thisRow["CONHPATWEIGHT"] = int.Parse(WeightTextBox.Text);
                        thisRow["CONHPATBODYTEMP"] = int.Parse(BodyTempTextBox.Text);
                        thisRow["CONHPREPBY"] = preparedByOutputTextBox.Text;
                        thisRow["CONHEXAMBY"] = examinedByOutputTextBox.Text;
                        // thisRow["CONHREFSLIPS"] = int.Parse(HeightTextBox.Text);
                        thisRow["CONHSTATUS"] = "Stable";
                        consultationdetailUpdate();
                        thisDataSet.Tables["CONSULTATIONHEADERFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "CONSULTATIONHEADERFILE");
                        Response.Write("<script> alert('Entries Successfully Recorded!');</script>");
                        clear();
                    }
                }
                else
                {
                    Response.Write("<script> alert('Immunization Number Already Exist!');</script>");
                }
            }
        }//end save Button
        protected void consultationdetailUpdate()
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            string SQL = "SELECT * FROM CONSULTATIONDETAILFILE";
            SqlDataAdapter thisAdapter = new SqlDataAdapter(SQL, connectionString);
            SqlCommandBuilder thisBuilder = new SqlCommandBuilder(thisAdapter);
            DataSet thisDataSet = new DataSet();
            thisAdapter.MissingSchemaAction = MissingSchemaAction.AddWithKey;
            thisAdapter.Fill(thisDataSet, "CONSULTATIONDETAILFILE");
            if (immuNumberTextBox.Text == "")
            {
                Response.Write("<script> alert('Error');</script>");
            }
            else
            {
                DataRow checkRow = thisDataSet.Tables["CONSULTATIONDETAILFILE"].Rows.Find(immuNumberTextBox.Text);
                if (checkRow == null)
                {
                    if (ConsultationNumberTextBox.Text == "" || immuNumberTextBox.Text == "" || DateTextBox.Text == "" || PatientCodeTextBox.Text == "" || HeightTextBox.Text == "" || WeightTextBox.Text == "" || BodyTempTextBox.Text == "" || preparedByOutputTextBox.Text == "" || examinedByOutputTextBox.Text == "")
                    {
                        Response.Write("<script> alert('Some fields are missing');</script>");
                    }
                    else
                    {
                        DataRow thisRow = thisDataSet.Tables["CONSULTATIONDETAILFILE"].NewRow();
                        thisRow["CONDNO"] = ConsultationNumberTextBox.Text;
                        thisRow["CONDDIAGCODE"] = DiagnosisCodeTextBox.Text;
                        thisRow["CONDNOTES"] = PhysicianTextBox.Text;
                        thisRow["CONDSTATUS"] = "Stable";
                        thisDataSet.Tables["CONSULTATIONDETAILFILE"].Rows.Add(thisRow);
                        thisAdapter.Update(thisDataSet, "CONSULTATIONDETAILFILE");
                        Response.Write("<script> alert('Entries Successfully Recorded!');</script>");
                    }
                }
                else
                {
                    Response.Write("<script> alert('Immunization Number Already Exist!');</script>");
                }
            }
        }
        protected void PatientCodeTextBox_TextChanged(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
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
        }

        protected void examinedByOutputTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ExaminedByTextBox_TextChanged(object sender, EventArgs e)
        {
            //SqlConnection thisConnection = new SqlConnection(connectionString);
            //thisConnection.Open();
            //SqlCommand thisCommand = thisConnection.CreateCommand();
            //thisCommand.CommandText = "Select * from EMPLOYEEFILE WHERE EMPCODE = " + ExaminedByTextBox.Text + "";
            //SqlDataReader thisReader = thisCommand.ExecuteReader();
            //while (thisReader.Read())
            //{
            //    if (PatientCodeTextBox.Text == "")
            //    {
            //        Response.Write("<script> alert('Input a valid Patient Code!');</script>");
            //        examinedByOutputTextBox.Text = "";
            //        ExaminedByTextBox.Text = "";
            //        thisConnection.Close();
            //        thisReader.Close();
            //        return;
            //    }
            //    else if (thisReader["EMPSTATUS"].ToString() == "IC")
            //    {
            //        Response.Write("<script> alert('Employee I.D not Inactive');</script>");
            //        examinedByOutputTextBox.Text = "";
            //        ExaminedByTextBox.Text = "";
            //        thisConnection.Close();
            //        thisReader.Close();
            //        return;
            //    }
            //    else if (thisReader["EMPPOSITION"].ToString() == "Guard")
            //    {
            //        Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
            //        examinedByOutputTextBox.Text = "";
            //        ExaminedByTextBox.Text = "";
            //        thisConnection.Close();
            //        thisReader.Close();
            //        return;
            //    }
            //    else if (thisReader["EMPPOSITION"].ToString() == "NURSE")
            //    {
            //        Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
            //        examinedByOutputTextBox.Text = "";
            //        ExaminedByTextBox.Text = "";
            //        thisConnection.Close();
            //        thisReader.Close();
            //        return;
            //    }
            //    else
            //    {
            //        examinedByOutputTextBox.Text = thisReader["EMPLNAME"].ToString() + "  " + thisReader["EMPFNAME"].ToString();
            //        thisConnection.Close();
            //        thisReader.Close();
            //        return;
            //    }
            //}
        }
        protected void TextBox15_TextChanged(object sender, EventArgs e)
        {
            ////SqlConnection thisConnection = new SqlConnection(connectionString);
            ////thisConnection.Open();
            ////SqlCommand thisCommand = thisConnection.CreateCommand();
            ////thisCommand.CommandText = "Select * from EMPLOYEEFILE WHERE EMPCODE = " + preparedByTextBox.Text + "";
            ////SqlDataReader thisReader = thisCommand.ExecuteReader();
            ////while (thisReader.Read())
            ////{
            ////    if (ConsultationNumberTextBox.Text == "")
            ////    {
            ////        Response.Write("<script> alert('Input a valid Consultation Number');</script>");
            ////        preparedByOutputTextBox.Text = "";
            ////        preparedByTextBox.Text = "";
            ////        thisConnection.Close();
            ////        thisReader.Close();
            ////        return;
            ////    }
            ////    else if (PatientCodeTextBox.Text == "")
            ////    {
            ////        Response.Write("<script> alert('Input a valid patient code!');</script>");
            ////        preparedByOutputTextBox.Text = "";
            ////        preparedByTextBox.Text = "";
            ////        thisConnection.Close();
            ////        thisReader.Close();
            ////        return;
            ////    }
            ////    else if (thisReader["EMPSTATUS"].ToString() == "IC")
            ////    {
            ////        Response.Write("<script> alert('Employee I.D not Inactive');</script>");
            ////        preparedByOutputTextBox.Text = "";
            ////        preparedByTextBox.Text = "";
            ////        thisConnection.Close();
            ////        thisReader.Close();
            ////        return;
            ////    }
            ////    else if (thisReader["EMPPOSITION"].ToString() == "Guard")
            ////    {
            ////        Response.Write("<script> alert('Employee I.D not Authorized!');</script>");
            ////        preparedByOutputTextBox.Text = "";
            ////        preparedByTextBox.Text = "";
            ////        thisConnection.Close();
            ////        thisReader.Close();
            ////        return;
            ////    }
            ////    else
            ////    {
            ////        preparedByOutputTextBox.Text = thisReader["EMPLNAME"].ToString() + "  " + thisReader["EMPFNAME"].ToString();
            ////        thisConnection.Close();
            ////        thisReader.Close();
            ////        return;
            ////    }
            ////}
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
            BodyTempTextBox.Text = "";
            PhysicianTextBox.Text = "";
            DiagnosisCodeTextBox.Text = "";
            preparedByTextBox.Text = "";
            preparedByOutputTextBox.Text = "";
            examinedByOutputTextBox.Text = "";
            ExaminedByTextBox.Text = "";
        }

        protected void immuNumberTextBox_TextChanged(object sender, EventArgs e)
        {
            SqlConnection thisConnection = new SqlConnection(connectionString);
            thisConnection.Open();
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "Select * from IMMUNIZATIONHEADERFILE WHERE IMMHIMMUNO = " + immuNumberTextBox.Text + "";
            SqlDataReader thisReader = thisCommand.ExecuteReader();
            while (thisReader.Read())
            {
                if (immuNumberTextBox.Text == "")
                {
                    Response.Write("<script> alert('Input a valid Immunization Code!');</script>");
                    immuNumberTextBox.Text = "";
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
                else
                {
                    immuNumberTextBox.Text = thisReader["IMMHIMMUNO"].ToString();
                    PatientCodeTextBox.Text = thisReader["IMMHPATCODE"].ToString();
                    DateTextBox.Text = thisReader["IMMHDATE"].ToString();   
                    HeightTextBox.Text = thisReader["IMMHPATHEIGHT"].ToString();
                    WeightTextBox.Text = thisReader["IMMHPATWEIGHT"].ToString();
                    preparedByOutputTextBox.Text = thisReader["IMMHPREPBY"].ToString();
                    examinedByOutputTextBox.Text = thisReader["IMMHIMMUBY"].ToString();
                    Patientfile();
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }
        protected void Patientfile()
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
                    thisConnection.Close();
                    thisReader.Close();
                    return;
                }
            }
        }

        protected void TelephoneTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void QuantityTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void WeightTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}