@isTest
private class DateExtensionsTest {

	private static testmethod void min_lowhigh(){
		Date d1 = date.newInstance(2011, 11, 1);
		Date d2 = date.newInstance(2011, 11, 2);
		
		system.assertEquals( d1, DateExtensions.min(d1, d2) );
	}

	private static testmethod void max_lowhigh(){
		Date d1 = date.newInstance(2011, 11, 1);
		Date d2 = date.newInstance(2011, 11, 2);
		
		system.assertEquals( d2, DateExtensions.max(d1, d2) );
	}
	
	private static testmethod void min_highlow(){
		Date d1 = date.newInstance(2011, 11, 1);
		Date d2 = date.newInstance(2011, 11, 2);
		
		system.assertEquals( d1, DateExtensions.min(d2, d1) );
	}
	
	private static testmethod void max_highlow(){
		Date d1 = date.newInstance(2011, 11, 1);
		Date d2 = date.newInstance(2011, 11, 2);
		
		system.assertEquals( d2, DateExtensions.max(d2, d1) );
	}
	
	private static testMethod void dayOfWeek_pastMonday(){
		system.assertEquals(0, DateExtensions.dayOfWeek(date.newInstance(2010, 10, 4)));
	}

	private static testMethod void dayOfWeek_pastFriday(){
		system.assertEquals(4, DateExtensions.dayOfWeek(date.newInstance(2010, 10, 8)));
	}

	private static testMethod void dayOfWeek_futureMonday(){
		system.assertEquals(0, DateExtensions.dayOfWeek(date.newInstance(2014, 4, 7)));
	}

	private static testMethod void dayOfWeek_futureFriday(){
		system.assertEquals(4, DateExtensions.dayOfWeek(date.newInstance(2014, 4, 11)));
	}

	private static testMethod void weekdaysBetween_MonToMonSameWeek(){
		system.assertEquals(0, DateExtensions.weekdaysBetween(date.newInstance(2011,11,14), date.newInstance(2011,11,14)));
	}

	private static testMethod void weekdaysBetween_MonToMonDiffWeek(){
		system.assertEquals(10, DateExtensions.weekdaysBetween(date.newInstance(2011,11,14), date.newInstance(2011,11,28)));
	}

	private static testMethod void weekdaysBetween_MonToWedSameWeek(){
		system.assertEquals(2, DateExtensions.weekdaysBetween(date.newInstance(2011,11,14), date.newInstance(2011,11,16)));
	}
	
	private static testMethod void weekdaysBetween_SatToSatSameWeek(){
		system.assertEquals(0, DateExtensions.weekdaysBetween(date.newInstance(2011,11,19), date.newInstance(2011,11,19)));
	}
	
	private static testMethod void weekdaysBetween_SatToSunSameWeek(){
		system.assertEquals(0, DateExtensions.weekdaysBetween(date.newInstance(2011,11,19), date.newInstance(2011,11,20)));
	}
	
	private static testMethod void weekdaysBetween_SatToSatDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,19), date.newInstance(2011,11,26)));
	}
	
	private static testMethod void weekdaysBetween_SatToSunDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,19), date.newInstance(2011,11,27)));
	}
	
	private static testMethod void weekdaysBetween_SatToFriDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,19), date.newInstance(2011,11,25)));
	}
	
	private static testMethod void weekdaysBetween_SunToSatDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,20), date.newInstance(2011,11,26)));
	}
	
	private static testMethod void weekdaysBetween_SunToSunDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,20), date.newInstance(2011,11,27)));
	}
	
	private static testMethod void weekdaysBetween_SunToFriDiffWeek(){
		system.assertEquals(5, DateExtensions.weekdaysBetween(date.newInstance(2011,11,20), date.newInstance(2011,11,25)));
	}
	
	private static testMethod void weekdaysBetween_WedToSatDiffWeek(){
		system.assertEquals(7, DateExtensions.weekdaysBetween(date.newInstance(2011,11,9), date.newInstance(2011,11,19)));
	}
	
	private static testMethod void weekdaysBetween_WedToSunDiffWeek(){
		system.assertEquals(7, DateExtensions.weekdaysBetween(date.newInstance(2011,11,9), date.newInstance(2011,11,20)));
	}	
	
	
}