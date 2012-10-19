package hajusarh.service;

import hajusarh.data.CommDevice;

import java.util.List;

public interface CommDeviceService extends BaseDao {

	List<CommDevice> findAllCommDevices();

	CommDevice getCommDevice(Long commDeviceId);

	void updateCommDevice(CommDevice commDevice);

	void removeCommDevice(Long commDeviceId);

	void addCommDevice(CommDevice commDevice);
}
