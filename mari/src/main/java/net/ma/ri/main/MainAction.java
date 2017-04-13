package net.ma.ri.main;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/main/")
public class MainAction {
	static final Logger LOG = LoggerFactory.getLogger(MainAction.class);
	
	@RequestMapping(value="main")
	public String main(Model model) throws Exception {
		LOG.debug("메인화면 입니다.");
		
		model.addAttribute("message", "성공? 실패? 일단 보여줘");
		return "main.main";
	}
}
