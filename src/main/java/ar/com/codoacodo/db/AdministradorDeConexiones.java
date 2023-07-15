package ar.com.codoacodo.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {

	public static Connection getConnection() {
		String hosts = "127.0.0.1";//localhost
		String port = "3306";
		String password = "Ulises.90";
		String username = "root";
		
		String driverClassName = "com.mysql.jdbc.Driver";
		
		String dbName = "codoacodo";
		
		Connection connection;
		try {
			Class.forName(driverClassName);
			
			String url = "jdbc:mysql://" + hosts + ":"+ port +"/"+ dbName +"?allowPublicKeyRetrieval=true&serverTimeZone=UTC&useSSL=false";
			
			connection = DriverManager.getConnection(url, username, password);
		}catch(Exception e) {
			connection = null;
		}
		
		return connection;
	}
}
