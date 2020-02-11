/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author joaom
 */
import java.sql.*;

public class BancoDeDados {

    private String bancoURL = "jdbc:mysql://localhost:3306/";
    private String config = "?useSSL=false&useTimezone=true&serverTimezone=UTC";
    private String schema;
    private String user;
    private String pass;
    private Connection myDB;
    private Statement myStmt;

    public BancoDeDados(String schema, String user, String pass) {
        this.schema = schema;
        this.user = user;
        this.pass = pass;
        this.connect();
        this.statement();
    }

    private void connect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            myDB = DriverManager.getConnection(this.bancoURL + this.schema + this.config, this.user, this.pass);
            System.out.println("Conex�o ao Banco de Dados estabelecida com sucesso!");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void statement() {
        try {
            myStmt = myDB.createStatement();
            System.out.println("Queries prontas!");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            myDB.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ResultSet query(String sql) {
        ResultSet myRs = null;
        try {
            myRs = myStmt.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return myRs;
    }

    public int update(String table, String set, String where) {
        int rows = 0;
        try {
            rows = myStmt.executeUpdate("update " + table + " " + "set " + set + " " + "where " + where);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows;
    }

    public int insert(String table, String columns, String values) {
        int rows = 0;
        try {
            rows = myStmt.executeUpdate(
                    "insert into " + table + " " + "(" + columns + ") " + "values " + "(" + values + ")");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows;
    }

    public int delete(String table, String where) {
        int rows = 0;
        try {
            rows = myStmt.executeUpdate("delete from " + table + " where " + where);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rows;
    }
}
