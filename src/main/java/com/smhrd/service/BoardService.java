package com.smhrd.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.entity.Board;
import com.smhrd.repository.BoardRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository repository;

	public ArrayList<Board> boardList() {
		return (ArrayList<Board>)repository.findAll();
	}

	public void boardInsert(Board vo) {
		repository.save(vo);
	}

	public Board boardContents(Long idx) {
		return repository.findById(idx).get();
	}

	public void boardDelete(Long idx) {
		repository.deleteById(idx);
	}

	public void boardUpdate(Board vo) {
		repository.save(vo);
	}

	public void boardCount(Long idx) {
		repository.boardCount(idx);
	}

}















