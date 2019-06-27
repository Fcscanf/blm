package com.blm;

import org.junit.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class encodeTest {

    BCryptPasswordEncoder encode = new BCryptPasswordEncoder();

    @Test
    public void encode(){
        System.out.println(encode.matches("123456789zqk","$2a$10$/BpNUjd1ZIDo3UGLTUqrce68g0ce5Zs7tf8a6XOpQfZ7EoUKMdpCO"));
    }
}
