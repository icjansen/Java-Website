package beans;

public class UserBean implements java.io.Serializable {
    private String firstName = null;
    private String lastName = null;
    private String userName = null;
    private int Id;

 public UserBean() {
 }
 public String getFirstName(){
  return firstName;
 }
 public String getLastName(){
  return lastName;
 }
 public String getUserName() {
	 return userName;
 }
 public int getId() {
	 return Id;
 }
 public void setFirstName(String firstName){
  this.firstName = firstName;
 }
 public void setLastName(String lastName){
  this.lastName = lastName;
 }
 public void setUserName(String userName) {
	 this.userName  = userName;
 }
public void setId(int Id) {
	// TODO Auto-generated method stub
	
}
}