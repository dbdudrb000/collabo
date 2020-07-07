package collabo.wato.springboot.web.WeDaily.vo;

public class WeDailyVO {
	
	// 회원관리
	private String userid = "";
	private String userpw = "";
	private String nickname = "";
	private String phone = "";
	private String use = "";
	private String createDt = "";
	private String updateDt = "";
	private int moveLike = 0;
	
	// 영화리스트 ( 번호 , 제목 , 개봉일 , 찜한 ID , 찜한 날짜 )
	private int move_num = 0; 
	private String moveTitle = ""; 
	private String moveOpen = ""; 
	private String likeID = ""; 
	private String likeCreateDt = "";
	
	// 영화순위
	private String rank  = ""; 	
	private String movieNm = ""; 
	private String openDt = ""; 
	private String audiCnt = "";
	private String audiAcc = "";
		
	// 영화검색 ( 2개의 API를 같이 쓸예정 )
	private String title = "";
	private String actor = "";
	private String image = "";
	private String move_state= "";
	private String move_genre= "";
	private String move_country= "";
	private String move_time= "";
	private String move_open= "";
	private String move_rating= "";
	private String move_code= "";
	private String move_link= "";
	
	public String getMove_state() {
		return move_state;
	}
	public void setMove_state(String move_state) {
		this.move_state = move_state;
	}
	public String getMove_genre() {
		return move_genre;
	}
	public void setMove_genre(String move_genre) {
		this.move_genre = move_genre;
	}
	public String getMove_country() {
		return move_country;
	}
	public void setMove_country(String move_country) {
		this.move_country = move_country;
	}
	public String getMove_time() {
		return move_time;
	}
	public void setMove_time(String move_time) {
		this.move_time = move_time;
	}
	public String getMove_open() {
		return move_open;
	}
	public void setMove_open(String move_open) {
		this.move_open = move_open;
	}
	public String getMove_rating() {
		return move_rating;
	}
	public void setMove_rating(String move_rating) {
		this.move_rating = move_rating;
	}
	public String getMove_code() {
		return move_code;
	}
	public void setMove_code(String move_code) {
		this.move_code = move_code;
	}
	public String getMove_link() {
		return move_link;
	}
	public void setMove_link(String move_rink) {
		this.move_link = move_link;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getCreateDt() {
		return createDt;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	public int getMoveLike() {
		return moveLike;
	}
	public void setMoveLike(int moveLike) {
		this.moveLike = moveLike;
	}
	
	public int getMove_num() {
		return move_num;
	}
	public void setMove_num(int move_num) {
		this.move_num = move_num;
	}
	public String getMoveTitle() {
		return moveTitle;
	}
	public void setMoveTitle(String moveTitle) {
		this.moveTitle = moveTitle;
	}
	public String getMoveOpen() {
		return moveOpen;
	}
	public void setMoveOpen(String moveOpen) {
		this.moveOpen = moveOpen;
	}
	public String getLikeID() {
		return likeID;
	}
	public void setLikeID(String likeID) {
		this.likeID = likeID;
	}
	public String getLikeCreateDt() {
		return likeCreateDt;
	}
	public void setLikeCreateDt(String likeCreateDt) {
		this.likeCreateDt = likeCreateDt;
	}
	
	public String getAudiCnt() {
		return audiCnt;
	}
	public void setAudiCnt(String audiCnt) {
		this.audiCnt = audiCnt;
	}
	public String getAudiAcc() {
		return audiAcc;
	}
	public void setAudiAcc(String audiAcc) {
		this.audiAcc = audiAcc;
	}	
	
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getMovieNm() {
		return movieNm;
	}
	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}
	public String getOpenDt() {
		return openDt;
	}
	public void setOpenDt(String openDt) {
		this.openDt = openDt;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	

}
