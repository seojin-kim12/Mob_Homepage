package jspbook.mob;

public class CounterBean {
	private int count;
	
	public CounterBean() {
		count=323575;
	}
	
	public void setNewVisit(String s) {
		count++;
	}
	
	public int getVisitCount() {
		return count;
	}
	
	public String countPrint() {
		if(getVisitCount() >= 10 && getVisitCount() < 100)
			return "0000000000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 100 && getVisitCount() < 1000)
			return "000000000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 1000 && getVisitCount() < 10000)
			return "00000000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 10000 && getVisitCount() < 100000)
			return "0000000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 100000 && getVisitCount() < 1000000)
			return "000000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 1000000 && getVisitCount() < 10000000)
			return "00000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 10000000 && getVisitCount() < 100000000)
			return "0000000"+String.valueOf(getVisitCount());
		else if(getVisitCount() >= 100000000)
			return String.valueOf(getVisitCount());
		return "00000000000000"+String.valueOf(getVisitCount());
	}
}
