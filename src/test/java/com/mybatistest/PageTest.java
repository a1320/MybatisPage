package com.mybatistest;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.dao.StudentMapper;
import com.entity.Student;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

public class PageTest {
	
	public SqlSessionFactory getSqlSessionFactory() throws IOException {
		String resource = "mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		return new SqlSessionFactoryBuilder().build(inputStream);
	}
	
	/**
	 * 分页查询
	 */
	@Test
	public void test() throws IOException {

		// 1、获取sqlSessionFactory对象
		SqlSessionFactory sqlSessionFactory = getSqlSessionFactory();
		// 2、获取sqlSession对象
		SqlSession openSession = sqlSessionFactory.openSession();
		try {
			// 3、获取接口的实现类对象
			// 会为接口自动的创建一个代理对象，代理对象去执行增删改查方法
			StudentMapper mapper = openSession.getMapper(StudentMapper.class);
			
			//增加分页代码
			int yeshu=1;//当前页数
			int tiaoshu=5;//显示条数
			//调用 方法进行分页
			PageHelper.startPage(yeshu,tiaoshu);			
			
			//查询User表的集合对象
			List<Student> students = mapper.getAll();
			
			//使用PageInfo对象可以得到分页的各项属性
			PageInfo<Student> info = new PageInfo<>(students);						
				
			System.out.println("当前页码："+info.getPageNum());
			System.out.println("总记录数："+info.getTotal());
			System.out.println("每页的记录数："+info.getPageSize());
			System.out.println("总页码："+info.getPages());
			System.out.println("是否第一页："+info.isIsFirstPage());			
			System.out.println("是否有下一页："+info.isHasNextPage());
			System.out.println("是否有上一页："+info.isHasPreviousPage());		
			System.out.println("是否最后一页："+info.isIsLastPage());
			//遍历集合对象
			System.out.println();
			for (Student stu : students) {
				System.out.println("学号："+stu.getStudentNo()+"\t姓名："+stu.getStudentName());										
			}	

		} finally {
			openSession.close();
		}

	}


}
