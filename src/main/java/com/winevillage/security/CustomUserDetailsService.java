package com.winevillage.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.winevillage.member.IMemberService;
import com.winevillage.member.MemberDTO;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    IMemberService dao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        MemberDTO memberDTO = dao.findMemberId(username);
        if (memberDTO == null) {
            throw new UsernameNotFoundException("User not found" + username);
        }
        return User.withUsername(memberDTO.getMemberId())
        					.password(memberDTO.getMemberPassword())
        					.roles("USER")
        					.build();
    }
}
