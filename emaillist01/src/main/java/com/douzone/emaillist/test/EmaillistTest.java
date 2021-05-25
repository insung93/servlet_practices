package com.douzone.emaillist.test;

import java.util.List;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistTest {

	public static void main(String[] args) {
		// insertEmail();
		findAllTest();
	}

	private static void findAllTest() {
		List<EmaillistVo> list = new EmaillistDao().findAll();;
		for( EmaillistVo vo :list) {
			System.out.println(vo);
		}
	}

	private static void insertEmail() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("a");
		vo.setLastName("bc");
		vo.setEmail("abc@gmail.com");
		new EmaillistDao().insert(vo);
	}
	

}
