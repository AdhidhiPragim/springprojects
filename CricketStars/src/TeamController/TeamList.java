package TeamController;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class TeamList {
	
	
	
	
	public list<TeamInfo>  getTeams(){
		List<TeamInfo> list = null;
		try {
			
			Connection connection = Connection.getConnectionFromOracle();
			Statement stmt = connection.createStatement();
			ResultSet rs=stmt.executeQuery(select * from );
			list =new ArrayList<TeamList>();
			while(rs.next()){
				
				TeamInfo sc = new TeamInfo(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs,getblob(6));
				list.add(sc);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}

}
