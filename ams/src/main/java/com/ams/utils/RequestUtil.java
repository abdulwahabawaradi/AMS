package com.ams.utils;

import javax.servlet.http.HttpServletRequest;

import com.ams.beans.AdminBean;
import com.ams.beans.ComplainBean;
import com.ams.beans.DocumentBean;
import com.ams.beans.FlatBean;
import com.ams.beans.FundBean;
import com.ams.beans.GenericDropdownBean;
import com.ams.beans.LoginBean;
import com.ams.beans.MaintenanceBean;
import com.ams.beans.MaintenanceExpensesBean;
import com.ams.beans.ParkingBean;
import com.ams.beans.SocietyBean;
import com.ams.beans.UserBean;
import com.ams.beans.VisitorBean;

public class RequestUtil {

	public static LoginBean setLoginRequestToBean(HttpServletRequest request) {
		// TODO Auto-generated method stub

		LoginBean loginBean = new LoginBean();

		String userName = request.getParameter("user_name");
		String password = request.getParameter("password");

		loginBean.setUserName(userName);
		loginBean.setPassword(password);

		return loginBean;
	}

	public static DocumentBean createDocumentRequest(HttpServletRequest request, String action) {

		DocumentBean documentBean = new DocumentBean();
		documentBean.setDocumentName(request.getParameter("flatno"));
		documentBean.setDocumentPath(request.getParameter("wing"));
		documentBean.setUserId(request.getParameter("flatFloor"));
		return documentBean;
	}

	public static DocumentBean updateDocumentRequest(HttpServletRequest request, String action) {

		DocumentBean documentBean = new DocumentBean();
		documentBean.setDocumentId(Long.valueOf(request.getParameter("flat_id")));
		documentBean.setDocumentName(request.getParameter("flatno"));
		documentBean.setDocumentPath(request.getParameter("wing"));
		documentBean.setUserId(request.getParameter("flatFloor"));

		return documentBean;
	}

	public static FlatBean createFlatRequest(HttpServletRequest request, String action) {

		FlatBean flatBean = new FlatBean();
		flatBean.setFlatNumber(request.getParameter("flat_No"));
		flatBean.setWing(request.getParameter("flat_wing"));
		flatBean.setFloorNumber(request.getParameter("flat_floor"));
		flatBean.setElectricityMeter(request.getParameter("electricity_meter_no"));
		flatBean.setFlatArea(request.getParameter("flat_area"));
		flatBean.setParkingDetails(request.getParameter("parking_detail"));
		flatBean.setGasMeter(request.getParameter("gas_meter_no"));
		flatBean.setFurnishedType(request.getParameter("furnished_type"));
		flatBean.setOwnerName(request.getParameter("owner"));
		return flatBean;
	}

	public static FlatBean updateFlatRequest(HttpServletRequest request, String action) {

		FlatBean flatBean = new FlatBean();
		flatBean.setFlatId(Long.valueOf(request.getParameter("flat_id")));
		flatBean.setFlatNumber(request.getParameter("flat_no"));
		flatBean.setWing(request.getParameter("wing"));
		flatBean.setFloorNumber(request.getParameter("floor_number"));
		flatBean.setElectricityMeter(request.getParameter("electricity_meter"));
		flatBean.setFlatArea(request.getParameter("flat_area"));
		flatBean.setParkingDetails(request.getParameter("parking_details"));
		flatBean.setGasMeter(request.getParameter("gas_meter"));
		flatBean.setFurnishedType(request.getParameter("furnish_type"));
		flatBean.setOwnerName(request.getParameter("flat_id"));
		return flatBean;
	}

	public static AdminBean createAdminRequest(HttpServletRequest request, String action) {

		AdminBean adminBean = new AdminBean();
		adminBean.setFirstName(request.getParameter("first_name"));
		adminBean.setLastName(request.getParameter("Last_name"));
		adminBean.setAddress(request.getParameter("address"));
		adminBean.setDateOfBirth(request.getParameter("user_DOB"));
		adminBean.setEmail(request.getParameter("user_email"));
		adminBean.setPassword(request.getParameter("Apassword"));
		adminBean.setContact(Long.parseLong(request.getParameter("contact_no")));
		adminBean.setSecondaryContact(Long.parseLong(request.getParameter("secondary_contact_no")));
		adminBean.setAadharNumber(request.getParameter("aadhar_no"));
		adminBean.setPanCard(request.getParameter("pancard_no"));
		adminBean.setCountry(request.getParameter("country"));
		adminBean.setState(request.getParameter("state"));
		adminBean.setCity(request.getParameter("city"));
		return adminBean;
	}

	public static AdminBean updateAdminRequest(HttpServletRequest request, String action) {

		AdminBean adminBean = new AdminBean();
		adminBean.setAdminId(Long.valueOf(request.getParameter("")));
		adminBean.setFirstName(request.getParameter(""));
		adminBean.setLastName(request.getParameter(""));
		adminBean.setAddress(request.getParameter(""));
		adminBean.setDateOfBirth(request.getParameter(""));
		adminBean.setEmail(request.getParameter(""));
		adminBean.setPassword(request.getParameter(""));
		adminBean.setContact(Long.parseLong(request.getParameter("")));
		adminBean.setSecondaryContact(Long.parseLong(request.getParameter("")));
		adminBean.setAadharNumber(request.getParameter(""));
		adminBean.setPanCard(request.getParameter(""));
		adminBean.setCountry(request.getParameter(""));
		adminBean.setState(request.getParameter(""));
		adminBean.setCity(request.getParameter(""));
		return adminBean;
	}

	public static UserBean createUserRequest(HttpServletRequest request, String action) {

		UserBean userBean = new UserBean();
		userBean.setUserName(request.getParameter("first_name"));
		userBean.setLastName(request.getParameter("Last_name"));
		userBean.setUserAddress(request.getParameter("address"));
		userBean.setUserDateOfBirth(request.getParameter("user_DOB"));
		userBean.setUserEmail(request.getParameter("user_email"));
		userBean.setPassword(request.getParameter("password"));
		userBean.setUsercontact(Long.parseLong(request.getParameter("contact_no")));
		userBean.setUserSecondaryContact(Long.parseLong(request.getParameter("secondary_contact_no")));
		userBean.setUserAadharNumber(request.getParameter("aadhar_no"));
		userBean.setUserPanCard(request.getParameter("pancard_no"));
		userBean.setUserRole(request.getParameter("user_role"));
		userBean.setUserRegistrationDate(request.getParameter("register_date"));
		userBean.setEndDate(request.getParameter("End_Date"));
		userBean.setCountry(request.getParameter("country"));
		userBean.setState(request.getParameter("state"));
		userBean.setCity(request.getParameter("city"));
		return userBean;
	}

	public static UserBean updateUserRequest(HttpServletRequest request, String action) {

		UserBean userBean = new UserBean();
		userBean.setUserId(Long.valueOf(request.getParameter("user_id")));
		userBean.setUserName(request.getParameter("user_name"));
		userBean.setLastName(request.getParameter("Last_name"));
		userBean.setUserAddress(request.getParameter("user_address"));
		userBean.setUserDateOfBirth(request.getParameter("date_of_birth"));
		userBean.setUserEmail(request.getParameter("email"));
		// userBean.setPassword(request.getParameter("password"));
		userBean.setUsercontact(Long.parseLong(request.getParameter("primary_contact")));
		userBean.setUserSecondaryContact(Long.parseLong(request.getParameter("secondary_contact")));
		userBean.setUserAadharNumber(request.getParameter("aadhar_no"));
		userBean.setUserPanCard(request.getParameter("pancard_no"));
		userBean.setUserRole(request.getParameter("user_role"));
		userBean.setUserRegistrationDate(request.getParameter("registration_date"));
		userBean.setEndDate(request.getParameter("end_Date"));
		userBean.setCountry(request.getParameter("country"));
		userBean.setState(request.getParameter("state"));
		userBean.setCity(request.getParameter("city"));
		return userBean;
	}

	public static MaintenanceBean createMaintenanceRequest(HttpServletRequest request, String action) {

		MaintenanceBean maintenanceBean = new MaintenanceBean();
		maintenanceBean.setDateOfMaintenance(request.getParameter("maintenance_date"));
		maintenanceBean.setMonth(request.getParameter("mentainence_month_year"));
		maintenanceBean.setMaintenanceType(request.getParameter("maintenance_type"));
		maintenanceBean.setMaintenanceamount(request.getParameter("maintenance_amount"));
		maintenanceBean.setDuedate(request.getParameter("Due_date"));
		maintenanceBean.setMaintenancedetails(request.getParameter("maintenance_details"));
		return maintenanceBean;
	}

	public static MaintenanceBean updateMaintenanceRequest(HttpServletRequest request, String action) {

		MaintenanceBean maintenanceBean = new MaintenanceBean();
		maintenanceBean.setMaintenanceId(Long.valueOf(request.getParameter("maintenance_id")));
		maintenanceBean.setDateOfMaintenance(request.getParameter("date_of_maintenance"));
		maintenanceBean.setMonth(request.getParameter("maintenace_Month"));
		maintenanceBean.setMaintenanceType(request.getParameter("maintenace_Type"));
		maintenanceBean.setMaintenanceamount(request.getParameter("maintenance_amount"));
		maintenanceBean.setDuedate(request.getParameter("Due_date"));
		maintenanceBean.setMaintenancedetails(request.getParameter("maintenance_details"));
		return maintenanceBean;
	}

	public static MaintenanceExpensesBean createMaintenanceExpensesRequest(HttpServletRequest request, String action) {

		MaintenanceExpensesBean maintenanceExpensesBean = new MaintenanceExpensesBean();
		maintenanceExpensesBean.setDate(request.getParameter("maintenance_Expenses_date"));
		maintenanceExpensesBean.setMonthYear(request.getParameter("mentainence_month_year"));
		maintenanceExpensesBean.setName(request.getParameter("owner"));
		maintenanceExpensesBean.setTitle(request.getParameter("Expenses_Type"));
		maintenanceExpensesBean.setAmount(request.getParameter("maintenance_Expenses_Amount"));
		maintenanceExpensesBean.setDescription(request.getParameter("expenses_description"));
		return maintenanceExpensesBean;
	}

	public static MaintenanceExpensesBean updateMaintenanceExpensesRequest(HttpServletRequest request, String action) {

		MaintenanceExpensesBean maintenanceExpensesBean = new MaintenanceExpensesBean();
		maintenanceExpensesBean.setMaintenanceId(Long.valueOf(request.getParameter("maintenance_id")));
		maintenanceExpensesBean.setDate(request.getParameter(""));
		maintenanceExpensesBean.setMonthYear(request.getParameter(""));
		maintenanceExpensesBean.setName(request.getParameter(""));
		maintenanceExpensesBean.setTitle(request.getParameter(""));
		maintenanceExpensesBean.setAmount(request.getParameter(""));
		maintenanceExpensesBean.setDescription(request.getParameter(""));
		return maintenanceExpensesBean;
	}

	public static GenericDropdownBean createGenericDropdownRequest(HttpServletRequest request, String action) {

		GenericDropdownBean genericDropdownBean = new GenericDropdownBean();
		genericDropdownBean.setFlatWing(request.getParameter("flat_wing"));
		genericDropdownBean.setFlatFloor(request.getParameter("flat_Floor"));
		genericDropdownBean.setFlatNo(request.getParameter("Flat_no"));
		return genericDropdownBean;
	}

	public static ComplainBean createComplainRequest(HttpServletRequest request, String action) {

		ComplainBean complainBean = new ComplainBean();
		complainBean.setFlatNo(request.getParameter("complain_flatno"));
		complainBean.setUserName(request.getParameter("Complain_User"));
		complainBean.setComplainDate(request.getParameter("Compalin_date"));
		complainBean.setComplainTitle(request.getParameter("Complain_title"));
		complainBean.setComplainDescription(request.getParameter("Complain_description"));

		return complainBean;
	}

	public static ComplainBean updateComplainRequest(HttpServletRequest request, String action) {

		ComplainBean complainBean = new ComplainBean();
		complainBean.setComplainId(Long.valueOf(request.getParameter("complain_id")));
		complainBean.setFlatNo(request.getParameter("complaint_FlatNo"));
		complainBean.setUserName(request.getParameter("complaint_User"));
		complainBean.setComplainDate(request.getParameter("complaint_date"));
		complainBean.setComplainTitle(request.getParameter("complaint_subject"));
		complainBean.setComplainDescription(request.getParameter("complaint_description"));
		return complainBean;
	}

	public static VisitorBean createVisitorRequest(HttpServletRequest request, String action) {

		VisitorBean visitorBean = new VisitorBean();
		visitorBean.setVisitorName(request.getParameter("Visitor_name"));
		visitorBean.setVisitorNumber(request.getParameter("Visitor_contactno"));
		visitorBean.setAddress(request.getParameter("Visitor_address"));
		visitorBean.setFlatWing(request.getParameter("Visitor_flatwing"));
		visitorBean.setFlatNo(request.getParameter("Visitor_flatno"));
		visitorBean.setInTime(request.getParameter("Visitor_intime"));
		visitorBean.setOutTime(request.getParameter("Visitor_outtime"));
		visitorBean.setIdNumber(request.getParameter("Visitor_IdProof"));
		visitorBean.setVisitorDetails(request.getParameter("Visitor_Description"));
		visitorBean.setDate(request.getParameter("Visitor_date"));
		return visitorBean;

	}

	public static VisitorBean updateVisitorRequest(HttpServletRequest request, String action) {

		VisitorBean visitorBean = new VisitorBean();
		if (request.getParameter("visitor_id").length() > 0) {
			visitorBean.setVisitorId(Long.valueOf(request.getParameter("visitor_id")));
		}

		visitorBean.setVisitorName(request.getParameter("visitor_name"));
		visitorBean.setVisitorNumber(request.getParameter("visitor_contact"));
		visitorBean.setAddress(request.getParameter("visitor_address"));
		visitorBean.setFlatWing(request.getParameter("visited_wing"));
		visitorBean.setFlatNo(request.getParameter("visited_flat"));
		visitorBean.setInTime(request.getParameter("in_time"));
		visitorBean.setOutTime(request.getParameter("out_time"));
		visitorBean.setIdNumber(request.getParameter("id_no"));
		visitorBean.setVisitorDetails(request.getParameter("visitor_details"));
		visitorBean.setDate(request.getParameter("visited_date"));
		System.out.println("REQUEST UTIL :" + visitorBean);
		return visitorBean;

	}

	public static SocietyBean createSocietyRequest(HttpServletRequest request, String action) {

		SocietyBean societyBean = new SocietyBean();
		societyBean.setSocietyName(request.getParameter("society_name"));
		societyBean.setSocietyAddress(request.getParameter("society_Address"));
		societyBean.setOwnerName(request.getParameter("Owner_name"));
		societyBean.setOwnerContact(request.getParameter("contact_no"));
		societyBean.setEmailId(request.getParameter("email"));
		societyBean.setNoOfWing(request.getParameter("Wings"));
		return societyBean;

	}

	public static SocietyBean updateSocietyRequest(HttpServletRequest request, String action) {

		SocietyBean societyBean = new SocietyBean();
		if (request.getParameter("society_id").length() > 0) {
			societyBean.setSocietyId(Long.valueOf(request.getParameter("society_id")));
		}

		societyBean.setSocietyName(request.getParameter("Society_name"));
		societyBean.setSocietyAddress(request.getParameter("Society_address"));
		societyBean.setOwnerName(request.getParameter("Builder_name"));
		societyBean.setOwnerContact(request.getParameter("Builder_contact"));
		societyBean.setEmailId(request.getParameter("Builder_email"));
		societyBean.setNoOfWing(request.getParameter("No_Wings"));
		System.out.println("REQUEST UTIL :" + societyBean);
		return societyBean;

	}

	public static FundBean createFundRequest(HttpServletRequest request, String action) {

		FundBean fundBean = new FundBean();
		fundBean.setFlatNo(request.getParameter("flat_No"));
		fundBean.setOwnerName(request.getParameter("owner_name"));
		fundBean.setMonthYear(request.getParameter("funt_month_year"));
		fundBean.setDate(request.getParameter("fund_date"));
		fundBean.setPaymentMode(request.getParameter("payment_mode"));
		fundBean.setAmount(request.getParameter("fund_amount"));
		fundBean.setDescription(request.getParameter("Fund_description"));
		return fundBean;

	}

	public static FundBean updateFundRequest(HttpServletRequest request, String action) {

		FundBean fundBean = new FundBean();

		if (request.getParameter("fund_id").length() > 0) {
			fundBean.setFundId(Long.valueOf(request.getParameter("fund_id")));
		}
		fundBean.setFlatNo(request.getParameter("flat_no"));
		fundBean.setOwnerName(request.getParameter("owner_Name"));
		fundBean.setDate(request.getParameter("fund_date"));
		fundBean.setMonthYear(request.getParameter("fund_month"));
		fundBean.setPaymentMode(request.getParameter("fund_year"));
		fundBean.setAmount(request.getParameter("fund_Amount"));
		fundBean.setDescription(request.getParameter("Description"));
		return fundBean;

	}

	public static ParkingBean createParkingRequest(HttpServletRequest request, String action) {

		ParkingBean parkingBean = new ParkingBean();
		parkingBean.setSlotNumber(request.getParameter("Slot_no"));
		parkingBean.setFlatNo(request.getParameter("parking_flat_no"));
		parkingBean.setFlatWing(request.getParameter("parking_flat_wing"));
		parkingBean.setOwnerName(request.getParameter("parking_owner"));
		return parkingBean;

	}

	public static ParkingBean updateParkingRequest(HttpServletRequest request, String action) {

		ParkingBean parkingBean = new ParkingBean();

		if (request.getParameter("parking_id").length() > 0) {
			parkingBean.setParkingId(Long.valueOf(request.getParameter("parking_id")));
		}
		parkingBean.setSlotNumber(request.getParameter("slot_No"));
		parkingBean.setFlatNo(request.getParameter("owner_name"));
		parkingBean.setFlatWing(request.getParameter("flat_wing"));
		parkingBean.setOwnerName(request.getParameter("flat_no"));
		return parkingBean;

	}

}