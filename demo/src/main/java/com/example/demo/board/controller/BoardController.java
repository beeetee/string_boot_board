package com.example.demo.board.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.board.domain.BoardVO;
import com.example.demo.board.service.BoardService;

@Controller
public class BoardController {

	@Resource(name="com.example.demo.board.service.BoardService")
	BoardService mBoardService;
	
	@RequestMapping("/homepage")
	private String homePate() throws Exception{
		return "main";
	}
	
	@RequestMapping("/list")
	private String boardList(Model model) throws Exception{
		model.addAttribute("list",mBoardService.boardListService());
		return "list";
	}
	
	@RequestMapping("/detail/{bno}")
	private String boardDetail(@PathVariable int bno, Model model) throws Exception{
		model.addAttribute("detail", mBoardService.boardDetailService(bno));
		return "detail";		
	}
	
	@RequestMapping("/insert")
	private String boardInsertForm() {
		return "insert";
	}

	@RequestMapping("/insertProc")
    private String boardInsertProc(HttpServletRequest request) throws Exception{
        
        BoardVO board = new BoardVO();
        
        board.setSubject(request.getParameter("subject"));
        board.setContent(request.getParameter("content"));
        board.setWriter(request.getParameter("writer"));
        
        mBoardService.boardInsertService(board);
        
        return "redirect:/list";
    }
	
    @RequestMapping("/update/{bno}") //게시글 수정폼 호출  
    private String boardUpdateForm(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", mBoardService.boardDetailService(bno));
        
        return "update";
    }
    
    @RequestMapping("/updateProc")
    private int boardUpdateProc(HttpServletRequest request) throws Exception{
        
        BoardVO board = (BoardVO) request.getParameterMap();
        
        return mBoardService.boardUpdateService(board);
    }
 
    @RequestMapping("/delete/{bno}")
    private String boardDelete(@PathVariable int bno) throws Exception{
        
        mBoardService.boardDeleteService(bno);
        
        return "redirect:/list";
    }
}
