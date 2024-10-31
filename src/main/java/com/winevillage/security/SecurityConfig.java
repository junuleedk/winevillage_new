package com.winevillage.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.firewall.StrictHttpFirewall;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
	
	@Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
	   http
	       .csrf(csrf -> csrf.disable())
	       .authorizeHttpRequests(auth -> auth
	    		   .anyRequest().permitAll()
	       );
	   http.formLogin((formLogin) -> formLogin
				//.loginPage("/login")
				.loginProcessingUrl("/shop/auth/login_check")
				.defaultSuccessUrl("/")
				//.failureUrl("/error")
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
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public HttpFirewall httpFirewall() {
	    StrictHttpFirewall firewall = new StrictHttpFirewall();
	    // 모든 쿠키 값 허용
	    firewall.setAllowedHeaderValues(value -> 
	        value.contains("search_recently_cookie") || !value.contains("cookie"));
	    return firewall;
	}
	
	@Bean
	public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
	    return authenticationConfiguration.getAuthenticationManager();
	}
	

}
