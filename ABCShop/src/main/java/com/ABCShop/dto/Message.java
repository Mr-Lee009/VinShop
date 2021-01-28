package com.ABCShop.dto;

import com.ABCShop.entities.PaginationResult;

public class Message<E> {
	public String errorCode;
	public String description;
	public PaginationResult<E> list;
	public E result;
	
	public E getResult() {
		return result;
	}
	public void setResult(E result) {
		this.result = result;
	}
	public Message() {

	}
	public String getErrorCode() {
		return errorCode;
	}

	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public PaginationResult<E> getList() {
		return list;
	}

	public void setList(PaginationResult<E> list) {
		this.list = list;
	}

}
