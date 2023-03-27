package EmpMSA.mainController;

import org.springframework.web.bind.annotation.ControllerAdvice;

@ControllerAdvice
public class MyExceptionHandler extends RuntimeException
{
	public MyExceptionHandler()
	{
		
	}
}
