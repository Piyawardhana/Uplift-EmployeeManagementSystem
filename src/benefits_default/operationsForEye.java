package benefits_default;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import java.util.ArrayList;

public class operationsForEye {
	
	PreparedStatement prepare;
	private static Statement stmt = null;
	
	public static eyeTest viewEmployeeDet(String empId) {
		
		PreparedStatement prepare;
		eyeTest a = new eyeTest();
		
		try {
			String query1 = "select e.empID, e.nameOfEmp, e.address, b.bname from employee e, branch b where e.branchCode = b.branchCode and e.empID = ?;";
			Connection object = DBUtill.getconnection();
			prepare = object.prepareStatement(query1);
			
			prepare.setString(1, empId);
			
			ResultSet rs = prepare.executeQuery();
		
			if (rs.next()) {
				a.setEmpID(rs.getString(1));
				a.setName(rs.getString(2));
				a.setAddress(rs.getString(3));
				a.setBranchname(rs.getString(4));
			}
			
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return a;
		
	}
	
	public boolean insert(eyeTest ob) {
		
		String empID = ob.getEmpID();
		String location = ob.getLocation();
		String attendDate = ob.getAttendDate();
		String status = ob.getStatus();
		
		boolean isSuccess = false;

		
		try {
			Connection object = DBUtill.getconnection();
			stmt = object.createStatement();
			String query = "insert into eyeTest values (0, '"+location+"', '"+attendDate+"', '"+status+"', '"+empID+"')";
			int rs = stmt.executeUpdate(query);
			
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}
	
	public static eyeTest viewEyeTestApp(String empId) {
		
		PreparedStatement prepare;
		eyeTest a = new eyeTest();
		
		try {
			String query1 = "select eID, location, attendDate, stat from eyeTest where empID = ?;";
			Connection object = DBUtill.getconnection();
			prepare = object.prepareStatement(query1);
			
			prepare.setString(1, empId);
			
			ResultSet rs = prepare.executeQuery();
		
			if (rs.next()) {
				a.seteID(rs.getString(1));
				a.setLocation(rs.getString(2));
				a.setAttendDate(rs.getString(3));
				a.setStatus(rs.getString(4));
			}
			
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return a;
		
	}
	
	public static boolean view(String empId) {
		
		boolean isSuccess = false;
		
		try {
			Connection object = DBUtill.getconnection();
			stmt = object.createStatement();
			String sql = "select empID from eyeTest where empID = '"+empId+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
		
		    if (rs.next()) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
	
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public boolean editEyeTest(String eID, String date) {
		
		boolean isSuccess = false;

		
		try {

			String query = "update eyeTest set attendDate=? where eID=?";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, date);
			prepare.setString(2, eID);
			
			
			int rs = prepare.executeUpdate();
			
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}
	
	public boolean deleteEyeTest(String eID) {
		
		boolean isSuccess = false;

		
		try {

			String query = "delete from eyeTest where eID=?;";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, eID);
			
			int rs = prepare.executeUpdate();
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}
	
	public static List<eyeTest> viewAllEye(String status) {
		
		PreparedStatement prepare;
		
		ArrayList<eyeTest> all = new ArrayList<>();
		
		try {
			
			String sql = "select * from eyeTest where stat = ?;";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(sql);
			
			prepare.setString(1, status);
			
			ResultSet rs = prepare.executeQuery();
			
			while (rs.next()) {
				
				eyeTest e = new eyeTest();
				
				e.seteID(rs.getString(1));
				e.setLocation(rs.getString(2));
				e.setAttendDate(rs.getString(3));
				eyeTest.setStatus(rs.getString(4));
				e.setEmpID(rs.getString(5));
				
				all.add(e);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return all;
	}
	
	public boolean approveEyeTest(String eID, String status) {
		
		boolean isSuccess = false;

		
		try {

			String query = "update eyeTest set stat=? where eID=?";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, status);
			prepare.setString(2, eID);
			
			
			int rs = prepare.executeUpdate();
			
			if(rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isSuccess;

		
	}

}
