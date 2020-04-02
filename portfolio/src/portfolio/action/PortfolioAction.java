package portfolio.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import portfolio.dao.ImagesDAO;
import portfolio.dao.SkillsDAO;
import portfolio.dao.WorksDAO;
import portfolio.dto.ImagesDTO;
import portfolio.dto.SkillsDTO;
import portfolio.dto.WorksDTO;

public class PortfolioAction extends ActionSupport {

	private List<SkillsDTO> skillsList;
	private List<WorksDTO> worksList;
	private List<ImagesDTO> contactFormImagesList;
	private List<ImagesDTO> keijibanImagesList;
	private List<ImagesDTO> mypageImagesList;
	private List<ImagesDTO> ecsiteImagesList;
	private List<ImagesDTO> teamEcsiteImagesList;
	private int transitionFlg;
	private int skillsTransitionFlg;

	public String execute() {

		String ret = "home";

		if(transitionFlg == 0) {
			SkillsDAO skillsDAO = new SkillsDAO();
			skillsList = skillsDAO.skillsList();

			WorksDAO worksDAO = new WorksDAO();
			worksList = worksDAO.worksList();

			ret = "home";
		}

		if(transitionFlg == 1 || skillsTransitionFlg == 1) {
			ret = "html";
		}

		if(transitionFlg == 2 || skillsTransitionFlg == 3) {
			ImagesDAO imagesDAO = new ImagesDAO();
			contactFormImagesList = imagesDAO.imagesList(2);
			keijibanImagesList = imagesDAO.imagesList(3);
			mypageImagesList = imagesDAO.imagesList(4);
			ret = "php";
		}

		if(transitionFlg == 3 || skillsTransitionFlg == 4) {
			ImagesDAO imagesDAO = new ImagesDAO();
			ecsiteImagesList = imagesDAO.imagesList(5);
			teamEcsiteImagesList = imagesDAO.imagesList(6);
			ret = "java";
		}

		if(transitionFlg == 4) {
			ret = "about";
		}

		return ret;
	}

	public List<SkillsDTO> getSkillsList() {
		return skillsList;
	}

	public List<WorksDTO> getWorksList() {
		return worksList;
	}

	public List<ImagesDTO> getContactFormImagesList() {
		return contactFormImagesList;
	}

	public List<ImagesDTO> getKeijibanImagesList() {
		return keijibanImagesList;
	}

	public List<ImagesDTO> getMypageImagesList() {
		return mypageImagesList;
	}

	public List<ImagesDTO> getEcsiteImagesList() {
		return ecsiteImagesList;
	}

	public List<ImagesDTO> getTeamEcsiteImagesList() {
		return teamEcsiteImagesList;
	}

	public int getTransitionFlg() {
		return transitionFlg;
	}

	public void setTransitionFlg(int transitionFlg) {
		this.transitionFlg = transitionFlg;
	}

	public int getSkillsTransitionFlg() {
		return skillsTransitionFlg;
	}

	public void setSkillsTransitionFlg(int skillsTransitionFlg) {
		this.skillsTransitionFlg = skillsTransitionFlg;
	}

}
