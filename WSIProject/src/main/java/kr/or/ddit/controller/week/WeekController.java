package kr.or.ddit.controller.week;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import lombok.extern.slf4j.Slf4j;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/week")
public class WeekController {

//    @ResponseBody
//    @RequestMapping(value = "/weekdates", method = RequestMethod.POST)
//    public List<LocalDate> getWeekDates(@RequestBody Map<String, String> map) {
//        String dateString = map.get("selectDate").toString();
//        log.info("넘어온 날짜 !!!!!!!!!!!!!!!!!!!!!111: " + dateString);
//        LocalDate givenDate = LocalDate.parse(dateString);
//
//        // 주의 첫 번째 날짜 계산 (월요일부터 시작)
//        LocalDate firstDayOfWeek = givenDate;
//        while (firstDayOfWeek.getDayOfWeek() != DayOfWeek.MONDAY) {
//            firstDayOfWeek = firstDayOfWeek.minusDays(1);
//        }
//
//        // 주의 마지막 날짜 계산 (일요일까지)
//        LocalDate lastDayOfWeek = givenDate;
//        while (lastDayOfWeek.getDayOfWeek() != DayOfWeek.SUNDAY) {
//            lastDayOfWeek = lastDayOfWeek.plusDays(1);
//        }
//
//        // 주의 모든 날짜 리스트에 추가
//        List<LocalDate> weekDates = new ArrayList<>();
//        LocalDate currentDay = firstDayOfWeek;
//        while (!currentDay.isAfter(lastDayOfWeek)) {
//            weekDates.add(currentDay);
//            currentDay = currentDay.plusDays(1);
//        }
//
//        return weekDates;
//    }
	
	@ResponseBody
    @RequestMapping(value = "/weekdates", method = RequestMethod.POST)
    public static String[] getDaysOfWeek(@RequestBody Map<String, String> map) throws ParseException {
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String[] arrYMD = new String[7];
		
		String dateString = map.get("selectDate").toString();
		log.info("넘어온 날짜 !!!!!!!!!!!!!!!!!!!!!111: " + dateString);
		
		Date date = df.parse(dateString);
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		
		int inYear = cal.get(cal.YEAR); 
	    int inMonth = cal.get(cal.MONTH);
	    int inDay = cal.get(cal.DAY_OF_MONTH);
	    
	    int yoil = cal.get(cal.DAY_OF_WEEK); //요일나오게하기(숫자로)
	    if(yoil != 1){   //해당요일이 일요일이 아닌경우
	        yoil = yoil-2;
	     }else{           //해당요일이 일요일인경우
	        yoil = 7;
	     }
	    inDay = inDay-yoil;
	    
	    for(int i = 0; i < 7;i++){
	     cal.set(inYear, inMonth, inDay+i);  //
	     String y = Integer.toString(cal.get(cal.YEAR)); 
	     String m = Integer.toString(cal.get(cal.MONTH)+1);
	     String d = Integer.toString(cal.get(cal.DAY_OF_MONTH));
	     if(m.length() == 1) m = "0" + m;
	     if(d.length() == 1) d = "0" + d;
	     
	     arrYMD[i] = y + "-" + m + "-" + d;
	    }
		
		return arrYMD;
	}
    
}
