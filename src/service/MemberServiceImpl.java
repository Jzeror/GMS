package service;

import java.util.List;

import dao.MemberDAOImpl;
import domain.MemberBean;

public class MemberServiceImpl implements MemberService{
	private static MemberService instance = new MemberServiceImpl();
	public static MemberService getInstance() {
		return instance;
	}
	private MemberServiceImpl() {}
	@Override
	public void createName(String input) {
		MemberDAOImpl.getInstance().insertName(input);
	}
	@Override
	public List<MemberBean> showAllList() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<MemberBean> showSomeList(String word) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public MemberBean showOneList(String word) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int showCountList() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void modifyMember(String member) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void removeMember(String member) {
		// TODO Auto-generated method stub
		
	}
}
