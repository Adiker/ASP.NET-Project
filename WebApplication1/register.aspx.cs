using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString))
            {
                connection.Open();

                // Sprawdź, czy użytkownik o podanej nazwie istnieje w bazie
                string checkUserQuery = "SELECT COUNT(*) FROM Users WHERE Username = @Username";
                SqlCommand checkUserCmd = new SqlCommand(checkUserQuery, connection);
                checkUserCmd.Parameters.AddWithValue("@Username", username);
                int existingUsers = (int)checkUserCmd.ExecuteScalar();

                if (existingUsers > 0)
                {
                    lblError.Text = "Użytkownik o podanej nazwie już istnieje. Wybierz inną nazwę.";
                }
                else if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
                {
                    lblError.Text = "Proszę wypełnić wszystkie pola.";
                }
                else if (password.Length < 4)
                {
                    lblError.Text = "Proszę podać hasło o co najmniej 4 znakach.";
                }
                else
                {
                    lblError.Text = "";
                    string insertUserQuery = "INSERT INTO Users (Username, Password) VALUES (@Username, @Password)";
                    SqlCommand insertUserCmd = new SqlCommand(insertUserQuery, connection);
                    insertUserCmd.Parameters.AddWithValue("@Username", username);
                    insertUserCmd.Parameters.AddWithValue("@Password", password);
                    insertUserCmd.ExecuteNonQuery();

                    lblSuccess.Text = "Rejestracja udana. Możesz się teraz zalogować.";
                }
            }
        }




        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}