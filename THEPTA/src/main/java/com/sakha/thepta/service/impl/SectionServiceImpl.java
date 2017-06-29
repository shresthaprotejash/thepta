package com.sakha.thepta.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sakha.thepta.dao.SectionDao;
import com.sakha.thepta.model.SectionModel;
import com.sakha.thepta.service.SectionService;

@Service
public class SectionServiceImpl implements SectionService{
	
	@Autowired
	private SectionDao sectionDao;

	@Override
	@Transactional
	public SectionModel getSectionBysectionIdandSectionName(int sectionId, int sectionName) {
		// TODO Auto-generated method stub
		return null;
	}

}
