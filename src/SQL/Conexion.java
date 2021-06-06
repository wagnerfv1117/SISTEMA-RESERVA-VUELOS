/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author WAGNER FERNÁNDEZ
 */
public class Conexion {

    //datos de la conexion
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String user = "root";
    private static final String pass = "root123";
    private static final String database = "cessna208";
    private static String url;
    private static Connection conexion;

    public Conexion() {
        url = "jdbc:mysql://localhost/"+database+"?useTimezone=true&serverTimezone=UTC";
        conexion = null;
        try {
            try {
            Class.forName("com.mysql.cj.jdbc.Driver");
                
            } catch (ClassNotFoundException e) {
                JOptionPane.showMessageDialog(null, "error en driver " + e);
            }
            conexion = DriverManager.getConnection(url, user, pass);
            JOptionPane.showMessageDialog(null, "Conectado");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "error " + e);
            System.out.println(e);
        }

    }
     public Connection getConexion() {
        return conexion;
    }

    public void Desconectar() {
        conexion = null;
    }
}
