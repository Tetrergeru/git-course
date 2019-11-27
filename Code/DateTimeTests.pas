unit DateTimeTests;

uses DateTimeMethods;

procedure TestIsLeapYear();
begin
	assert(IsLeapYear(2004), 'TestIsLeapYear fails on 2004');
	assert(IsLeapYear(1812), 'TestIsLeapYear fails on 1812');
	assert(not IsLeapYear(2003), 'TestIsLeapYear fails on 2003');
	assert(not IsLeapYear(1999), 'TestIsLeapYear fails on 1999');
end;

procedure TestDaysInMonth();
begin
	assert(DaysInMonth(1, 1999) = 31, 'TestDaysInMonth fails on Janyary 1999');
	assert(DaysInMonth(2, 2004) = 29, 'TestDaysInMonth fails on February 2004');
	assert(DaysInMonth(4, 2019) = 30, 'TestDaysInMonth fails on February 2004');
	assert(DaysInMonth(5, 1967) = 31, 'TestDaysInMonth fails on February 2004');
end;

procedure TestLaterInDay();
begin
	var p1 := new DateTime(2019, 11, 21, 14, 12, 10);
	var p2 := new DateTime(2019, 11, 11, 15, 12, 10);
	var p3 := new DateTime(2008, 6,  3,  14, 20, 10);
	var p4 := new DateTime(1999, 7,  11, 14, 12, 44);

	assert(LaterInDay(p2, p1) = p2, 'TestLaterInDay fails on 14:12:10 and 15:12:10');
	assert(LaterInDay(p1, p3) = p3, 'TestLaterInDay fails on 14:12:10 and 14:20:10');
	assert(LaterInDay(p4, p1) = p4, 'TestLaterInDay fails on 14:12:10 and 14:12:44');
end;

procedure TestrLaterInYear();
begin
	var p1 := new DateTime(1999, 11, 21);
	var p2 := new DateTime(2005, 7,  11);
	var p3 := new DateTime(2020, 2, 20);

	assert(LaterInYear(p2, p1) = p1, 'TestLaterInYear fails on 21.11 and 11.7');
	assert(LaterInYear(p2, p3) = p2, 'TestLaterInYear fails on 20.2 and 11.7');
	assert(LaterInYear(p3, p1) = p1, 'TestLaterInYear fails on 21.11 and 20.2');
end;

procedure TestDaysInYear();
begin
	assert(DaysInYear(2000) = 366, 'TestDaysInYear fails on 2000');
	assert(DaysInYear(2001) = 365, 'TestDaysInYear fails on 2001');
	assert(DaysInYear(1600) = 366, 'TestDaysInYear fails on 1600');
	assert(DaysInYear(1900) = 365, 'TestDaysInYear fails on 1900');
end;

procedure TestDaysInYearRange();
begin
	assert(DaysInYearRange(2000, 2000) = 366, 'TestDaysInYear fails on 2000..2000');
	assert(DaysInYearRange(2000, 2004) = 1827, 'TestDaysInYear fails on 2000..2004');
	assert(DaysInYearRange(1999, 2001) = 1096, 'TestDaysInYear fails on 1999..2001');
	assert(DaysInYearRange(2050, 2100) = 18627, 'TestDaysInYear fails on 2050..2100');
end;

procedure TestSecondsInHours();
begin
	assert(SecondsInHours(1) = 60*60, 'TestSecondsInHours fails on 1');
	assert(SecondsInHours(2) = 2*60*60, 'TestSecondsInHours fails on 2');
	assert(SecondsInHours(0) = 0, 'TestSecondsInHours fails on 0');
end;

begin
	//Here be test-calls
end.
