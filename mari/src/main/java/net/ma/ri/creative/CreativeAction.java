package net.ma.ri.creative;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/creative/")
public class CreativeAction {
	
	@RequestMapping(value="we", method=RequestMethod.GET)
	public String we() {
		
		return "creative.we";
	}
	

}
