package portfolio.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import portfolio.dao.SkillsDAO;
import portfolio.dao.WorksDAO;
import portfolio.dto.SkillsDTO;

public class MasterAction extends ActionSupport implements SessionAware {

	private List<SkillsDTO> skillsList;
	private int transitionFlg;
	private String language;
	private String productionName;
	private String productionHours;
	private String thumbnailsFileName;
	private String functionName;
	private String pictureFileName;
	private Map<String, Object> session;

	public String execute() {

		String ret = "master";

		if(transitionFlg == 5) {
			SkillsDAO skillsDAO = new SkillsDAO();
			skillsList = skillsDAO.skillsList();
			ret = "master";
		}

		if(transitionFlg == 6) {
			if(language.equals("HTML/CSS")) {
				session.put("skillsId", 1);
			} else if(language.equals("JavaScript")) {
				session.put("skillsId", 2);
			} else if(language.equals("PHP")) {
				session.put("skillsId", 3);
			} else if(language.equals("Java")) {
				session.put("skillsId", 4);
			}

			session.put("language", language);
			session.put("productionName", productionName);
			session.put("productionHours", productionHours);
			session.put("thumbnailsFileName", thumbnailsFileName);
			ret = "details";
		}

		if(transitionFlg == 7) {
			session.put("functionName", functionName);
			session.put("pictureFileName", pictureFileName);
			ret = "confirm";
		}

		if(transitionFlg == 8) {
			String imagesFilePath = "./images";
			WorksDAO worksDAO = new WorksDAO();
			worksDAO.insertNewWorks(Integer.parseInt(session.get("skillsId").toString()),
					session.get("productionName").toString(),
					session.get("productionHours").toString(),
					imagesFilePath,
					session.get("thumbnailsFileName").toString());

			session.remove("skillsId");
			session.remove("language");
			session.remove("productionName");
			session.remove("productionHours");
			session.remove("thumbnailsFileName");
			session.remove("functionName");
			session.remove("pictureFileName");

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

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
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

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
