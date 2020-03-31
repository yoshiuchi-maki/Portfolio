package portfolio.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import portfolio.util.DBConnector;
import portfolioDTO.SkillsDTO;

public class SkillsDAO {

	public List<SkillsDTO> skillsList() {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		List<SkillsDTO> skillsList = new ArrayList<SkillsDTO>();

		String sql = "SELECT * FROM skills";

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				SkillsDTO dto = new SkillsDTO();
				dto.setId(rs.getInt("id"));
				dto.setLogoFilePath(rs.getString("logo_file_path"));
				dto.setLogoFileName(rs.getString("logo_file_name"));
				dto.setLanguage(rs.getString("language"));
				dto.setStudyHours(rs.getString("study_hours"));
				skillsList.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return skillsList;
	}

}
