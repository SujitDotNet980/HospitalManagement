using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagement
{
    public partial class Design : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            quary = "Insert into HospitalManage(Patientid,PatientName,Age,Gender,Disease,Department,DoctorName,AttendentName)" + "Values(@Patientid,@PatientName,@Age,@Gender,@Disease,@Department,@DoctorName,@AttendentName)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(quary, conn);

                cmd.Parameters.AddWithValue("@PatientName", Name.Text);
                cmd.Parameters.AddWithValue("@Age", Age.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("Diesese", Dises.Text);
                cmd.Parameters.AddWithValue("Department", Dept.Text);
                cmd.Parameters.AddWithValue("DoctorName", DoctorName.SelectedValue);
                cmd.Parameters.AddWithValue("AttendentName", Attendent.Text);
                cmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                throw (ex);

            }
            finally
            {
                conn.Close();
            }

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[HospitalManage]
   SET[PatientName] = '" + Name.Text + "', [Age] = '" + Age.Text + "', [Gender] = '" + Gender.SelectedValue + "', [Department] = '" + Dept.Text
   + "',[DoctorName] = '" + DoctorName.SelectedValue + "' where [PatientName] = '" + Name.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


        }

       

        public void View_Click(object sender, EventArgs e)
        {
            view();

        }

        protected void Save_Click1(object sender, EventArgs e)
        {
            string quary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            quary = "Insert into HospitalManage(PatientName,Age,Gender,Disease,Department,DoctorName,AttendentName)" + "Values(@PatientName,@Age,@Gender,@Disease,@Department,@DoctorName,@AttendentName)";
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(quary, conn);

                cmd.Parameters.AddWithValue("@PatientName", Name.Text);
                cmd.Parameters.AddWithValue("@Age", Age.Text);
                cmd.Parameters.AddWithValue("@Gender", Gender.SelectedValue);
                cmd.Parameters.AddWithValue("Disease", Dises.Text);
                cmd.Parameters.AddWithValue("Department", Dept.Text);
                cmd.Parameters.AddWithValue("DoctorName", DoctorName.SelectedValue);
                cmd.Parameters.AddWithValue("AttendentName", Attendent.Text);
                cmd.ExecuteNonQuery();
                view();





            }
            catch (Exception ex)
            {
                throw (ex);

            }
            finally
            {
                conn.Close();
            }

        }

        public void view()
        {
            string stquary;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            stquary = "Select * from HospitalManage";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(stquary, conn);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            string stquar;
            SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["ConString"]);
            stquar = "delete from HospitalManage where PatientName=' " + Name.Text + " ' ";
            SqlCommand cmd = new SqlCommand(@"Delete from HospitalManage where PatientName='" + Name.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }
    }

}

