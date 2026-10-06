package com.smhrd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.smhrd.entity.Board;

import jakarta.transaction.Transactional;

@Repository
public interface BoardRepository extends JpaRepository<Board, Long>{

	@Transactional
	@Modifying
	@Query("UPDATE Board b SET b.count = b.count + 1 WHERE b.idx = :idx")
	void boardCount(Long idx);

}






