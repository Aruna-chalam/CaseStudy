package com.example.CaseStudy.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.CaseStudy.Dao.TicketRepository;
import com.example.CaseStudy.Model.Ticket;


@Service
public class TicketServiceImpl implements TicketService {
	@Autowired
	private TicketRepository ticketRepository;


/*	@Transactional
	@Override
	public void updateTicket(int id,String status) {
		ticketRepository.updateStatusById(id, status);
		
	}*/
	@Transactional
	@Override
	public Ticket findById(int id) {
		
		return ticketRepository.findById(id);
	}
	@Transactional
	@Override
	public Ticket update(Ticket ticket) {
		return ticketRepository.save(ticket);
	}
	@Transactional
	@Override
	public List<Ticket> findByAssignedUserId(String id) {
		
		return ticketRepository.findByAssignedUserId(id);
	}


}
