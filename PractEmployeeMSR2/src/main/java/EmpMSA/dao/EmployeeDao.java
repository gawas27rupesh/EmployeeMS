package EmpMSA.dao;

import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import EmpMSA.emp.Employee;

@Component   //automatically detected and registered by the spring container
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
	public Employee getEmployee(int eid) 
	{
		System.out.println(eid);
		Employee e =this.hibernateTemplate.get(Employee.class, eid);	
		
			return e;	
	}
	@Transactional
	public List<Employee> getEmployeen(String ename)
	{
		Session session=sessionFactory.openSession();
		Criteria criteria=session.createCriteria(Employee.class);
		criteria.add(Restrictions.eq("name", ename));
		List<Employee> employee=criteria.list();
		session.close();
		return employee;		
	}

	
}
