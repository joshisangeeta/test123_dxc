import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import com.emp.Employee;
	
public class UpdateEmployee
{
	public static void main(String[] args)
	{
		Session session = null;
		SessionFactory factory;
		try
		{
			factory=new Configuration().configure().buildSessionFactory();
			session=factory.openSession();
			Transaction tr=session.beginTransaction();

			int id=Integer.parseInt(args[0]);
			int sl=Integer.parseInt(args[2]);

			Employee emp=(Employee)session.load(Employee.class,new Integer(id));
			emp.setName(args[1]);
			emp.setSal(sl);

			session.update(emp);			
			tr.commit();
			System.out.println("Record Updated");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			session.flush();
			session.close();
		}
	}
}