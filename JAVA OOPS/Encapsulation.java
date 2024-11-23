package com.aspiresys;

class Employee{
	private String employee_name;
	private int employee_id;
	private int employee_age;
	
	// constructor
	public Employee(String name, int id, int age) {
		this.employee_name = name;
		this.employee_id = id;
		this.employee_age = age;
	}
	
	
	//getter
	public String getName(){
		return employee_name;
	}
	public int getId(){
		return employee_id;
	}
	public int getAge(){
		return employee_age;
	}
		
	
	//Setter
	public void setEmployeeDetails(String name, int id,int age) {
	
		this.employee_name = name;
		this.employee_id = id;
		this.employee_age = age;
	
	}
	
	
	
	public void display() {
		System.out.println("Name : "+ employee_name +"\n"+ "Id : "+ employee_id +"\n" +"Age : "+ employee_age);
	}
}

class Encapsulation {

	public static void main(String[] args) {
		Employee employee_obj = new Employee("Arun",101,22);
		
		System.out.println("Name : " + employee_obj.getName());
		System.out.println("Id : " + employee_obj.getId());
		System.out.println("Age : " + employee_obj.getAge());
				
		employee_obj.setEmployeeDetails("Bhadri",102,23);//update using setter
		
		employee_obj.display();//display the values updated by setter
		
	}

}
