package kr.co.coco.admin.model.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coco.admin.common.paging.AdminPageInfo;
import kr.co.coco.admin.model.dao.AdminDAO;
import kr.co.coco.admin.model.dto.AdminBoardDTO;
import kr.co.coco.board.model.dto.DeclarationDTO;
import kr.co.coco.board.model.dto.InfoDTO;
import kr.co.coco.colabo.model.dto.ColaboDTO;
import kr.co.coco.member.model.dto.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private AdminDAO adminDao;
//	-----------------------mainPage Summary------------------------------
	// visitCount
	@Override
	public int visitCount(){
		return adminDao.visitCount(sqlSession);
	}
	// freeCount
	@Override
	public int freeCount(){
		return adminDao.freeCount(sqlSession);
	}
	// infoCount
	@Override
	public int infoCount(){
		return adminDao.infoCount(sqlSession);
	}
	// projectCount
	@Override
	public int projectCount(){
		return adminDao.projectCount(sqlSession);
	}
	// boardCount
	@Override
	public int boardCount(){
		return adminDao.boardCount(sqlSession);
	}
	// deCount
	@Override
	public int deCount(){
		return adminDao.deCount(sqlSession);
	}
//	---------------------------------main page List--------------------------------------
	//visitList
	public List<MemberDTO> selectListToday(MemberDTO member, AdminPageInfo piVisit) {
		return adminDao.selectListToday(sqlSession,member,piVisit);
	}
	// visit Page List
	public List<MemberDTO> selectListAll(MemberDTO member, AdminPageInfo piVisit) {
		return adminDao.selectListAll(sqlSession,member,piVisit);
	}
	// visitList Paging
	public int selectVisitList(MemberDTO member) {
		return adminDao.selectVistList(sqlSession, member);
	}
	// visitList Paging All
	public int selectVisitListAll(MemberDTO member) {
		return adminDao.selectVistListAll(sqlSession, member);
	}
	
	// free List Count
	public int freeListCountToday() {
		return adminDao.freeListCountToday(sqlSession);
	}
	// info list count
	public int infoListCountToday() {
		return adminDao.infoListCountToday(sqlSession);
	}
	// free List
	public List<InfoDTO> freeListToday(InfoDTO info, AdminPageInfo pi){
		return adminDao.freeListToday(sqlSession, info, pi);
	}
	// info List
	public List<InfoDTO> infoListToday(InfoDTO info, AdminPageInfo pi){
		return adminDao.infoListToday(sqlSession, info, pi);
	}
	
//	-------------------------------member page----------------------------------------
	//memberList
	public List<MemberDTO> totalList(MemberDTO member, AdminPageInfo piMember){
		return adminDao.totalList(sqlSession, member,piMember);
	}
	// memberList Count
	public int memberListCount() {
		return adminDao.memberListCount(sqlSession);
	}
	//new User Day
	public List<MemberDTO> newUserList(MemberDTO member, AdminPageInfo piNew){
		return adminDao.newUserList(sqlSession, member, piNew);
	}
	//new User Day Count
	public int newMemberCount() {
		return adminDao.newMemberCount(sqlSession);
	}
	// delete member
	public List<MemberDTO> deleteList(MemberDTO member, AdminPageInfo piDelete){
		return adminDao.deleteList(sqlSession ,member, piDelete);
	}
	// delete member Count
	public int deleteCount() {
		return adminDao.deleteCount(sqlSession);
	}
	// search Member List Count
	public int memberSearchListCount(String searchInput) {
		return adminDao.memberSearchListCount(sqlSession, searchInput);
	}
	//memberList search
	public List<MemberDTO> searchList(MemberDTO member, AdminPageInfo piMember, String searchInput){
		return adminDao.searchList(sqlSession, member,piMember, searchInput);
	}
//	-----------------------------------------------------------------------
//	admin Visit Page
	public int dayVisit() {
		return adminDao.dayVisit(sqlSession);
	}
	public int weekVisit() {
		return adminDao.weekVisit(sqlSession);			
		}
	public int monthVisit() {
		return adminDao.monthVisit(sqlSession);		
	}
//	member Page
	public int newUserDay() {
		return adminDao.newUserDay(sqlSession);
	}
	public int newUserMonth() {
		return adminDao.newUserMonth(sqlSession);
	}
	public int newUserYear() {
		return adminDao.newUserYear(sqlSession);
	}
	public int newUserTotal() {
		return adminDao.newUserTotal(sqlSession);
	}
//	----------------------------------------------------
	//admin Member Delete
	public int deleteMember(int no) {
		return adminDao.deleteMember(sqlSession, no);
	}
	// admin member delete cancel
	public int deleteCancel(int no) {
		return adminDao.deleteCancel(sqlSession, no);
	}
//	// amdin search Member
//	public int searchMember(String searchMember) {
//		return adminDao.searchMember(sqlSession, searchMember);
//	}

// --------------------------Admin Board Page---------------------------
//	-------------------------Summay----------------------------
	public int infoTodayCount() {
		return adminDao.infoTodayCount(sqlSession);
	}
	public int infoCommentTodayCount() {
		return adminDao.infoCommentTodayCount(sqlSession);
	}
	public int freeTodayCount() {
		return adminDao.freeTodayCount(sqlSession);
	}
	public int freeCommentTodayCount() {
		return adminDao.freeCommentTodayCount(sqlSession);
	}
//	-------------------------List----------------------------
	// info
	public List<InfoDTO> infoList(InfoDTO info, AdminPageInfo pi){
		return adminDao.infoList(sqlSession, info, pi);
	}
	//info List Count
	public int infoListCount() {
		return adminDao.infoListCount(sqlSession);
	}
	// info Comment
	public List<InfoDTO> infoCommentList(InfoDTO info, AdminPageInfo pi){
		return adminDao.infoCommentList(sqlSession, info, pi);
	}
	//info Comment List Count
	public int infoCommentListCount() {
		return adminDao.infoCommentListCount(sqlSession);
	}
	// free
	public List<InfoDTO> freeList(InfoDTO info, AdminPageInfo pi){
		return adminDao.freeList(sqlSession, info, pi);
	}
	// free List Count
	public int freeListCount() {
		return adminDao.freeListCount(sqlSession);
	}
	// free Comment
	public List<InfoDTO> freeCommentList(InfoDTO info, AdminPageInfo pi){
		return adminDao.freeCommentList(sqlSession, info, pi);
	}
	// free Comment List Count
	public int freeCommentListCount() {
		return adminDao.freeCommentListCount(sqlSession);
	}
//	---------------------admin delete 기능-------------------
	public int deleteBoard(Map<String,Object>param){
		return adminDao.deleteBoard(sqlSession, param);
	}
// --------------------------Admin Project Page---------------------------
	// Summay Count
	public int newProject() {
		return adminDao.newProject(sqlSession);
	}
	public int startProject() {
		return adminDao.startProject(sqlSession);
	}
	public int endProject() {
		return adminDao.endProject(sqlSession);
	}
	// paging
	public int newProjectListCount() {
		return adminDao.newProjectListCount(sqlSession);
	}
	
	public int startProjectListCount() {
		return adminDao.startProjectListCount(sqlSession);
	}
	
	public int endProjectListCount() {
		return adminDao.endProjectListCount(sqlSession);
	}
	// List
	public List<ColaboDTO> newProjectList(ColaboDTO colabo, AdminPageInfo pi1){
		return adminDao.newProjectList(sqlSession, colabo, pi1);
	}
	public List<ColaboDTO> startProjectList(ColaboDTO colabo, AdminPageInfo pi1){
		return adminDao.startProjectList(sqlSession, colabo, pi1);
	}	
	public List<ColaboDTO> endProjectList(ColaboDTO colabo, AdminPageInfo pi1){
		return adminDao.endProjectList(sqlSession, colabo, pi1);
	}
	// project delete
	public int deleteProject(Map<String,Object> param) {
		return adminDao.deleteProject(sqlSession,param);
	}
	// --------------------------Admin AdminBoard Page---------------------------
	// Summary Count, List Count
		public int incomCount() {
			return adminDao.incomCount(sqlSession);
		}
		public int comCount() {
			return adminDao.comCount(sqlSession);
		}
		public int totalCount() {
			return adminDao.totalCount(sqlSession);
		}
	// List
		public List<AdminBoardDTO> incomList(AdminBoardDTO admin, AdminPageInfo pi){
			return adminDao.incomList(sqlSession,admin,pi);
		}
		public List<AdminBoardDTO> comList(AdminBoardDTO admin, AdminPageInfo pi){
			return adminDao.comList(sqlSession,admin,pi);
		}
		public List<AdminBoardDTO> AdminBoardTotalList(AdminBoardDTO admin, AdminPageInfo pi){
			return adminDao.AdminBoardTotalList(sqlSession,admin,pi);
		}
	// admin Board answer Enroll
		public int adminBoardEnroll(int no, String content) {
			return adminDao.adminBoardEnroll(sqlSession, no, content);
		}
	// admin Board answer Enroll
		public int adminBoardDelete(int no) {
			return adminDao.adminBoardDelete(sqlSession, no);
		}
	// admin board push witer 정보 가져오기
		public int adminBoardWriter(int boardNo) {
			return adminDao.adminBoardWriter(sqlSession, boardNo);
		}

	// --------------------------Admin Declaration Page---------------------------
		public int deTodayCount() {
			return adminDao.deTodayCount(sqlSession);
		}
		public int noneBlindCount() {
			return adminDao.noneBlindCount(sqlSession);
		}
		public int blindCount() {
			return adminDao.blindCount(sqlSession);
		}
		public int deTotalCount() {
			return adminDao.deTotalCount(sqlSession);
		}
		// boardListCount
		public List<DeclarationDTO> deTodayList(DeclarationDTO dec, AdminPageInfo pi){
			return adminDao.deTodayList(sqlSession, dec, pi);
		}
		public List<DeclarationDTO> noneBlindList(DeclarationDTO dec, AdminPageInfo pi){
			return adminDao.noneBlindList(sqlSession, dec, pi);
		}
		public List<DeclarationDTO> blindList(DeclarationDTO dec, AdminPageInfo pi){
			return adminDao.blindList(sqlSession, dec, pi);
		}
		public List<DeclarationDTO> deTotalList(DeclarationDTO dec, AdminPageInfo pi){
			return adminDao.deTotalList(sqlSession, dec, pi);
		}
		// blind 처리
		public int declarationBlind(int no) {
			return adminDao.declarationBlind(sqlSession, no);
		}
		public int declarationNoneBlind(int no) {
			return adminDao.declarationNoneBlind(sqlSession, no);
		}
}