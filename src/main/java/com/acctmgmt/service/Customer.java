package com.acctmgmt.service;


import java.util.List;

import com.acctmgmt.dto.BankAccountOutputDto;

import com.acctmgmt.dto.BankTransactionsOutputDto;
import com.acctmgmt.dto.UsersOutputDto;
import com.acctmgmt.dto.CardDetailsOutputDto;


public interface Customer {
	
	
	public BankAccountOutputDto getBalance(int i);


	public String login(String usrName, String pwd);


	public UsersOutputDto register(String firstname, String lastname, String middlename, String email, String phone);


	public BankAccountOutputDto createNewAccount(String account, String amount, int parseInt);


	public BankTransactionsOutputDto createTrans(Long acctNumber, String transType, Double amount);

	public List<BankTransactionsOutputDto> getminiStatement(Long acctNumber);

	public List<BankTransactionsOutputDto> getmonthlyStatement(Long acct, Integer month);


	public List<BankTransactionsOutputDto> getyearlyStatement(Long acct, Integer year);

	public CardDetailsOutputDto getCardDetails(Long cusId);



	

	
	

}
