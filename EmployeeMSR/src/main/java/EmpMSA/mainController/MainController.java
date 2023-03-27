package EmpMSA.mainController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;


import EmpMSA.dao.EmployeeDao;
import EmpMSA.emp.Employee;

//3. controller handle the request
//4. works with data
//5. then send response back to the front Controller. and this response consist model and view
@Controller
public class MainController 
{
	@Autowired
	private EmployeeDao employeeDao;
	
	
	@RequestMapping("/")
	public String home(Model m) 
	{
		List<Employee> employees = employeeDao.getEmployees();
		m.addAttribute("emps",employees);
		return "index";	
	}
	@RequestMapping("/addemployee")
	public String addemp(Model m) 
	{
		return "addemp";		
	}
	@RequestMapping("/handleemployee")
	public RedirectView handleEmployee(@ModelAttribute Employee employee,HttpServletRequest request)
	{
		employeeDao.createEmployee(employee);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView ;	
	}
	//used to developed web application.
	//provides methods for accessing parameters of a request.
	//used to represent the request made by a client to a web server.
	
	@RequestMapping("/delete/{empId}")
	public RedirectView deleteEmp(@PathVariable("empId") int empId,HttpServletRequest request) 
	{
		this.employeeDao.deleteEmployee(empId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;	
	}
	
	@RequestMapping("/update/{empId}")
	public String updateForm(@PathVariable("empId") int empId,Model m) 
	{
		Employee employee = this.employeeDao.getEmployee(empId);
		m.addAttribute(employee);
		return "updateemp";		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@RequestMapping("/final")
//	public String finaldet(@RequestParam("id") int id,Model m)
//	{
//		Employee employee=employeeDao.getEmployee(id);
//		if(employee==null)
//		{
//			m.addAttribute("msg","Invalid ID...!");
//			return "empdet";
//		}
//		m.addAttribute("employee",employee);
//		return "final";	
//	}
	
}
