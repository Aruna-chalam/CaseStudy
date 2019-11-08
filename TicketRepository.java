package com.example.CaseStudy.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.CaseStudy.Model.Ticket;
@Repository
public interface TicketRepository extends CrudRepository<Ticket, Integer>{
/*	
	@Modifying
	@Query(value = "update Ticket u set u.status = ?2 where u.id = ?1",nativeQuery = true)
	public void updateStatusById(Integer id,String status);*/
	@Query(value = "select * from Ticket where assigned_To =:id",nativeQuery = true)
	public List<Ticket> findByAssignedUserId(@Param("id") String id);
	public Ticket findById(int id);
}
