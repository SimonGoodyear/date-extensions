public class DateExtensions {

	public static Integer dayOfWeek(Date dt){
		Date wellKnown = date.newInstance(2011, 11, 7);
		if(dt < wellKnown){
			Integer wrk = Math.mod(wellKnown.daysBetween(dt), 7); 
			if(wrk == 0)
				return wrk;
			else
				return wrk + 7;
		}
		else
			return Math.mod(wellKnown.daysBetween(dt), 7);
	}


	public static Integer weekdaysBetween(Date d1, Date d2){
		
		Date start = min(d1,d2);
		Date finish = max(d1,d2);
		
		Integer daysBetween = start.daysBetween(finish);
		
		Integer startDay = dayOfWeek(start);
		Integer finishDay = dayOfWeek(finish);
		
		daysBetween -= Math.round(((daysBetween + startDay - finishDay) / 7) * 2);
		
		if(finishDay == 5 && startDay != 5){
			if(startDay == 6)
				daysBetween += 1;
			else
				daysBetween -= 1;
		} else if(finishDay == 6 && startDay != 6){
			if(startDay == 5)
				daysBetween -= 1;
			else
				daysBetween -= 2;
		} else if(startDay == 5 && finishDay != 5 && finishDay != 6)
		{
			daysBetween += 1;
		} else if(startDay == 6 && finishDay != 5 && finishDay != 6)
		{
			daysBetween += 2;
		}
		
		return daysBetween; 
	}

	public static Date min(Date d1, Date d2){
		return (d1 < d2) ? d1 : d2;
	}


	public static Date max(Date d1, Date d2){
		return (d1 >= d2) ? d1 : d2;
	}
}