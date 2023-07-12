package benefits_default;

public class Allowance {
	
	static int id = autoInc();
	String pre = "A";
	String allowanceId;
	static String empId;
	String employeeID;
	String appDate;
	String approvedDate;
	String type;
	int unitPrice, qty, total;
	static String status;
	
	
	
	
	public String getApprovedDate() {
		return approvedDate;
	}

	public void setApprovedDate(String approvedDate) {
		this.approvedDate = approvedDate;
	}

	public String getAppDate() {
		return appDate;
	}

	public void setAppDate(String appDate) {
		this.appDate = appDate;
	}
	
	public String getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
	}
	
	public static String getStatus() {
		return status;
	}

	public static void setStatus(String status) {
		Allowance.status = status;
	}

	public static int autoInc() {
		if(id == 0)
			id = 10000;
		else
			 id = id + 5;
		return id;
		
	}
	
	public String allowanceId() {
		
		allowanceId = pre + id;
		
		autoInc();
		
		return allowanceId;
		
	}
	
	public int total() {
		
		total = unitPrice * qty;
		return total;
	}


	public static String getEmpId() {
		return empId;
	}

	public static void setEmpId(String empId) {
		Allowance.empId = empId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		//this.unitPrice = Integer.parseInt(unitPrice);
		this.unitPrice = unitPrice;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		//this.qty = Integer.parseInt(qty);
		this.qty = qty;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getAllowanceId() {
		return allowanceId;
	}

	public void setAllowanceId(String allowanceId) {
		this.allowanceId = allowanceId;
	}

}
