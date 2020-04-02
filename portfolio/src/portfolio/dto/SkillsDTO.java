package portfolio.dto;

public class SkillsDTO {

	private int id;
	private String logoFilePath;
	private String logoFileName;
	private String language;
	private String studyHours;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogoFilePath() {
		return logoFilePath;
	}

	public void setLogoFilePath(String logoFilePath) {
		this.logoFilePath = logoFilePath;
	}

	public String getLogoFileName() {
		return logoFileName;
	}

	public void setLogoFileName(String logoFileName) {
		this.logoFileName = logoFileName;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getStudyHours() {
		return studyHours;
	}

	public void setStudyHours(String studyHours) {
		this.studyHours = studyHours;
	}

}
