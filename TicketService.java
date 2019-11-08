package com.example.CaseStudy.Service;

import java.util.List;

import com.example.CaseStudy.Model.Ticket;

public interface TicketService {
	public List<Ticket> findByAssignedUserId(String id);
	public Ticket findById(int id);
/*	public void updateTicket(int id, String status);*/
	public Ticket update(Ticket ticket);
}
