package net.ma.ri.commons.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class AuthAspect {
	
	static final Logger LOG = LoggerFactory.getLogger(AuthAspect.class);
	
	@Resource
	AuthManager authManager;
	
	@Pointcut("@annotation(net.ma.ri.commons.login.LoginCheck)")
	public void pointcut(){}
	
	@Around("excution(public String net.ma.ri.*.*(..))")
	public Object aroundTargetMethod(ProceedingJoinPoint joinPoint, LoginCheck loginCheck) throws Throwable{
		
		LOG.debug("Before : ");
		LOG.debug("annotation 확인! : "+loginCheck.user());
		HttpServletRequest request = null;
		Object[] ob = joinPoint.getArgs();
		if(ob[0] instanceof HttpServletRequest){
			request = (HttpServletRequest) ob[0];
		}
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("userVo") == null){
			return "redirect:/member/login";
		}
		
		
		Object retVal = joinPoint.proceed();
		LOG.debug("After : ");
		return retVal;
	}
	
}
