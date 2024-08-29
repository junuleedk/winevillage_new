package com.winevillage.security;

import java.util.concurrent.ConcurrentHashMap;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	private ConcurrentHashMap<String, Integer> loginAttempts = new ConcurrentHashMap<>();
	
	@Autowired
	private DataSource dataSource;
	
	@Autowired
	protected void configure(AuthenticationManagerBuilder auth)
			throws Exception {
		auth.jdbcAuthentication()
			.dataSource(dataSource)
			.usersByUsernameQuery("select memberid, memberpassword, memberenabled "
					+ " from member where memberid = ?")
			.authoritiesByUsernameQuery("select memberid, memberrole "
					+ " from member where memberid = ?")
			.passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http.csrf(csrf -> csrf.disable())
			.authorizeHttpRequests(auth -> auth
					.requestMatchers("/", "**").permitAll()
					.requestMatchers("/css/**", "/js/**", "/images/**", "/uploads/**").permitAll()
					.anyRequest().authenticated()
			);
		http.formLogin((formLogin) -> formLogin
				//.loginPage("/login")
				.loginProcessingUrl("/shop/auth/login_check")
				.successHandler(new AuthSuccessHandler(loginAttempts))
				//.failureUrl("/error")
				.failureHandler(new AuthFailureHandler(loginAttempts))
				.usernameParameter("login_user_id")
				.passwordParameter("login_passwd")
				.permitAll()
		);
		http.logout((logout) -> logout
				.logoutUrl("/shop/auth/logout")
				//.logoutSuccessHandler(new DeauthSuccessHandler())
				.invalidateHttpSession(true)
				.clearAuthentication(true)
				//.logoutSuccessUrl("/")
				.permitAll()
		);
		http.exceptionHandling((expHandling) -> expHandling
				.accessDeniedPage("/denied")
		);
		
		return http.build();
	}
	
//	public static String getCurrentURL(HttpServletRequest request) {
//        StringBuffer url = request.getRequestURL();
//        String queryString = request.getQueryString();
//
//        if (queryString != null) {
//            url.append('?').append(queryString);
//        }
//
//        return url.toString();
//    }
	
	@Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration)
            throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }
}
