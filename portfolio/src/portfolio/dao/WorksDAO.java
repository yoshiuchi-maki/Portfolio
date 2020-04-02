package portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import portfolio.dto.WorksDTO;
import portfolio.util.DBConnector;

public class WorksDAO {

	public List<WorksDTO> worksList() {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		List<WorksDTO> worksList = new ArrayList<WorksDTO>();

		String sql = "SELECT works.skills_id, works.production_name, works.production_hours, works.thumbnail_file_path, works.thumbnail_file_name, skills.language "
				+ "FROM works "
				+ "LEFT JOIN skills "
				+ "ON works.skills_id = skills.id";

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while(rs.next()) {
				WorksDTO dto = new WorksDTO();
				dto.setSkillsId(rs.getInt("skills_id"));
				dto.setProductionName(rs.getString("production_name"));
				dto.setProductionHours(rs.getString("production_hours"));
				dto.setThumbnailFilePath(rs.getString("thumbnail_file_path"));
				dto.setThumbnailFileName(rs.getString("thumbnail_file_name"));
				dto.setLanguage(rs.getString("language"));
				worksList.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return worksList;
	}

	public void insertNewWorks(int skillsId, String productionName, String productionHours, String thumbnailsFilePath, String thumbnailsFileName) {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "INSERT INTO works(skills_id, production_name, production_hours, thumbnail_file_path, thumbnail_file_name) VALUES (?,?,?,?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, skillsId);
			ps.setString(2, productionName);
			ps.setString(3, productionHours);
			ps.setString(4, thumbnailsFilePath);
			ps.setString(5, thumbnailsFileName);
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
