using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DB
/// </summary>
public class DB
{
    private SqlConnection Con = new SqlConnection();

    private void openDataBase() {
        try {
            Con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            Con.Open();
        }
        catch (Exception ex){}
    }

    private void closeDatabase() {
        Con.Close();
    }

    public DataTable getData(string sql) {
        DataTable dt = new DataTable();
        try {
            using (Con) {
                openDataBase();
                using (SqlDataAdapter da = new SqlDataAdapter(sql, Con)) {
                    da.Fill(dt);
                }
                closeDatabase();
            }
        }
        catch (Exception ex){}

        return dt;
    }

    public string getValue(string sql) {
        string value = null;
        try {
            using (SqlCommand cmd = new SqlCommand(sql, Con)) {
                openDataBase();
                using (var reader = cmd.ExecuteReader()) {
                    while (reader.Read()) {
                        if (reader[0] != DBNull.Value)
                            value = reader[0].ToString();
                    }
                }
                closeDatabase();
            }
        }
        catch (Exception ex){}
        return value;
    }

    public int exCommand(string sql)
    {
        int value = 0;
        try {
            using (var cmd = new SqlCommand(sql, Con)) {
                openDataBase();
                value = cmd.ExecuteNonQuery();
                closeDatabase();
            }
        }
        catch (Exception ex) {
            value = -1;
        }
        return value;
    }


	public DB(){}
}