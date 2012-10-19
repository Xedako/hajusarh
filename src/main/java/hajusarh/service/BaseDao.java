package hajusarh.service;

import org.hibernate.Session;

public interface BaseDao {
	Session getCurrentSession();
}
