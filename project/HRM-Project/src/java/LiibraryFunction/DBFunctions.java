/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LiibraryFunction;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author minusbug
 */
public class DBFunctions {
    
    public ResultSet SelectQuery(String sql ){
        ResultSet rs = null;
        try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement st=con.createStatement();
        rs=st.executeQuery(sql);
            System.err.println("Sql:"+sql);
        }catch(Exception ex){
            
        }
        return  rs;
    }
    
    public int InsetQuery(String sql)throws SQLException {
        int returnInt = 0;
        try{
             Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection) DriverManager.getConnection(  
            "jdbc:mysql://localhost:3306/hrm", "root", "");
        Statement st=con.createStatement();
        returnInt=st.executeUpdate(sql);
         System.err.println("Sql:"+sql);
        }catch(Exception ex){
            System.out.print(ex.getMessage());
             System.err.println("Erro:"+ex.getMessage());
        }
       return returnInt;
        
    }
}
