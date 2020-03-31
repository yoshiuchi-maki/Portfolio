package portfolioDTO;

public class WorksDTO {

	private int skillsId;
	private String productionName;
	private String productionHours;
	private String thumbnailFilePath;
	private String thumbnailFileName;
	private String language;

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

	public String getThumbnailFilePath() {
		return thumbnailFilePath;
	}

	public void setThumbnailFilePath(String thumbnailFilePath) {
		this.thumbnailFilePath = thumbnailFilePath;
	}

	public String getThumbnailFileName() {
		return thumbnailFileName;
	}

	public void setThumbnailFileName(String thumbnailFileName) {
		this.thumbnailFileName = thumbnailFileName;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}