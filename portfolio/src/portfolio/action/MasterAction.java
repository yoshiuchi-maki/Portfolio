package portfolio.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import portfolio.dao.SkillsDAO;
import portfolio.dao.WorksDAO;
import portfolioDTO.SkillsDTO;

public class MasterAction extends ActionSupport {

	private List<SkillsDTO> skillsList;
	private int transitionFlg;
	private int skillsId;
	private String productionName;
	private String productionHours;
	private String thumbnailsFileName;
	private String functionName;
	private String pictureFileName;

	public String execute() {

		String ret = "master";

		if(transitionFlg == 5) {
			SkillsDAO skillsDAO = new SkillsDAO();
			skillsList = skillsDAO.skillsList();
			ret = "master";
		}

		if(transitionFlg == 6) {
			ret = "details";
		}

		if(transitionFlg == 7) {
			ret = "confirm";
		}

		if(transitionFlg == 8) {
			String imagesFilePath = "./images";
			WorksDAO worksDAO = new WorksDAO();
			worksDAO.insertNewWorks(skillsId, productionName, productionHours, imagesFilePath, thumbnailsFileName);
			ret = "complete";
		}

		return ret;
	}

	public List<SkillsDTO> getSkillsList() {
		return skillsList;
	}

	public int getTransitionFlg() {
		return transitionFlg;
	}

	public void setTransitionFlg(int transitionFlg) {
		this.transitionFlg = transitionFlg;
	}

	public int getSkillsId() {
		return skillsId;
	}

	public void setSkillsId(int skillsId) {
		this.skillsId = skillsId;
	}

	public String getProductionName() {
		return productionName;
	}

	public void setProductionName(String productionName) {
		this.productionName = productionName;
	}

	public String getProductionHours() {
		return productionHours;
	}

	public void setProductionHours(String productionHours) {
		this.productionHours = productionHours;
	}

	public String getThumbnailsFileName() {
		return thumbnailsFileName;
	}

	public void setThumbnailsFileName(String thumbnailsFileName) {
		this.thumbnailsFileName = thumbnailsFileName;
	}

	public String getFunctionName() {
		return functionName;
	}

	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}

	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

}
