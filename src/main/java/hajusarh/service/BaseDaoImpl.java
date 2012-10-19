/**
 * @author Maksim Pristsepov
 */

package hajusarh.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * The Class ChannelDAOImpl.
 */
@Repository
public class BaseDaoImpl implements BaseDao {

	/** The session factory. */
	@Autowired
	private SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
}
