package com.example.CaseStudy.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.CaseStudy.Model.Ticket;
import com.example.CaseStudy.Service.TicketService;

@RestController
public class TeamMemberController {
	@Autowired
	public TicketService ticketService;

	@RequestMapping(value = "/getAll/{teamMemberId}")
	public ModelAndView ReadAll(@PathVariable("teamMemberId") String teamMemberId) {
		List<Ticket> tickets = ticketService.findByAssignedUserId(teamMemberId);
		ModelAndView map1 = new ModelAndView("teamMemberViewingTickets");
		map1.addObject("tickets", tickets);
		return map1;

	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updateTicket( @RequestParam("id") int id,@RequestParam("status") String status,
			@RequestParam("contactNo") String contactNo, @RequestParam("typeOfTicket") String typeOfTicket,
			@RequestParam("description") String description, @RequestParam("workLocation") String workLocation,
			@RequestParam("priority") String priority,@RequestParam("userId") String userId) {
		Ticket ticket=new Ticket();
		ticket.setId(id);
		ticket.setContactNo(contactNo);
		ticket.setDescription(description);
		ticket.setPriority(priority);
		ticket.setStatus(status);
		ticket.setTypeOfTicket(typeOfTicket);
		ticket.setWorkLocation(workLocation);
		ticket.setUserId(userId);
		ticket.setAssignedTo("Arunachalam");
		ticketService.update(ticket);
		List<Ticket> tickets = ticketService.findByAssignedUserId("Arunachalam");
		ModelAndView map1 = new ModelAndView("teamMemberViewingTickets");
		map1.addObject("tickets", tickets);
		return map1;
	}
	@RequestMapping(value="/create")
	public ModelAndView create(){
		ModelAndView map1 = new ModelAndView("NewComplaint");
		
		return map1;
	}

	@RequestMapping(value = "/viewTicket/{id}")
	public ModelAndView updateTicket(@PathVariable("id") int id) {
		Ticket ticket = ticketService.findById(id);
		ModelAndView map1 = new ModelAndView("teamMemberChangingStatus");
		map1.addObject("tickets", ticket);
		return map1;
	}


}
