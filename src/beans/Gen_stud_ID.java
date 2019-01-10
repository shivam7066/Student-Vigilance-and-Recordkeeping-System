package beans;
import java.sql.*;
public class Gen_stud_ID{

	private String id;
	private int yr;
	private int standard;
	private char div;
	private int limit;
	
	
	
	

	public void setYr(int yr)
	{
	this.yr=yr;
	//onEmpDataChanged();
	}
	
	public void setStandard(int abc)
	{
	this.standard=abc;
	//onEmpDataChanged();
	}
	
	public void setDiv(String div)
	{
	this.div=div.charAt(0);
	//onEmpDataChanged();
	}
	
	public void setLimit(int limit) {
		this.limit = limit;
	onEmpDataChanged();
	}
	public String getId()
	{
	return(id);
	}
	private void onEmpDataChanged()
	{
	
		
		
		int x,y;

	switch(div)
	{
	case 'A':
		x=1;
		break;
	case 'B':
		x=2;
		break;
	case 'C':
		x=3;
		break;
	case 'D':
		x=4;
		break;
	case 'E':
		x=5;
		break;
	case 'F':
		x=6;
		break;
	default:
		x=0;
	}
	
	
	 y=yr%100;
try
{
	Connection con;
	Statement st;
	Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student vigilience system?user=root&password=manager");
st=con.createStatement();

	for(int cnt=01; cnt<=limit; cnt++)
	{
		
		id="S"+y+standard+x+cnt;
st.executeUpdate("insert into id_table values('"+id+"','"+standard+"','"+div+"')");
		} 
		st.close();
		con.close();
}
catch(Exception e)
	{}
}

	
	

}
