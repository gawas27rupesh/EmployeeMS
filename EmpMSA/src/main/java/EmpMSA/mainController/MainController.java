package EmpMSA.mainController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;


import EmpMSA.dao.EmployeeDao;
import EmpMSA.emp.Employee;

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
	public String addProduct(Model m) 
	{
		m.addAttribute("title","add employee");
		return "addemp";		
	}
	
	@RequestMapping("/showemp")
	public String showemp()
	{
		return "showemp";	
	}
	
	@RequestMapping("/showempdet")
	public String showempdet(@RequestParam("empId") int empId,Model m)
	{
		Employee employee = this.employeeDao.getEmployee(empId);
		if(employee==null)
		{
			return "showemp";
		}
		m.addAttribute("employee",employee);
		return "final";
	}
	@ExceptionHandler(Exception.class)
	public String exception(Model m) 
	{
		m.addAttribute("msg","Invalid Employee ID...!");
		return "showemp";	
	}
	
	@RequestMapping("/handleemployee")
	public RedirectView handleEmployee(@ModelAttribute Employee employee,HttpServletRequest request)
	{
		employeeDao.createEmployee(employee);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView ;	
	}
	
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
}
