package leondon.bean;

import java.io.Serializable;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private String user_id;
	private String username;
	private String password;

	@Override
	public String toString() {
		return "User{" +
				"user_id='" + user_id + '\'' +
				", username='" + username + '\'' +
				", password='" + password + '\'' +
				", user_num='" + user_num + '\'' +
				", user_name='" + user_name + '\'' +
				", user_telephone='" + user_telephone + '\'' +
				", work_city='" + work_city + '\'' +
				", office_num='" + office_num + '\'' +
				", department_num='" + department_num + '\'' +
				", director_name='" + director_name + '\'' +
				", process_num='" + process_num + '\'' +
				", role='" + role + '\'' +
				", alipay='" + alipay + '\'' +
				'}';
	}

	private String user_num;
	private String user_name;
	private String user_telephone;
	private String work_city;
	private String office_num;
	private String department_num;
	private String director_name;
	private String process_num;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_telephone() {
		return user_telephone;
	}

	public void setUser_telephone(String user_telephone) {
		this.user_telephone = user_telephone;
	}

	public String getWork_city() {
		return work_city;
	}

	public void setWork_city(String work_city) {
		this.work_city = work_city;
	}

	public String getOffice_num() {
		return office_num;
	}

	public void setOffice_num(String office_num) {
		this.office_num = office_num;
	}

	public String getDepartment_num() {
		return department_num;
	}

	public void setDepartment_num(String department_num) {
		this.department_num = department_num;
	}

	public String getDirector_name() {
		return director_name;
	}

	public void setDirector_name(String director_name) {
		this.director_name = director_name;
	}

	public String getProcess_num() {
		return process_num;
	}

	public void setProcess_num(String process_num) {
		this.process_num = process_num;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getAlipay() {
		return alipay;
	}

	public void setAlipay(String alipay) {
		this.alipay = alipay;
	}

	private String role;
	private String alipay;


}
