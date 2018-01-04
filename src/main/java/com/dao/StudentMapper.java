package com.dao;
import java.util.List;
import com.entity.Student;

public interface StudentMapper {
	/**
	 * 查询全部对象
	 */
	public List<Student> getAll();
	

}
