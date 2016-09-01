package com.dao;

/*
 * Code By Javabeginnerstutorial.com
 */

import com.beans.VngMem;

public interface SpringJdbcDao {

	void insertMemDts(VngMem contact);

	VngMem searchMemDts(VngMem vngmem);

}
