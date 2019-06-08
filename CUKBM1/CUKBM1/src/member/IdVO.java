package member;
import java.util.ArrayList;

public class IdVO {
	public IdVO() {
		
	}
	private ArrayList<String> Idlist = new ArrayList<String>();

	public String[] getIdlist() {
		return Idlist.toArray(new String[Idlist.size()]);
	}

	public void setIdlist(int index, String user) {
		this.Idlist.add(index, user);
	}
	
	public int getIdlistSize() {
		return Idlist.size();
	}
}
