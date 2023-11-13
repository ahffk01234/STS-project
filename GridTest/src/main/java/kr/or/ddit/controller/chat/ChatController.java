package kr.or.ddit.controller.chat;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.mapper.ChatMapper;
import kr.or.ddit.vo.ChatVO;

@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@Inject
	private ChatMapper chatMapper;  
	
	@RequestMapping(value = "/chat.do", method = { RequestMethod.GET })
	public String chat(HttpServletRequest req, HttpServletResponse resp, HttpSession session) {
		return "chat";
	}
	
	@ResponseBody
	@RequestMapping(value = "/data.do", method = RequestMethod.POST)
	public void data(@RequestBody Map<String, String> map) {
		ChatVO chatVO = new ChatVO();
		chatVO.setChatWriter(map.get("chatWriter"));
		chatVO.setChatContent(map.get("chatContent"));
		chatMapper.data(chatVO);
	}
}