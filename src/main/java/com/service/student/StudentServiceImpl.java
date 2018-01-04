package com.service.student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.StudentMapper;
import com.entity.Student;

@Transactional
@Service("StudentService")
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentMapper studentMapper;

	@Override
	public List<Student> getAll() {
		try {
			return studentMapper.getAll();
		} catch (RuntimeException e) {
			e.printStackTrace();
			throw e;
		}
	}


}
