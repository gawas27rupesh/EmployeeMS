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
		return "addemp";		
	}
	@RequestMapping("/handleemployee")
	public RedirectView handleEmployee(@ModelAttribute Employee employee,HttpServletRequest request,Model m)
	{
		System.out.println(employee.getName());
		List<Employee> emp=employeeDao.getEmployeen(employee.getName());
		if(emp.size()>0)
		{
			throw new MyException();
		}
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
	
	@RequestMapping("/empdet")
	public String empdet() 
	{
		return "empdet";		
	}
	
	@RequestMapping("/seedetails")
	public String seedetails(@RequestParam("eid") int eid,Model m) 
	{
		System.out.println(eid);
		Employee employee=this.employeeDao.getEmployee(eid);
		System.out.println(employee);
		if(employee==null)
		{
			m.addAttribute("msg","Invalid EMPID...!");
			return "empdet";	
		}
		m.addAttribute(employee);
		return "seedetails";	
	}
	@RequestMapping("/seedetail")
	public String seedetail(@RequestParam("name") String ename,Model m) 
	{
		System.out.println(ename);
		List<Employee> employee=employeeDao.getEmployeen(ename);
		System.out.println(employee);
		if(employee.isEmpty())
		{
			m.addAttribute("msg","Invalid EMPNAME...!");
			return "empdet";	
		}
		m.addAttribute("employee",employee);
		return "seedetail";	
	}
	
	@ExceptionHandler(Exception.class)
	public String excep(Model m) 
	{
		System.out.println(3333);
		m.addAttribute("msg","Employee already added...!");
		return "addemp";	
	}
}
