package com.poscoict.emaillist.dao.test;

import java.util.List;

import com.poscoict.emaillist.dao.EmaillistDao;
import com.poscoict.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {

	public static void main(String[] args) {
//		testInsert();
		testFindAll();
	}

	private static void testInsert() {
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("백");
		vo.setLastName("성문");
		vo.setEmail("bsm2716@gmail.com");

		boolean result = new EmaillistDao().insert(vo);
		System.out.println(result ? "success" : "fail");
	}

	private static void testFindAll() {
		List<EmaillistVo> list = new EmaillistDao().findAll();
		for (EmaillistVo vo : list) {
			System.out.println(vo);
		}
	}
}