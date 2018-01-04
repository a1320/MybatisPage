package com.mybatistest;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.entity.Student;
import com.service.student.StudentService;


public class SpringMybatisTest {
	/**
	 * 测试使用事务
	 */
	@Test
	public void testSpring() {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext2.xml");
		//providerService是业务类供应商接口
		StudentService studentService = (StudentService) ctx.getBean("StudentService");
		List<Student> studentList = new ArrayList<>();
		studentList = studentService.getAll();
		
		System.out.println();
		for (Student stu : studentList) {
			System.out.println("姓名： "+stu.getStudentName());
		}
	}

}
