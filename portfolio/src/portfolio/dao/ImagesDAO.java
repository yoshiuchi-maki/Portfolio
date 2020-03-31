package portfolio.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import portfolio.util.DBConnector;
import portfolioDTO.ImagesDTO;

public class ImagesDAO {

	public List<ImagesDTO> imagesList(int worksId) {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		List<ImagesDTO> imagesList = new ArrayList<ImagesDTO>();

		String sql = "SELECT images.picture_file_path, images.picture_file_name, function.function_name "
				+ "FROM images "
				+ "LEFT JOIN function "
				+ "ON images.function_id = function.id "
				+ "WHERE works_id = ?";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, worksId);
			ResultSet rs = ps.executeQuery();

			while(rs.next()) {
				ImagesDTO dto = new ImagesDTO();
				dto.setPictureFilePath(rs.getString("picture_file_path"));
				dto.setPictureFileName(rs.getString("picture_file_name"));
				dto.setFunctionName(rs.getString("function_name"));
				imagesList.add(dto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return imagesList;
	}

	public void insertNewImages(int functionId, String pictureFilePath, String pictureFileName) {

		DBConnector db = new DBConnector();
		Connection con = db.getConnection();

		String sql = "INSERT INTO images (function_id, picture_file_path, picture_file_name) VALUES (?,?,?)";

		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, functionId);
			ps.setString(2, pictureFilePath);
			ps.setString(3, pictureFileName);
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