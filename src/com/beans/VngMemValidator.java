package com.beans;
/*
 * Code By Javabeginnerstutorial.com
 */


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class VngMemValidator implements Validator{

	@Override
	public boolean supports(Class<?> arg0) {
		return VngMem.class.equals(arg0);
	}

	@Override
	public void validate(Object arg0, Errors errors) {
		VngMem vngmem = (VngMem) arg0;
		ValidationUtils.rejectIfEmpty(errors, "name", "Name can not be Empty");
		ValidationUtils.rejectIfEmpty(errors, "dob", "DOB can not be Empty");
		ValidationUtils.rejectIfEmpty(errors, "email", "Email can not be Empty");
		ValidationUtils.rejectIfEmpty(errors, "phone", "Phone can not be Empty");
	}
}
