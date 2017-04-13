package net.ma.ri.user;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.ma.ri.commons.UserValidation;
import net.ma.ri.user.dao.UserService;
import net.ma.ri.user.vo.UserVo;

@Controller
@RequestMapping(value="/user/")
public class UserAction {
	
	static final Logger LOG = LoggerFactory.getLogger(UserAction.class);
	
	@Resource
	private UserService userService;
	@Autowired
	private UserValidation userValidation;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet() throws Exception {
		LOG.debug("로그인 폼");
		return "user.login";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPost(Model model, UserVo vo, HttpSession session) throws Exception{
		LOG.debug("로그인 처리");
		/**
		 * [LOGIC]
		 * 1. 로그인 정보중 암호와 이메일을 받는다.
		 * 2. 해당 아이디가 유효한지 확인 한다. 
		 * 3. DB에서 해당 아이디가 있는지 찾는다.
		 * 4. 있다면 세션에 저장 후 OK사인을 보낸다.
		 * 5. 없으면 FAIL 사인을 보낸다.
		 */
		LOG.debug("vo : " + vo.toString());
		
		UserVo loginUser = userService.loginCheck(vo);
		if(loginUser != null) {
			LOG.debug("로그인 완료");
			session.setAttribute("userVo", loginUser);
			return "redirect:/main/main/";
		}else{
			LOG.debug("로그인 실패");
			model.addAttribute("message", "회원이 없거나, 비밀번호가 맞지 않습니다.");
			return "user.login";
		}
	}
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String joinGet(){
		LOG.debug("회원가입 폼");
		
		return "user.join";
	}
	@RequestMapping(value="join", method=RequestMethod.POST)
	public String joinPost(Model model, UserVo vo) throws Exception{
		LOG.debug("회원 처리");
		/**
		 * [LOGIC]
		 * 1. 회원 가입 정보내역을 입력 받아 유효성 검사한다.
		 * 			1) 이메일은 유효한지 
		 * 			2) 암호는 적정선인지
		 * 			3) 닉네임에 특수문자가 섞여있는지?
		 * 2. 해당 회원이 있는지 
		 */
		LOG.debug("vo : "+vo.toString());
		if(!userValidation.emailCheck(vo.getEmail())){	//이메일 유효성 검사 검증 과정 fail
			LOG.debug("이메일 유효성 검사 Fail");
			model.addAttribute("error","email");
			model.addAttribute("message","이메일 형식이 아닙니다.");
			model.addAttribute("vo", vo);
			return "user.join";
		}else if(!userValidation.pwCheck(vo.getPass())){
			LOG.debug("패스워드 유효성 검사 Fail");
			model.addAttribute("error","pw");
			model.addAttribute("message","비밀번호는 6~20자 입니다.");
			model.addAttribute("vo", vo);
			return "user.join";
		}else if(!userValidation.idCheck(vo.getId())){
			LOG.debug("아이디 유효성 검사 Fail");
			model.addAttribute("error","id");
			model.addAttribute("message","닉네임은 4자 이상 10자 이하이며 특수문자를 쓸 수 없습니다.");
			model.addAttribute("vo", vo);
			return "user.join";
		}else if(userService.isEmailCheck(vo.getEmail().trim())){
			LOG.debug("이메일 중복 검사 Fail");
			model.addAttribute("error","email");
			model.addAttribute("message","이 이메일은 사용중입니다.");
			model.addAttribute("vo", vo);
			return "user.join";
		}else if(userService.isIdCheck(vo.getId())){
			LOG.debug("아이디 중복 검사 Fail");
			model.addAttribute("error","id");
			model.addAttribute("message","이 아이디는 사용중입니다.");
			model.addAttribute("vo", vo);
			return "user.join";
		}
		userService.addUser(vo);
		LOG.debug("회원가입 완료!");
		return "redirect:/user/joinok";
	}
	@RequestMapping(value = "logout", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/main/main/";
	}
	@RequestMapping(value="joinok")
	public String joinok() {
		return "redirect:/main/main/";
	}
	
	
}
