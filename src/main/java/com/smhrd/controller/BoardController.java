package com.smhrd.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.entity.Board;
import com.smhrd.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@PostMapping("/boardUpdate.do")
	public String boardUpdate(Board vo) {
		service.boardUpdate(vo);
		return "redirect:/boardList.do";
	}
	
	
	@GetMapping("/boardUpdateForm.do")
	public String boardUpdateForm(Long idx, Model model) {
		Board vo = service.boardContents(idx);
		model.addAttribute("vo", vo);
		return "boardUpdateForm";
	}
	
	@GetMapping("/boardDelete.do")
	public String boardDelete(Long idx) {
		service.boardDelete(idx);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardContents.do")
	public String boardContents(Long idx, Model model) {
		service.boardCount(idx);
		Board vo = service.boardContents(idx);
		model.addAttribute("vo", vo);
		return "boardContents";
	}
	
	@PostMapping("/boardInsert.do")
	public String boardInsert(Board vo) {
		service.boardInsert(vo);
		return "redirect:/boardList.do";
	}
	
	@GetMapping("/boardInsertForm.do")
	public String boardInsertForm() {
		return "boardInsertForm";
	}
	
	@GetMapping("/boardList.do")
	public String boardList(Model model) {
		ArrayList<Board> list = service.boardList();
		model.addAttribute("list", list);
		return "boardList";
	}

}







