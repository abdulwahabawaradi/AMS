package com.ams.daoimpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.AliasToBeanResultTransformer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ams.beans.MaintenanceListBean;
import com.ams.dao.ViewDao;
import com.ams.entities.Flat;

@Repository
public class ViewDaoImpl implements ViewDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<MaintenanceListBean> getMaintenanceList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		String sql = "SELECT owner_name,flat_number,maintenance_month_year,flat_area, maintenancea_amount, if(maintenance_Type = 'fixed',maintenancea_amount,(flat_area*maintenancea_amount))  total_maintenance FROM  flats,maintenance;";
		Query query = session.createSQLQuery(sql).addScalar("owner_name").addScalar("flat_number").addScalar("maintenance_month_year").addScalar("flat_area")
				.addScalar("maintenancea_amount") .addScalar("total_maintenance")
				.setResultTransformer(new AliasToBeanResultTransformer(MaintenanceListBean.class));
		List<MaintenanceListBean> maintenanceListBeans = (List<MaintenanceListBean>) query.list();
		return maintenanceListBeans;
	}

}
