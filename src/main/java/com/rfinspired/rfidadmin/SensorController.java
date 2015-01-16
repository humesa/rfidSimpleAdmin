package com.rfinspired.rfidadmin;

import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.datastax.driver.core.PreparedStatement;
import com.datastax.driver.core.ResultSet;
import com.datastax.driver.core.Row;
import com.datastax.driver.core.Statement;
import com.datastax.driver.core.querybuilder.Insert;
import com.datastax.driver.core.querybuilder.QueryBuilder;
import com.datastax.driver.core.querybuilder.Select;
import com.datastax.driver.core.utils.UUIDs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cassandra.core.CqlOperations;




/**
 * Handles requests for the application home page.
 */
@Controller
public class SensorController {
	
	@Autowired
    private CqlOperations cqlTemplate;
	
	private static final Logger logger = LoggerFactory.getLogger(SensorController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/reads", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Hello Rod! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("welcomeMessage", "Welcome To RFID Sample Application" );
		
		
		ResultSet rst = cqlTemplate.query("SELECT * from read_timeline LIMIT 25");
		logger.info("SELECT * from read_timeline LIMIT 25");
		
		StringBuffer sb = new StringBuffer();
		Iterator<Row> rowsIterator = rst.iterator();
        while (rowsIterator.hasNext()) {
             Row row = rowsIterator.next();
             sb.append(row.toString() + "<br />");
             logger.info(row.toString());
             //System.out.println("row:"+row);
        }
		
		model.addAttribute("Sensors", sb.toString());
		
		return "reads";
	}
	
}
