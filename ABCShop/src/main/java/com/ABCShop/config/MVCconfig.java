package com.ABCShop.config;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.mysql.cj.Session;

@Configuration
@EnableWebMvc
public class MVCconfig extends WebMvcConfigurerAdapter {
	@Autowired
	Environment environment ;
	
	@Bean
	public static PropertySourcesPlaceholderConfigurer PropertySourcesPlaceholderConfigurer() {
		return new PropertySourcesPlaceholderConfigurer();
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/DATA/**").addResourceLocations("/resources/");
		registry.addResourceHandler("/template/**").addResourceLocations("/template/");
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}
	
//	@Bean(value = "GetDataSource")
//	public javax.sql.DataSource GetDataSource() {
//		DriverManagerDataSource dataSource = new DriverManagerDataSource();
//		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql://localhost:3306/english4u");
//		dataSource.setUsername("root");
//		dataSource.setPassword("admin123");
//		return dataSource;
//	}
//	
//	@Bean
//	public LocalSessionFactoryBean factoryBean() {
//		LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
//		sessionFactoryBean.setDataSource(GetDataSource());
//		// chua cac class,cac class nay se map voi data base
//		sessionFactoryBean.setPackagesToScan("com.shop4u.entity");
//
//		Properties hibernateProperties = new Properties();
//		// cho phep lam viec voi cac loai data base khac nhau
//		hibernateProperties.put("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
//		// cho phep hien thi cac cau lenh tren console
//		hibernateProperties.put("hibernate.show_sql", true);
//
//		sessionFactoryBean.setHibernateProperties(hibernateProperties);
//
//		return sessionFactoryBean;
//
//	}
//
//	@Bean(name = "transactionManager")
//	@Autowired
//	public HibernateTransactionManager hibernateTransactionManager(SessionFactory hi) {
//		HibernateTransactionManager HRM = new HibernateTransactionManager();
//		HRM.setSessionFactory(hi);
//		return HRM;
//	}

//	@Bean("messageSource")
//	public MessageSource messageSource() {
//
//		ReloadableResourceBundleMessageSource bundleMessageSource = new ReloadableResourceBundleMessageSource();
//		//bundleMessageSource.setBasename("classpath:messages");
//		bundleMessageSource.setBasename("classpath:language/messages");
//		bundleMessageSource.setDefaultEncoding("utf-8");
//
//		return bundleMessageSource;
//	}
//	
//	@Bean
//	public LocaleResolver localeResolver() {
//		SessionLocaleResolver lr = new SessionLocaleResolver();
//		lr.setDefaultLocale(new Locale("ja"));
//		return lr;
//	}
//	
//	@Bean
//	public LocaleChangeInterceptor changeInterceptor() {
//		LocaleChangeInterceptor lci = new LocaleChangeInterceptor();
//		lci.setParamName("lang");
//		return lci;
//	}
//	
//	@Override
//	public void addInterceptors(InterceptorRegistry registry) {
//		registry.addInterceptor(changeInterceptor());
//	}
}
