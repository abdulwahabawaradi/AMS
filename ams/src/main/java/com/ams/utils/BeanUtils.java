package com.ams.utils;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.ams.beans.AdminBean;
import com.ams.beans.ComplainBean;
import com.ams.beans.DocumentBean;
import com.ams.beans.FlatBean;
import com.ams.beans.FundBean;
import com.ams.beans.GenericDropdownBean;
import com.ams.beans.MaintenanceBean;
import com.ams.beans.MaintenanceExpensesBean;
import com.ams.beans.ParkingBean;
import com.ams.beans.SocietyBean;
import com.ams.beans.UserBean;
import com.ams.beans.VisitorBean;
import com.ams.entities.Admin;
import com.ams.entities.Complain;
import com.ams.entities.Document;
import com.ams.entities.Flat;
import com.ams.entities.Fund;
import com.ams.entities.GenericDropdown;
import com.ams.entities.Maintenance;
import com.ams.entities.MaintenanceExpenses;
import com.ams.entities.Parking;
import com.ams.entities.Society;
import com.ams.entities.User;
import com.ams.entities.Visitor;

public class BeanUtils {

	/**
	 * Generic method for null value check
	 * 
	 * @param object
	 *            Object
	 * @return boolean
	 */
	private static boolean isNotNull(Object object) {
		if (object != null) {
			return true;
		}
		return false;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param documentBean
	 *            DocumentBean
	 * @return document Document
	 */
	public static Document populateDocument(DocumentBean documentBean) {

		if (isNotNull(documentBean)) {
			Document document = new Document();
			document.setDocumentId(documentBean.getDocumentId());
			document.setDocumentName(documentBean.getDocumentName());
			document.setDocumentPath(documentBean.getDocumentPath());
			document.setUserId(documentBean.getUserId());
			return document;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param documents
	 *            List<Document>
	 * @return documentBeans List<DocumentBean>
	 */
	public static List<DocumentBean> populateDocumentBeanList(List<Document> documents) {
		List<DocumentBean> documentBeans = new ArrayList<DocumentBean>();

		if (isNotNull(documents) && !documents.isEmpty()) {
			for (Document document : documents) {
				DocumentBean documentBean = new DocumentBean();
				documentBean.setDocumentId(document.getDocumentId());
				documentBean.setDocumentName(document.getDocumentName());
				documentBean.setDocumentPath(document.getDocumentPath());
				documentBean.setUserId(document.getUserId());
				documentBeans.add(documentBean);
			}
		}

		return documentBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param document
	 *            Document
	 * @return documentBean DocumentBean
	 */
	public static DocumentBean populateDocumentBean(Document document) {

		if (isNotNull(document)) {
			DocumentBean documentBean = new DocumentBean();
			documentBean.setDocumentId(document.getDocumentId());
			documentBean.setDocumentName(document.getDocumentName());
			documentBean.setDocumentPath(document.getDocumentPath());
			documentBean.setUserId(document.getUserId());
			return documentBean;
		}
		return null;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param flatBean
	 *            FlatBean
	 * @return flat Flat
	 */
	public static Flat populateFlat(FlatBean flatBean) {
		System.out.println("FLAT BEAN  :" + flatBean);

		if (isNotNull(flatBean)) {
			Flat flat = new Flat();
			flat.setElectricityMeter(flatBean.getElectricityMeter());
			flat.setFlatArea(flatBean.getFlatArea());
			flat.setFlatId(flatBean.getFlatId());
			flat.setFlatNumber(flatBean.getFlatNumber());
			flat.setFloorNumber(flatBean.getFloorNumber());
			flat.setFurnishedType(flatBean.getFurnishedType());
			flat.setGasMeter(flatBean.getGasMeter());
			flat.setParkingDetails(flatBean.getParkingDetails());
			flat.setWing(flatBean.getWing());
			flat.setOwnerName(flatBean.getOwnerName());
			System.out.println("FLAT :" + flat);
			return flat;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param flats
	 *            List<Flat>
	 * @return flatBeans List<FlatBean>
	 */
	public static List<FlatBean> populateFlatBeanList(List<Flat> flats) {
		List<FlatBean> flatBeans = new ArrayList<FlatBean>();

		if (isNotNull(flats) && !flats.isEmpty()) {
			for (Flat flat : flats) {
				FlatBean flatBean = new FlatBean();
				flatBean.setElectricityMeter(flat.getElectricityMeter());
				flatBean.setFlatArea(flat.getFlatArea());
				flatBean.setFlatId(flat.getFlatId());
				flatBean.setFlatNumber(flat.getFlatNumber());
				flatBean.setFloorNumber(flat.getFloorNumber());
				flatBean.setFurnishedType(flat.getFurnishedType());
				flatBean.setGasMeter(flat.getGasMeter());
				flatBean.setParkingDetails(flat.getParkingDetails());
				flatBean.setWing(flat.getWing());
				flatBean.setOwnerName(flat.getOwnerName());
				flatBeans.add(flatBean);

			}
		}

		return flatBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param flat
	 *            Flat
	 * @return flatBean FlatBean
	 */
	public static FlatBean populateFlatBean(Flat flat) {
		if (isNotNull(flat)) {
			FlatBean flatBean = new FlatBean();
			flatBean.setElectricityMeter(flat.getElectricityMeter());
			flatBean.setFlatArea(flat.getFlatArea());
			flatBean.setFlatId(flat.getFlatId());
			flatBean.setFlatNumber(flat.getFlatNumber());
			flatBean.setFloorNumber(flat.getFloorNumber());
			flatBean.setFurnishedType(flat.getFurnishedType());
			flatBean.setGasMeter(flat.getGasMeter());
			flatBean.setParkingDetails(flat.getParkingDetails());
			flatBean.setWing(flat.getWing());
			flatBean.setOwnerName(flat.getOwnerName());
			return flatBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param userBean
	 *            UserBean
	 * @return user User
	 */
	public static User populateUser(UserBean userBean) {
		System.out.println("User BEAN  :" + userBean);
		if (isNotNull(userBean)) {
			User user = new User();
			user.setUserId(userBean.getUserId() != null ? Long.valueOf(userBean.getUserId()) : null);
			user.setUserName(userBean.getUserName());
			user.setLastName(userBean.getLastName());
			user.setUserAddress(userBean.getUserAddress());
			user.setUserDateOfBirth(Date.valueOf(userBean.getUserDateOfBirth()));
			user.setUserEmail(userBean.getUserEmail());
			user.setPassword(userBean.getPassword());
			user.setUsercontact(userBean.getUsercontact());
			user.setUserSecondaryContact(userBean.getUserSecondaryContact());
			user.setUserAadharNumber(userBean.getUserAadharNumber());
			user.setUserPanCard(userBean.getUserPanCard());
			user.setUserRole(userBean.getUserRole());
			user.setUserRegistrationDate(Date.valueOf(userBean.getUserRegistrationDate()));
			user.setEndDate(Date.valueOf(userBean.getEndDate()));
			user.setCountry(userBean.getCountry());
			user.setState(userBean.getState());
			user.setCity(userBean.getCity());

			System.out.println("User :" + user);
			return user;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param users
	 *            List<User>
	 * @return userBeans List<UserBean>
	 */
	public static List<UserBean> populateUserBeanList(List<User> users) {
		List<UserBean> userBeans = new ArrayList<UserBean>();

		if (isNotNull(users) && !users.isEmpty()) {
			for (User user : users) {
				UserBean userBean = new UserBean();
				userBean.setUserId(user.getUserId());
				userBean.setUserName(user.getUserName());
				userBean.setLastName(user.getLastName());
				userBean.setUserAddress(user.getUserAddress());
				userBean.setUserDateOfBirth(
						user.getUserDateOfBirth() != null ? user.getUserDateOfBirth().toString() : null);
				userBean.setUserEmail(user.getUserEmail());
				userBean.setPassword(user.getPassword());
				userBean.setUsercontact(user.getUsercontact());
				userBean.setUserSecondaryContact(user.getUserSecondaryContact());
				userBean.setUserAadharNumber(user.getUserAadharNumber());
				userBean.setUserPanCard(user.getUserPanCard());
				userBean.setUserRole(user.getUserRole());
				userBean.setUserRegistrationDate(
						user.getUserRegistrationDate() != null ? user.getUserDateOfBirth().toString() : null);
				userBean.setEndDate(user.getEndDate() != null ? user.getEndDate().toString() : null);
				userBean.setCountry(user.getCountry());
				userBean.setState(user.getState());
				userBean.setCity(user.getCity());

				userBeans.add(userBean);
			}

		}

		return userBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param user
	 *            User
	 * @return userBean UserBean
	 */
	public static UserBean populateUserBean(User user) {

		if (isNotNull(user)) {
			UserBean userBean = new UserBean();
			userBean.setUserName(user.getUserName());
			userBean.setLastName(user.getLastName());
			userBean.setUserAddress(user.getUserAddress());
			userBean.setUserDateOfBirth(
					user.getUserDateOfBirth() != null ? user.getUserDateOfBirth().toString() : null);
			userBean.setUserEmail(user.getUserEmail());
			userBean.setPassword(user.getPassword());
			userBean.setUsercontact(user.getUsercontact());
			userBean.setUserSecondaryContact(user.getUserSecondaryContact());
			userBean.setUserAadharNumber(user.getUserAadharNumber());
			userBean.setUserPanCard(user.getUserPanCard());
			userBean.setUserRole(user.getUserRole());
			userBean.setUserRegistrationDate(
					user.getUserRegistrationDate() != null ? user.getUserDateOfBirth().toString() : null);
			userBean.setEndDate(user.getEndDate() != null ? user.getEndDate().toString() : null);
			userBean.setUserId(user.getUserId());
			userBean.setCountry(user.getCountry());
			userBean.setState(user.getState());
			userBean.setCity(user.getCity());
			return userBean;
		}
		return null;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param AdminBean
	 *            AdminBean
	 * @return Admin Admin
	 */
	public static Admin populateAdmin(AdminBean adminBean) {
		System.out.println("Admin BEAN  :" + adminBean);
		if (isNotNull(adminBean)) {
			Admin admin = new Admin();
			admin.setAdminId(adminBean.getAdminId() != null ? Long.valueOf(adminBean.getAdminId()) : null);
			admin.setFirstName(adminBean.getFirstName());
			admin.setLastName(adminBean.getLastName());
			admin.setEmail(adminBean.getEmail());
			admin.setPassword(adminBean.getPassword());
			admin.setCountry(adminBean.getCountry());
			admin.setState(adminBean.getState());
			admin.setCity(adminBean.getCity());
			admin.setAddress(adminBean.getAddress());
			admin.setDateOfBirth(Date.valueOf(adminBean.getDateOfBirth()));
			admin.setContact(adminBean.getContact());
			admin.setSecondaryContact(adminBean.getSecondaryContact());
			admin.setAadharNumber(adminBean.getAadharNumber());
			admin.setPanCard(adminBean.getPanCard());
			System.out.println("Admin :" + admin);
			return admin;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param Admins
	 *            List<Admin>
	 * @return AdminBeans List<AdminBean>
	 */
	public static List<AdminBean> populateAdminBeanList(List<Admin> admins) {
		List<AdminBean> adminBeans = new ArrayList<AdminBean>();

		if (isNotNull(admins) && !admins.isEmpty()) {
			for (Admin admin : admins) {
				AdminBean adminBean = new AdminBean();
				adminBean.setAdminId(admin.getAdminId());
				adminBean.setFirstName(admin.getFirstName());
				adminBean.setLastName(admin.getLastName());
				adminBean.setEmail(admin.getEmail());
				adminBean.setPassword(admin.getPassword());
				adminBean.setCountry(admin.getCountry());
				adminBean.setState(admin.getState());
				adminBean.setCity(admin.getCity());
				adminBean.setAddress(admin.getAddress());
				adminBean.setDateOfBirth(admin.getDateOfBirth() != null ? admin.getDateOfBirth().toString() : null);
				adminBean.setContact(admin.getContact());
				adminBean.setSecondaryContact(admin.getSecondaryContact());
				adminBean.setAadharNumber(admin.getAadharNumber());
				adminBean.setPanCard(admin.getPanCard());
				adminBeans.add(adminBean);
			}

		}

		return adminBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param Admin
	 *            Admin
	 * @return AdminBean AdminBean
	 */
	public static AdminBean populateAdminBean(Admin admin) {

		if (isNotNull(admin)) {
			AdminBean adminBean = new AdminBean();
			adminBean.setAdminId(admin.getAdminId());
			adminBean.setFirstName(admin.getFirstName());
			adminBean.setLastName(admin.getLastName());
			adminBean.setEmail(admin.getEmail());
			adminBean.setPassword(admin.getPassword());
			adminBean.setCountry(admin.getCountry());
			adminBean.setState(admin.getState());
			adminBean.setCity(admin.getCity());
			adminBean.setAddress(admin.getAddress());
			adminBean.setDateOfBirth(admin.getDateOfBirth() != null ? admin.getDateOfBirth().toString() : null);
			adminBean.setContact(admin.getContact());
			adminBean.setSecondaryContact(admin.getSecondaryContact());
			adminBean.setAadharNumber(admin.getAadharNumber());
			adminBean.setPanCard(admin.getPanCard());
			return adminBean;
		}
		return null;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param maintenanceBean
	 *            maintenanceBean
	 * @return maintenance
	 */
	public static Maintenance populateMaintenance(MaintenanceBean maintenanceBean) {
		System.out.println("MAINTENANCE BEAN  :" + maintenanceBean);

		if (isNotNull(maintenanceBean)) {
			Maintenance maintenance = new Maintenance();
			Flat flat = new Flat();
			maintenance.setMaintenanceId(maintenanceBean.getMaintenanceId() != null
					? Long.valueOf(maintenanceBean.getMaintenanceId()) : null);
			maintenance.setDateOfMaintenance(Date.valueOf(maintenanceBean.getDateOfMaintenance()));
			maintenance.setMonth(maintenanceBean.getMonth());
			maintenance.setMaintenanceType(maintenanceBean.getMaintenanceType());
			maintenance.setMaintenanceamount(maintenanceBean.getMaintenanceamount());
			maintenance.setDuedate(Date.valueOf(maintenanceBean.getDuedate()));
			maintenance.setMaintenancedetails(maintenanceBean.getMaintenancedetails());
			// flat.setMaintenanceId(maintenanceBean.getMaintenanceId() != null
			// ? Long.valueOf(maintenanceBean.getMaintenanceId()) : null);
			System.out.println("MAINTENANCE :" + maintenance);
			return maintenance;
		}
		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param maintenance
	 *            List<maintenance>
	 * @return maintenanceBean List<maintenanceBean>
	 */
	public static List<MaintenanceBean> populateMaintenanceBeanList(List<Maintenance> maintenances) {
		List<MaintenanceBean> maintenanceBeans = new ArrayList<MaintenanceBean>();

		if (isNotNull(maintenances) && !maintenances.isEmpty()) {
			for (Maintenance maintenance : maintenances) {
				MaintenanceBean maintenanceBean = new MaintenanceBean();
				maintenanceBean.setMaintenanceId(maintenance.getMaintenanceId());
				maintenanceBean.setDateOfMaintenance(maintenance.getDateOfMaintenance() != null
						? maintenance.getDateOfMaintenance().toString() : null);
				maintenanceBean.setMonth(maintenance.getMonth());
				maintenanceBean.setMaintenanceType(maintenance.getMaintenanceType());
				maintenanceBean.setMaintenanceamount(maintenance.getMaintenanceamount());
				maintenanceBean
						.setDuedate(maintenance.getDuedate() != null ? maintenance.getDuedate().toString() : null);
				maintenanceBean.setMaintenancedetails(maintenance.getMaintenancedetails());
				maintenanceBeans.add(maintenanceBean);
			}
		}

		return maintenanceBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param maintenance
	 * @return MaintenanceBean maintenanceBean
	 */
	public static MaintenanceBean populateMaintenanceBean(Maintenance maintenance) {
		if (isNotNull(maintenance)) {
			MaintenanceBean maintenanceBean = new MaintenanceBean();
			maintenanceBean.setMaintenanceId(maintenance.getMaintenanceId());
			maintenanceBean.setDateOfMaintenance(
					maintenance.getDateOfMaintenance() != null ? maintenance.getDateOfMaintenance().toString() : null);
			maintenanceBean.setMonth(maintenance.getMonth());
			maintenanceBean.setMaintenanceType(maintenance.getMaintenanceType());
			maintenanceBean.setMaintenanceamount(maintenance.getMaintenanceamount());
			maintenanceBean.setDuedate(maintenance.getDuedate() != null ? maintenance.getDuedate().toString() : null);
			maintenanceBean.setMaintenancedetails(maintenance.getMaintenancedetails());
			return maintenanceBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param MaintenanceExpensesBean
	 *            MaintenanceExpensesBean
	 * @return MaintenanceExpenses
	 */
	public static MaintenanceExpenses populateMaintenanceExpenses(MaintenanceExpensesBean maintenanceExpensesBean) {
		System.out.println("MAINTENANCEEXPENSES BEAN  :" + maintenanceExpensesBean);

		if (isNotNull(maintenanceExpensesBean)) {
			MaintenanceExpenses maintenanceExpenses = new MaintenanceExpenses();
			maintenanceExpenses.setMaintenanceId(maintenanceExpensesBean.getMaintenanceId() != null
					? Long.valueOf(maintenanceExpensesBean.getMaintenanceId()) : null);
			maintenanceExpenses.setDate(Date.valueOf(maintenanceExpensesBean.getDate()));
			maintenanceExpenses.setMonthYear(maintenanceExpensesBean.getMonthYear());
			maintenanceExpenses.setName(maintenanceExpensesBean.getName());
			maintenanceExpenses.setTitle(maintenanceExpensesBean.getTitle());
			maintenanceExpenses.setAmount(maintenanceExpensesBean.getAmount());
			maintenanceExpenses.setDescription(maintenanceExpensesBean.getDescription());
			System.out.println("MAINTENANCEEXPENSES :" + maintenanceExpenses);
			return maintenanceExpenses;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param MaintenanceExpenses
	 *            List<MaintenanceExpenses>
	 * @return MaintenanceExpensesBean List<MaintenanceExpensesBean>
	 */
	public static List<MaintenanceExpensesBean> populateMaintenanceExpensesBeanList(
			List<MaintenanceExpenses> maintenanceExpensess) {
		List<MaintenanceExpensesBean> maintenanceExpensesBeans = new ArrayList<MaintenanceExpensesBean>();

		if (isNotNull(maintenanceExpensess) && !maintenanceExpensess.isEmpty()) {
			for (MaintenanceExpenses maintenanceExpenses : maintenanceExpensess) {
				MaintenanceExpensesBean maintenanceExpensesBean = new MaintenanceExpensesBean();
				maintenanceExpensesBean.setMaintenanceId(Long.valueOf(maintenanceExpenses.getMaintenanceId()));
				maintenanceExpensesBean.setDate(maintenanceExpenses.getDate() != null
						? maintenanceExpenses.getDate().toString() : null);
				maintenanceExpensesBean.setMonthYear(maintenanceExpenses.getMonthYear());
				maintenanceExpensesBean.setName(maintenanceExpenses.getName());
				maintenanceExpensesBean.setTitle(maintenanceExpenses.getTitle());
				maintenanceExpensesBean.setAmount(maintenanceExpenses.getAmount());
				maintenanceExpensesBean.setDescription(maintenanceExpenses.getDescription());
				maintenanceExpensesBeans.add(maintenanceExpensesBean);
			}
		}

		return maintenanceExpensesBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param MaintenanceExpenses
	 * @return MaintenanceExpensesBean MaintenanceExpensesBean
	 */
	public static MaintenanceExpensesBean populateMaintenanceExpensesBean(MaintenanceExpenses maintenanceExpenses) {
		if (isNotNull(maintenanceExpenses)) {
			MaintenanceExpensesBean maintenanceExpensesBean = new MaintenanceExpensesBean();
			maintenanceExpensesBean.setMaintenanceId(Long.valueOf(maintenanceExpenses.getMaintenanceId()));
			maintenanceExpensesBean.setDate(maintenanceExpenses.getDate() != null
					? maintenanceExpenses.getDate().toString() : null);
			maintenanceExpensesBean.setMonthYear(maintenanceExpenses.getMonthYear());
			maintenanceExpensesBean.setName(maintenanceExpenses.getName());
			maintenanceExpensesBean.setTitle(maintenanceExpenses.getTitle());
			maintenanceExpensesBean.setAmount(maintenanceExpenses.getAmount());
			maintenanceExpensesBean.setDescription(maintenanceExpenses.getDescription());
			return maintenanceExpensesBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param GenericDropdownBean
	 *            genericDropdownBean
	 * @return GenericDropdown genericDropdown
	 */
	public static GenericDropdown populateGenericDropdown(GenericDropdownBean genericDropdownBean) {
		System.out.println("GENERICDROPDOWN BEAN  :" + genericDropdownBean);

		if (isNotNull(genericDropdownBean)) {
			GenericDropdown genericDropdown = new GenericDropdown();
			genericDropdown.setGenericId(genericDropdownBean.getGenericId());
			genericDropdown.setFlatWing(genericDropdownBean.getFlatWing());
			genericDropdown.setFlatFloor(genericDropdownBean.getFlatFloor());
			genericDropdown.setFlatNo(genericDropdownBean.getFlatNo());	
			System.out.println("GENERICDROPDOWN :" + genericDropdown);
			return genericDropdown;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param genericDropdowns
	 *            List<genericDropdown>
	 * @return genericDropdownBeans List<genericDropdownBean>
	 */
	public static List<GenericDropdownBean> populateGenericDropdownBeanList(List<GenericDropdown> genericDropdowns) {
		List<GenericDropdownBean> genericDropdownBeans = new ArrayList<GenericDropdownBean>();

		if (isNotNull(genericDropdowns) && !genericDropdowns.isEmpty()) {
			for (GenericDropdown genericDropdown : genericDropdowns) {
				GenericDropdownBean genericDropdownBean = new GenericDropdownBean();
				genericDropdownBean.setGenericId(genericDropdown.getGenericId());
				genericDropdownBean.setFlatWing(genericDropdown.getFlatWing());
				genericDropdownBean.setFlatFloor(genericDropdown.getFlatFloor());
				genericDropdownBean.setFlatNo(genericDropdown.getFlatNo());
				genericDropdownBeans.add(genericDropdownBean);
			}
		}

		return genericDropdownBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param genericDropdown
	 *            GenericDropdown
	 * @return genericDropdownBean GenericDropdownBean
	 */
	public static GenericDropdownBean populateGenericDropdownBean(GenericDropdown genericDropdown) {
		if (isNotNull(genericDropdown)) {
			GenericDropdownBean genericDropdownBean = new GenericDropdownBean();
			genericDropdownBean.setGenericId(genericDropdown.getGenericId());
			genericDropdownBean.setFlatWing(genericDropdown.getFlatWing());
			genericDropdownBean.setFlatFloor(genericDropdown.getFlatFloor());
			genericDropdownBean.setFlatNo(genericDropdown.getFlatNo());
			return genericDropdownBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param ComplainBean
	 *            ComplainBean
	 * @return Complain
	 */
	public static Complain populateComplain(ComplainBean complainBean) {
		System.out.println("COMPLAIN BEAN  :" + complainBean);

		if (isNotNull(complainBean)) {
			Complain complain = new Complain();
			complain.setComplainId(
					complainBean.getComplainId() != null ? Long.valueOf(complainBean.getComplainId()) : null);
			complain.setComplainTitle(complainBean.getComplainTitle());
			complain.setFlatNo(complainBean.getFlatNo());
			complain.setUserName(complainBean.getUserName());
			complain.setComplainDescription(complainBean.getComplainDescription());
			complain.setComplainDate(Date.valueOf(complainBean.getComplainDate()));
			System.out.println("COMPALIN :" + complain);
			return complain;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param Complain
	 *            List<Complain>
	 * @return ComplainBean List<ComplainBean>
	 */
	public static List<ComplainBean> populateComplainBeanList(List<Complain> complains) {
		List<ComplainBean> complainBeans = new ArrayList<ComplainBean>();

		if (isNotNull(complains) && !complains.isEmpty()) {
			for (Complain complain : complains) {
				ComplainBean complainBean = new ComplainBean();
				complainBean.setComplainId(complain.getComplainId());
				complainBean.setFlatNo(complain.getFlatNo());
				complainBean.setUserName(complain.getUserName());
				complainBean.setComplainTitle(complain.getComplainTitle());
				complainBean.setComplainDescription(complain.getComplainDescription());
				complainBean.setComplainDate(
						(complain.getComplainDate() != null ? complain.getComplainDate().toString() : null));
				complainBeans.add(complainBean);
			}
		}

		return complainBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param Complain
	 * @return ComplainBean ComplainBean
	 */
	public static ComplainBean populateComplainBean(Complain complain) {
		if (isNotNull(complain)) {
			ComplainBean complainBean = new ComplainBean();
			complainBean.setComplainId(complain.getComplainId());
			complainBean.setFlatNo(complain.getFlatNo());
			complainBean.setUserName(complain.getUserName());
			complainBean.setComplainTitle(complain.getComplainTitle());
			complainBean.setComplainDescription(complain.getComplainDescription());
			complainBean
					.setComplainDate(complain.getComplainDate() != null ? complain.getComplainDate().toString() : null);
			return complainBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param VisitorBean
	 *            visitorBean
	 * @return Visitor
	 */
	public static Visitor populateVisitor(VisitorBean visitorBean) {
		System.out.println("VISITOR BEAN  :" + visitorBean);
		if (isNotNull(visitorBean)) {
			Visitor visitor = new Visitor();
			visitor.setVisitorId(visitorBean.getVisitorId());

			// visitor.setVisitorId(visitorBean.getVisitorId() != null
			// ? Long.valueOf(visitorBean.getVisitorId()) : null);
			visitor.setDate(Date.valueOf(visitorBean.getDate()));
			visitor.setVisitorName(visitorBean.getVisitorName());
			visitor.setVisitorNumber(visitorBean.getVisitorNumber());
			visitor.setAddress(visitorBean.getAddress());
			visitor.setFlatWing(visitorBean.getFlatWing());
			visitor.setFlatNo(visitorBean.getFlatNo());
			visitor.setInTime(visitorBean.getInTime());
			visitor.setOutTime(visitorBean.getOutTime());
			visitor.setIdNumber(visitorBean.getIdNumber());
			visitor.setVisitorDetails(visitorBean.getVisitorDetails());
			System.out.println("VISITOR :" + visitor);
			return visitor;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param Visitor
	 *            List<Visitor>
	 * @return VisitorBean List<VisitorBean>
	 */
	public static List<VisitorBean> populateVisitorBeanList(List<Visitor> visitors) {
		List<VisitorBean> visitorBeans = new ArrayList<VisitorBean>();

		if (isNotNull(visitors) && !visitors.isEmpty()) {
			for (Visitor visitor : visitors) {
				VisitorBean visitorBean = new VisitorBean();
				visitorBean.setVisitorId(visitor.getVisitorId());
				visitorBean.setDate(visitor.getDate() != null ? visitor.getDate().toString() : null);
				visitorBean.setVisitorName(visitor.getVisitorName());
				visitorBean.setVisitorNumber(visitor.getVisitorNumber());
				visitorBean.setAddress(visitor.getAddress());
				visitorBean.setFlatWing(visitor.getFlatWing());
				visitorBean.setFlatNo(visitor.getFlatNo());
				visitorBean.setInTime(visitor.getInTime());
				visitorBean.setOutTime(visitor.getOutTime());
				visitorBean.setIdNumber(visitor.getIdNumber());
				visitorBean.setVisitorDetails(visitor.getVisitorDetails());
				visitorBeans.add(visitorBean);
			}
		}

		return visitorBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param Visitors
	 * @return VisitorBean visitorBean
	 */
	public static VisitorBean populateVisitorBean(Visitor visitor) {
		if (isNotNull(visitor)) {
			VisitorBean visitorBean = new VisitorBean();
			visitorBean.setVisitorId(visitor.getVisitorId());
			visitorBean.setDate(visitor.getDate() != null ? visitor.getDate().toString() : null);
			visitorBean.setVisitorName(visitor.getVisitorName());
			visitorBean.setVisitorNumber(visitor.getVisitorNumber());
			visitorBean.setAddress(visitor.getAddress());
			visitorBean.setFlatWing(visitor.getFlatWing());
			visitorBean.setFlatNo(visitor.getFlatNo());
			visitorBean.setInTime(visitor.getInTime());
			visitorBean.setOutTime(visitor.getOutTime());
			visitorBean.setIdNumber(visitor.getIdNumber());
			visitorBean.setVisitorDetails(visitor.getVisitorDetails());
			return visitorBean;
		}
		return null;

	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param societyBean
	 *            societyBean
	 * @return society society
	 */
	public static Society populateSociety(SocietyBean societyBean) {
		System.out.println("Society BEAN  :" + societyBean);
		if (isNotNull(societyBean)) {
			Society society = new Society();
			society.setSocietyId(societyBean.getSocietyId() != null ? Long.valueOf(societyBean.getSocietyId()) : null);
			society.setSocietyName(societyBean.getSocietyName());
			society.setSocietyAddress(societyBean.getSocietyAddress());
			society.setOwnerName(societyBean.getOwnerName());
			society.setOwnerContact(societyBean.getOwnerContact());
			society.setEmailId(societyBean.getEmailId());
			society.setNoOfWing(societyBean.getNoOfWing());
			System.out.println("society :" + society);
			return society;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param societys
	 *            List<society>
	 * @return societyBeans List<societyBean>
	 */
	public static List<SocietyBean> populateSocietyBeanList(List<Society> societys) {
		List<SocietyBean> societyBeans = new ArrayList<SocietyBean>();

		if (isNotNull(societys) && !societys.isEmpty()) {
			for (Society society : societys) {
				SocietyBean societyBean = new SocietyBean();
				societyBean.setSocietyId(society.getSocietyId());
				societyBean.setSocietyName(society.getSocietyName());
				societyBean.setSocietyAddress(society.getSocietyAddress());
				societyBean.setOwnerName(society.getOwnerName());
				societyBean.setOwnerContact(society.getOwnerContact());
				societyBean.setEmailId(society.getEmailId());
				societyBean.setNoOfWing(society.getNoOfWing());
				societyBeans.add(societyBean);
			}

		}

		return societyBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param society
	 *            society
	 * @return societyBean societyBean
	 */
	public static SocietyBean populateSocietyBean(Society society) {

		if (isNotNull(society)) {
			SocietyBean societyBean = new SocietyBean();
			societyBean.setSocietyId(society.getSocietyId());
			societyBean.setSocietyName(society.getSocietyName());
			societyBean.setSocietyAddress(society.getSocietyAddress());
			societyBean.setOwnerName(society.getOwnerName());
			societyBean.setOwnerContact(society.getOwnerContact());
			societyBean.setEmailId(society.getEmailId());
			societyBean.setNoOfWing(society.getNoOfWing());
			return societyBean;
		}
		return null;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param FundBean
	 *            FundBean
	 * @return FundFund
	 */
	public static Fund populateFund(FundBean fundBean) {
		System.out.println("FundBEAN  :" + fundBean);
		if (isNotNull(fundBean)) {
			Fund fund = new Fund();
			fund.setFundId(fundBean.getFundId() != null ? Long.valueOf(fundBean.getFundId()) : null);
			fund.setFlatNo(fundBean.getFlatNo());
			fund.setOwnerName(fundBean.getOwnerName());
			fund.setMonthYear(fundBean.getMonthYear());
			fund.setPaymentMode(fundBean.getPaymentMode());
			fund.setDate(Date.valueOf(fundBean.getDate()));
			fund.setAmount(fundBean.getAmount());
			fund.setDescription(fundBean.getDescription());
			System.out.println("Fund:" + fund);
			return fund;
		}
		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param Funds
	 *            List<Fund>
	 * @return FundBeans List<FundBean>
	 */
	public static List<FundBean> populateFundBeanList(List<Fund> funds) {
		List<FundBean> FundBeans = new ArrayList<FundBean>();

		if (isNotNull(funds) && !funds.isEmpty()) {
			for (Fund fund : funds) {
				FundBean fundBean = new FundBean();
				fundBean.setFundId(fund.getFundId());
				fundBean.setFlatNo(fund.getFlatNo());
				fundBean.setOwnerName(fund.getOwnerName());
				fundBean.setMonthYear(fund.getMonthYear());
				fundBean.setPaymentMode(fund.getPaymentMode());
				fundBean.setDate(fund.getDate() != null ? fund.getDate().toString() : null);
				fundBean.setAmount(fund.getAmount());
				fundBean.setDescription(fund.getDescription());
				FundBeans.add(fundBean);
			}

		}

		return FundBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param Fund
	 *            Fund
	 * @return FundBean FundBean
	 */
	public static FundBean populateFundBean(Fund fund) {

		if (isNotNull(fund)) {
			FundBean fundBean = new FundBean();
			fundBean.setFundId(fund.getFundId());
			fundBean.setFlatNo(fund.getFlatNo());
			fundBean.setOwnerName(fund.getOwnerName());
			fundBean.setMonthYear(fund.getMonthYear());
			fundBean.setPaymentMode(fund.getPaymentMode());
			fundBean.setDate(fund.getDate() != null ? fund.getDate().toString() : null);
			fundBean.setAmount(fund.getAmount());
			fundBean.setDescription(fund.getDescription());
			return fundBean;
		}
		return null;
	}

	/**
	 * This method copies bean to entity
	 * 
	 * @param ParkingBean
	 *            ParkingBean
	 * @return Parking Parking
	 */
	public static Parking populateParking(ParkingBean parkingBean) {

		if (isNotNull(parkingBean)) {
			Parking parking = new Parking();
			parking.setParkingId(parkingBean.getParkingId());
			parking.setSlotNumber(parkingBean.getSlotNumber());
			parking.setFlatWing(parkingBean.getFlatWing());
			parking.setFlatNo(parkingBean.getFlatNo());
			parking.setOwnerName(parkingBean.getOwnerName());
			return parking;
		}

		return null;
	}

	/**
	 * This method copies entities to beans
	 * 
	 * @param Parkings
	 *            List<Parking>
	 * @return ParkingBeans List<ParkingBean>
	 */
	public static List<ParkingBean> populateParkingBeanList(List<Parking> parkings) {
		List<ParkingBean> parkingBeans = new ArrayList<ParkingBean>();

		if (isNotNull(parkings) && !parkings.isEmpty()) {
			for (Parking parking : parkings) {
				ParkingBean parkingBean = new ParkingBean();
				parkingBean.setParkingId(parking.getParkingId());
				parkingBean.setSlotNumber(parking.getSlotNumber());
				parkingBean.setFlatWing(parking.getFlatWing());
				parkingBean.setFlatNo(parking.getFlatNo());
				parkingBean.setOwnerName(parking.getOwnerName());
				parkingBeans.add(parkingBean);
			}
		}

		return parkingBeans;
	}

	/**
	 * This method copies entity to bean
	 * 
	 * @param Parking
	 *            Parking
	 * @return ParkingBean ParkingBean
	 */
	public static ParkingBean populateParkingBean(Parking parking) {

		if (isNotNull(parking)) {
			ParkingBean parkingBean = new ParkingBean();
			parkingBean.setParkingId(parking.getParkingId());
			parkingBean.setSlotNumber(parking.getSlotNumber());
			parkingBean.setFlatWing(parking.getFlatWing());
			parkingBean.setFlatNo(parking.getFlatNo());
			parkingBean.setOwnerName(parking.getOwnerName());
			return parkingBean;
		}
		return null;
	}

}