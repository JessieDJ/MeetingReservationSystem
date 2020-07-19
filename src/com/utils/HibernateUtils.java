package com.utils;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateUtils {
	private static SessionFactory sf;
	
	private static SessionFactory  createSessionFactory() {
        try {
            // Create the SessionFactory from hibernate.cfg.xml
            
            Configuration conf = new Configuration().configure("hibernate.cfg.xml");
            sf = conf.buildSessionFactory();
             
            return sf;
        }
        catch (Throwable ex) {
            // Make sure you log the exception, as it might be swallowed
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
  
}
       public static SessionFactory getSessionFactory() {
    	   
    	   if(sf == null) {
        	sf = createSessionFactory();
        	
        }
    	System.out.println(4);
        return sf;
       }
	

}
