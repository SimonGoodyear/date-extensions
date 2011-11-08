## Date Extension Methods

This class for the Force.com platform is a collection of methods that are useful when working with the Date object in APEX.


### What methods are there?

#### min
	Date min(Date d1, Date d2)
	
This will return the earlier of the two dates passed to it.
***

#### max
	Date max(Date d1, Date d2)

This will return the later of the two dates passed to it.
***

#### dayOfWeek
	Integer dayOfWeek(Date d1)

This will return an Integer representing the day of the week a particular date is.  The number is zero based at Monday regardless of the Org's locale.
***

#### weekdaysBetween
	Integer weekdaysBetween(Date d1, Date d2)
	
This will return the number of weekdays between two dates.  This doesn't use the normal looping approach, it attempts to be more efficient and calculate the value instead.


### Who's contributed to this?

So far only I have worked on this project but feel free to fork, join in and see your name in lights just here!

### How's it licensed?

The project is licensed under the [BSD 2 clause license](http://www.opensource.org/licenses/bsd-license.php).