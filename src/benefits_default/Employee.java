package benefits_default;

public class Employee {
	
	String empID;
	String name;
	String address;
	static String username;
	int password;
	
	public Employee(String empID, String name, String address, String username, int password) {
		this.empID = empID;
		this.name = name;
		this.address = address;
		Employee.username = username;
		this.password = password;
	}

	public String getEmpID() {
		return empID;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public static String getUsername() {
		return username;
	}

	public int getPassword() {
		return password;
	}

}
