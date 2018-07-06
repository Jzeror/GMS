package dao;

import java.util.List;

import domain.MemberBean;


public class MemberDAOImpl implements MemberDAO{
	private static MemberDAO instance = new MemberDAOImpl();
	public static MemberDAO getInstance() {
		return instance;
	}
	private MemberDAOImpl() {}
	
	
	@Override
	public void insertName(String name) {
		System.out.println(name);
		
	}

	@Override
	public List<MemberBean> selectList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<MemberBean> selectSomeList(String member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberBean selectOneList(String member) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countAccount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(MemberBean member) {
		// TODO Auto-generated method stub
		
	}

}
