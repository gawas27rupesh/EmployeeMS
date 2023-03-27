package EmpMSA.mainController;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyExceptionHandler
{
	@ExceptionHandler(Exception.class)
	private String exceptionh(Model m)
	{
		m.addAttribute("msg","Exception");
		System.out.println("Exception");
		return "";		
	}
}
