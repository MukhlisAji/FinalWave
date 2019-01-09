package com.TimeOver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.session.jdbc.config.annotation.web.http.EnableJdbcHttpSession;

@SpringBootApplication
@EnableJpaAuditing
@EnableJdbcHttpSession
public class TimeOverApplication {

    public static void main(String[] args) {
        SpringApplication.run(TimeOverApplication.class, args);
    }

}