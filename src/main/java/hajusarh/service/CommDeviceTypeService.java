package hajusarh.service;

import hajusarh.data.CommDeviceType;

import java.util.List;

public interface CommDeviceTypeService extends BaseDao {

	List<CommDeviceType> findAllCommDeviceTypes();

	CommDeviceType getCommDeviceType(Long ommDeviceTypeId);

	void updateCommDeviceType(CommDeviceType ommDeviceType);

	void removeCommDeviceType(Long ommDeviceTypeId);

	void addCommDeviceType(CommDeviceType ommDeviceType);
}
