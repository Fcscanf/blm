package com.blm;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class encodeTest {

    private static Logger logger = LoggerFactory.getLogger(encodeTest.class);

    BCryptPasswordEncoder encode = new BCryptPasswordEncoder();

    @Test
    public void encode(){
        System.out.println(encode.matches("123456789zqk","$2a$10$/BpNUjd1ZIDo3UGLTUqrce68g0ce5Zs7tf8a6XOpQfZ7EoUKMdpCO"));
    }

    @Test
    public void testlog(){
        logger.info("日志");
    }
}
