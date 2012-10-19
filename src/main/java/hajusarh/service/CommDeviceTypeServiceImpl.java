/**
 * @author Maksim Pristsepov
 */

package hajusarh.service;

import hajusarh.data.CommDeviceType;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author Maksim Pristsepov
 * 
 */
@Repository
public class CommDeviceTypeServiceImpl extends BaseDaoImpl implements
		CommDeviceTypeService {

	@Transactional
	@SuppressWarnings("unchecked")
	public List<CommDeviceType> findAllCommDeviceTypes() {
		return getCurrentSession().createQuery("from CommDeviceType").list();
	}

	@Transactional
	public CommDeviceType getCommDeviceType(Long commDeviceTypeId) {
		return (CommDeviceType) getCurrentSession().get(CommDeviceType.class,
				commDeviceTypeId.intValue());
	}

	@Transactional
	public void updateCommDeviceType(CommDeviceType commDeviceType) {
		getCurrentSession().update(commDeviceType);
	}

	@Transactional
	public void removeCommDeviceType(Long commDeviceTypeId) {
		CommDeviceType commDeviceType = getCommDeviceType(commDeviceTypeId);
		if (commDeviceType != null)
			getCurrentSession().delete(commDeviceType);
	}

	@Transactional
	public void addCommDeviceType(CommDeviceType commDeviceType) {
		getCurrentSession().save(commDeviceType);
	}
}
