package net.ma.ri.project;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value="/project/")
public class ProjectAction {
	static final Logger LOG = LoggerFactory.getLogger(ProjectAction.class);
	@RequestMapping(value="bbs")
	public String bbs(){
		LOG.debug("프로젝트 게시판!!");
		return "project.bbs";
	}
	
	
}
