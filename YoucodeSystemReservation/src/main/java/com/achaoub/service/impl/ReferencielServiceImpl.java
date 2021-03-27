package com.achaoub.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.achaoub.dao.ReferencielDAO;
import com.achaoub.model.Referenciel;
import com.achaoub.service.ReferencielService;


@Service("serviceReferenciel")
public class ReferencielServiceImpl implements ReferencielService {
	
	@Autowired
	private ReferencielDAO referencielDAO;

	public ReferencielDAO getReferencielDAO() {
		return referencielDAO;
	}

	public void setReferencielDAO(ReferencielDAO referencielDAO) {
		this.referencielDAO = referencielDAO;
	}

	@Override
	public boolean saveReferenciel(Referenciel ref) {
		boolean isRegister=false;
		boolean saveStudent = getReferencielDAO().saveReferenciel(ref);
		if(saveStudent)
			isRegister=true;
		return isRegister;
	}

	@Override
	public ArrayList<Referenciel> getAllReferenciel() {
		// TODO Auto-generated method stub
		return getReferencielDAO().getAllReferenciel();
	}

	@Override
	public Referenciel getReferencielByID(int id) {
		// TODO Auto-generated method stub
		return getReferencielDAO().getReferencielByID(id);
	}
	
	
	
	

}
