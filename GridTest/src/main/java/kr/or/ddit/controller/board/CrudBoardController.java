package kr.or.ddit.controller.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.inject.Inject;

import org.springframework.aop.support.AopUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.service.IBoardService;
import kr.or.ddit.vo.Board;
import kr.or.ddit.vo.SearchVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/crud/board")
public class CrudBoardController {

	// 빈이 등록되고 초기화 단계에서 바로 확인할 때 사용
	@PostConstruct
	public void init() {
		log.info("aopProxy 상태(interface 기반) : {} " + AopUtils.isAopProxy(service));
		log.info("aopProxy 상태(class 기반) : {} " + AopUtils.isCglibProxy(service));
	}
	
	// IBoardService 구현체 객체를 사용하기 위한 의존성 주입
	@Inject
	private IBoardService service;
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String crudRegisterForm() {
		log.info("crudRegisterForm() 실행...!");
		return "crud/register";
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String crudRegister(@Validated Board board) {
		log.info("crudRegister() 실행...!");
		log.info("title : " + board.getTitle());
		// 1. 서비스로 등록 기능을 요청
		service.register(board);
		// 2. 등록완료 메세지를 완료 페이지로 전달 및 이동
		return "redirect:/crud/board/gridTest";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public String crudList(Model model) {
		log.info("crudList() 실행...!");
		List<Board> boardList = service.list();
		model.addAttribute("list", boardList);
		return "crud/gridTest";
	}
	
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public String crudRead(int boardNo, Model model) throws Exception {
		log.info("crudRead() 실행...!");
		Board board = service.read(boardNo);
		model.addAttribute("board", board);
		return "crud/read";
	}
	
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String crudModifyForm(int boardNo, Model model) throws Exception {
		log.info("crudModifyForm() 실행...!");
		Board board = service.read(boardNo);
		model.addAttribute("board", board);
		model.addAttribute("status", "u");
		return "crud/register";
	}
	
	@ResponseBody
	@RequestMapping(value="/remove", method = RequestMethod.POST, produces = "application/json; charset=utf-8" ,consumes = "application/json")
	public ResponseEntity<List<Board>> crudDelete(@RequestBody List<Board> boardList) throws Exception {
		log.info("crudDelete() 실행...!");
		int size = boardList.size();
		for(int i = 0; i < size; i++) {
			log.info("boarNo : " + boardList.get(i).getBoardNo());
		}
		for(int i = 0; i < size; i++) {
			service.delete(boardList.get(i).getBoardNo());
		}
		List<Board> respList = service.list();
		return new ResponseEntity<List<Board>>(respList, HttpStatus.OK);
	}
	
	@RequestMapping(value="/search", method = RequestMethod.POST)
	public String crudSearch(String title, Model model) {
		log.info("crudSearch() 실행...!");
		
		Board board = new Board();
		board.setTitle(title);
		
		List<Board> boardList = service.search(board);
		
		model.addAttribute("list", boardList);
		model.addAttribute("board", board);
		return "crud/list";
	}
	

	@RequestMapping(value="/gridTest", method = RequestMethod.GET)
	public String gridTest() {
		log.info("noticeList() 실행...!");
		
		return "crud/gridTest";
	}

	@ResponseBody
	@RequestMapping(value = "/getPreBoardList", method = RequestMethod.GET)
	public ResponseEntity<List<Board>> boardPost(Map<String, Object> map) throws Exception {
		log.info("boardPost() 실행...!");
		
		List<Board> boardList = service.list();
		
		return new ResponseEntity<List<Board>>(boardList,HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping(value="/modify", method = RequestMethod.POST, produces = "application/json; charset=utf-8" ,consumes = "application/json")
	public ResponseEntity<List<Board>> crudModify(@RequestBody Board board) {
		log.info("crudModify() 실행...!");
		log.info("board : " + board);
		service.modify(board);
		List<Board> boardList = service.list();
		return new ResponseEntity<List<Board>>(boardList,HttpStatus.OK);
	}
	
	@ResponseBody
	@RequestMapping(value="/searchBoard", method = RequestMethod.POST, consumes = "application/json")
	public ResponseEntity<List<Board>> searchBoard(@RequestBody Map<String, String> map){
		String searchType = map.get("searchType");
		String searchWord = map.get("searchWord");
		log.info("searchType : " + searchType);
		log.info("searchWord : " + searchWord);
		
		Board board = new Board();
		board.setTitle(searchType);
		board.setContent(searchWord);
		List<Board> boardList = service.search(board);
				
		return new ResponseEntity<List<Board>>(boardList, HttpStatus.OK);
		
	}
}
