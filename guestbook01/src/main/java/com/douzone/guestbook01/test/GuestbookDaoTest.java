package com.douzone.guestbook01.test;

import java.util.ArrayList;
import java.util.List;

import com.douzone.guestbook01.dao.GuestbookDao;
import com.douzone.guestbook01.vo.GuestbookVo;

public class GuestbookDaoTest {

	public static void main(String[] args) {
		//insert();
		findAll();
		update();
		findAll();
		//delete();
	}
	
	private static void update() {
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(14L);
		vo.setPassword("1234");
		vo.setMessage("aaaaaaaaaaaaaaaaaaaaaaaaaa");
		new GuestbookDao().update(vo);
		
	}

	private static void delete() {
		GuestbookVo vo = new GuestbookVo();
		vo.setNo(1L);
		vo.setPassword("1234");
		new GuestbookDao().delete(vo);
		
	}

	private static void findAll() {
		List<GuestbookVo> list = new GuestbookDao().findAll();
		for(GuestbookVo vo : list) {
			System.out.println(vo);
		}
			
		/*
		for(int i = 0;i < list.size(); i++) {
			System.out.println(list);
		}
		*/
	}

	private static void insert() {
		GuestbookVo vo = new GuestbookVo();
		vo.setName("abc");
		vo.setPassword("1234");
		vo.setMessage("ㅎㅇㅇㅇㅇ!!!!asadadaa");
		new GuestbookDao().insert(vo);
		
	}

}
