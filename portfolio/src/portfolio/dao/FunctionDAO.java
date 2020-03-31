package portfolio.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import portfolio.util.DBConnector;
import portfolioDTO.FunctionDTO;

public class FunctionDAO {

	public FunctionDTO getMaxFunctionId() {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		FunctionDTO functionDTO = new FunctionDTO();

		String sql = "SELECT MAX(id) FROM function";

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			if(rs.next()) {
				functionDTO.setId(rs.getInt("id"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return functionDTO;

	}
}
