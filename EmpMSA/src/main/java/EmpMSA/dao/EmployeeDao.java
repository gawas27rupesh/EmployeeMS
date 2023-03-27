package EmpMSA.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;


import EmpMSA.emp.Employee;

@Component
public class EmployeeDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	//create
	@Transactional
	public void createEmployee(Employee employee)
	{
		this.hibernateTemplate.saveOrUpdate(employee);
	}
	
	//get all emp
	public List<Employee> getEmployees() 
	{
		List<Employee> employees = this.hibernateTemplate.loadAll(Employee.class);
		return employees;		
	}
	
	//delete emp
	@Transactional
	public void deleteEmployee(int id)
	{
		Employee e = this.hibernateTemplate.load(Employee.class, id);
		this.hibernateTemplate.delete(e);
	}
	
	//get the single emp
	public Employee getEmployee(int id) 
	{
		Employee e= this.hibernateTemplate.get(Employee.class, id);	
		return e;
	}

	
	
	
	
	
	
	
	
	
	
//	@Transactional
//	public List<Employee> getEmployeen(String ename)
//	{
//		Session session=sessionFactory.openSession();
//		Criteria criteria=session.createCriteria(Employee.class);
//		criteria.add(Restrictions.eq("name", ename));
//		List<Employee> employee=criteria.list();
//		session.close();
//		return employee;		
//	}

}
