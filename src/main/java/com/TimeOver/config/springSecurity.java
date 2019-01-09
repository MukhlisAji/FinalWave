/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.TimeOver.config;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 *
 * @author Mukhlish
 */
@EnableWebSecurity
@Configuration
public class springSecurity extends WebSecurityConfigurerAdapter {

    @Autowired
    DataSource dataSource;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        String nik = "14409";
//        Employee employee = ei.getemployeeById(nik);
//        Employee employee = (Employee) o;
//        System.out.println(employee.getNik());
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("SELECT nik,password,is_active FROM employee WHERE nik =?")
                .authoritiesByUsernameQuery("select nik, is_admin from employee where nik =?");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable() //disable cross site request forgery (csrf) protection
                .authorizeRequests()
                .antMatchers("/login").permitAll() //izinkan semua (termasuk default spring-security login page
//                .antMatchers("/DashboardAdmin/**").hasRole("ADMIN")
                .anyRequest().authenticated() //selain yang di atas harus authenticated
                .and()
                .formLogin()
                .loginPage("/login")
                .and()
                .logout() //logout config
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/");
    }
    
    @Override
    public void configure(WebSecurity web) throws Exception{
        web.ignoring().antMatchers("/h2-console/**");
    }
    
    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }
}

//@Configuration
//@EnableAutoConfiguration
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//    @Autowired
//    DataSource dataSource;
//
//    @Autowired
//    public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
//        auth.jdbcAuthentication().dataSource(dataSource)
//                .usersByUsernameQuery("select username,password, enabled from users where username=?")
//                .authoritiesByUsernameQuery("select username, role from user_roles where username=?");
//    }
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//        http.authorizeRequests().antMatchers("/", "/home").permitAll().antMatchers("/admin").hasRole("ADMIN")
//                .anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll().and().logout()
//                .permitAll();
//        http.exceptionHandling().accessDeniedPage("/403");
//    }
//}
