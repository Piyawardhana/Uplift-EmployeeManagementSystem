package benefits_default;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;


public class Operations {
	
	PreparedStatement prepare;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean Success = false;
	
	public boolean insert(Allowance ob) {
		
		String allowanceID = ob.getAllowanceId();
		String empId = Allowance.getEmpId();
		String type = ob.getType();
		int unitPrice = ob.getUnitPrice();
		int qty = ob.getQty();
		int total = ob.getTotal();
		String status = Allowance.getStatus();
		String appDate = ob.getAppDate();
		String approvedDate = "xxxx-xx-xx";
		
		boolean isSuccess = false;

		
		try {

			String query = "insert into allowance value(?, ?, ?, ?, ?, ?, ?, ?,?)";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, allowanceID);
			prepare.setString(2, empId);
			prepare.setString(3, type);
			prepare.setInt(4, unitPrice);
			prepare.setInt(5, qty);
			prepare.setInt(6, total);
			prepare.setString(7, status);
			prepare.setString(8, appDate);
			prepare.setString(9, approvedDate);
			
			
			boolean rs = prepare.execute();
			
    		if(rs == true) {
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
	
	
	
	public static boolean view(String empId) {
		
		PreparedStatement prepare;
		boolean isSuccess = false;
		
		try {
			String query1 = "select * from allowance where empID = ?;";
			Connection object = DBUtill.getconnection();
			prepare = object.prepareStatement(query1);
			
			prepare.setString(1, empId);
			
		int rs = prepare.executeUpdate();
		
		    if (rs > 0) {
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
	
	public static List<Allowance> viewAll(String empID, String status) {
		
		PreparedStatement prepare;
		
		ArrayList<Allowance> all = new ArrayList<>();
		
		try {
			
			String sql = "select * from allowance where empID= ? and stat = ?;";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(sql);
			
			prepare.setString(1, empID);
			prepare.setString(2, status);
			
			ResultSet rs = prepare.executeQuery();
			
			while (rs.next()) {
				
				Allowance a = new Allowance();
				
				a.setAllowanceId(rs.getString(1));
				Allowance.setEmpId(rs.getString(2));
				a.setType(rs.getString(3));
				a.setUnitPrice(rs.getInt(4));
				a.setQty(rs.getInt(5));
				a.setTotal(rs.getInt(6));
				a.setAppDate(rs.getString(8));
				
				all.add(a);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return all;
	}
	
	public boolean edit(Allowance ed) {
		
		String allowanceID = ed.getAllowanceId();
		String empId = Allowance.getEmpId();
		String type = ed.getType();
		int unitPrice = ed.getUnitPrice();
		int qty = ed.getQty();
		int total = ed.getTotal();
		
		boolean isSuccess = false;

		
		try {

			String query = "update allowance set empID=?, allowanceType=?, unitPrice=?, quantity=?, total=? where allowanceId=?";
			Connection object = DBUtill.getconnection(); 
			prepare = object.prepareStatement(query);
			
			prepare.setString(1, empId);
			prepare.setString(2, type);
			prepare.setInt(3, unitPrice);
			prepare.setInt(4, qty);
			prepare.setInt(5, total);
			prepare.setString(6, allowanceID);
			
			
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
	
public boolean delete(String allowaID) {
	
	boolean isSuccess = false;

	
	try {

		String query = "delete from allowance where allowanceId=?;";
		Connection object = DBUtill.getconnection(); 
		prepare = object.prepareStatement(query);
		
		prepare.setString(1, allowaID);
		
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

public static List<Allowance> approved(String empID,String status) {
	
	PreparedStatement prepare;
	
	ArrayList<Allowance> all = new ArrayList<>();
	
	try {
		
		String sql = "select * from allowance where empID= ? and stat = ?;";
		Connection object = DBUtill.getconnection(); 
		prepare = object.prepareStatement(sql);
		
		prepare.setString(1, empID);
		prepare.setString(2, status);
		
		ResultSet rs = prepare.executeQuery();
		
		while (rs.next()) {
			
			Allowance a = new Allowance();
			
			a.setAllowanceId(rs.getString(1));
			Allowance.setEmpId(rs.getString(2));
			a.setType(rs.getString(3));
			a.setUnitPrice(rs.getInt(4));
			a.setQty(rs.getInt(5));
			a.setTotal(rs.getInt(6));
			Allowance.setStatus(rs.getString(7));
			a.setApprovedDate(rs.getString(9));
			
			all.add(a);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return all;
}

public static List<Allowance> viewAllAllowa(String status) {
	
	PreparedStatement prepare;
	
	ArrayList<Allowance> all = new ArrayList<>();
	
	try {
		
		String sql = "select * from allowance where stat = ?;";
		Connection object = DBUtill.getconnection(); 
		prepare = object.prepareStatement(sql);
		
		prepare.setString(1, status);
		
		ResultSet rs = prepare.executeQuery();
		
		while (rs.next()) {
			
			Allowance a = new Allowance();
			
			a.setAllowanceId(rs.getString(1));
			a.setEmployeeID(rs.getString(2));
			a.setType(rs.getString(3));
			a.setUnitPrice(rs.getInt(4));
			a.setQty(rs.getInt(5));
			a.setTotal(rs.getInt(6));
			Allowance.setStatus(rs.getString(7));
			a.setAppDate(rs.getString(8));
			
			all.add(a);
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return all;
}

public boolean approveAllowance(String allowaID, String status, String date) {
	
	boolean isSuccess = false;

	
	try {

		String query = "update allowance set stat=?, approvedDate=? where allowanceId=?";
		Connection object = DBUtill.getconnection(); 
		prepare = object.prepareStatement(query);
		
		prepare.setString(1, status);
		prepare.setString(2, date);
		prepare.setString(3, allowaID);
		
		
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

public static boolean validate(String username, String password){
	
	try {
		
		Connection object = DBUtill.getconnection();
		stmt = object.createStatement();
		String sql = "select * from employee where username = '"+username+"' and passwords ='"+password+"'";
		
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			Success = true;	
		}
		
		else {
			Success = false;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return Success;
}

public static boolean validateManager(String username, String password){
	
	try {
		
		Connection object = DBUtill.getconnection();
		stmt = object.createStatement();
		String sql = "select * from manager where username = '"+username+"' and passwords ='"+password+"'";
		
		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			Success = true;	
		}
		
		else {
			Success = false;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return Success;
}

public static Employee getEmployee(String username){
	
	Employee emp = null;
	
	try {
		
		Connection object = DBUtill.getconnection();
		stmt = object.createStatement();
		
		//SQL Query			
		String sql = "select * from Employee where username = '"+username+"'";
					
		rs= stmt.executeQuery(sql);
		
		if(rs.next()) {
			String empID = rs.getString(1);
			String name = rs.getString(2);
			String address = rs.getString(3);
			String userName = rs.getString(4);
			int password = rs.getInt(5);
		
			//Create Employee Object
			 emp = new Employee(empID, name, address, userName, password);
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return emp;
}
	
}

