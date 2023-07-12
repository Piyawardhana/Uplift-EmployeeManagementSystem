package benefits_default;

public class eyeTest {
	
	String eID;
	String empID;
	String location;
	String attendDate;
	static String status;
	String name;
	String address;
	String branchname;
	
	
	public String geteID() {
		return eID;
	}
	public void seteID(String eID) {
		this.eID = eID;
	}
	public String getEmpID() {
		return empID;
	}
	public void setEmpID(String empID) {
		this.empID = empID;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getAttendDate() {
		return attendDate;
	}
	public void setAttendDate(String attendDate) {
		this.attendDate = attendDate;
	}
	public static String getStatus() {
		return status;
	}
	public static void setStatus(String status) {
		eyeTest.status = status;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBranchname() {
		return branchname;
	}
	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}
	
	public String Location(String branch) {
		
		String s = branch;
		
		if("Gampaha".equals(s)) 
			location = "Vission Care Gampaha";
		else if("Colombo".equals(s))
			location = "Vission Care Colombo";
		else if("Galle".equals(s))
			location = "Vission Care Galle";
		
		return location;

	}
	
	
	

}
