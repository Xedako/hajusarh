/**
 * @author Maksim Pristsepov
 */

package hajusarh.service;

import hajusarh.data.CommDevice;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * 
 * @author Maksim Pristsepov
 * 
 */
@Repository
public class CommDeviceServiceImpl extends BaseDaoImpl implements
		CommDeviceService {

	@Transactional
	@SuppressWarnings("unchecked")
	public List<CommDevice> findAllCommDevices() {
		return getCurrentSession().createQuery("from CommDevice").list();
	}

	@Transactional
	public CommDevice getCommDevice(Long commDeviceId) {
		return (CommDevice) getCurrentSession().get(CommDevice.class,
				commDeviceId.intValue());
	}

	@Transactional
	public void updateCommDevice(CommDevice commDevice) {
		getCurrentSession().update(commDevice);
	}

	@Transactional
	public void removeCommDevice(Long commDeviceId) {
		CommDevice commDevice = getCommDevice(commDeviceId);
		if (commDevice != null)
			getCurrentSession().delete(commDevice);
	}

	@Transactional
	public void addCommDevice(CommDevice commDevice) {
		commDevice.setCreated(new Date());
		getCurrentSession().save(commDevice);
	}
}
