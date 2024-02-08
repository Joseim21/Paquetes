package com.paquetes.Paquetes.Services;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

public class Conexion {

    public Connection openDb() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=semestral_paquetes;encrypt=true;trustServerCertificate=true;", "admin", "admin1234");
        } catch (SQLException e) {
            int x=1;
           
        } catch (ClassNotFoundException cnfex) {
            int x=1;
           
        }
        return null;
    }
    
}
