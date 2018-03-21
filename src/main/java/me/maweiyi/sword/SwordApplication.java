package me.maweiyi.sword;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("me.maweiyi.sword.model.dao")
public class SwordApplication {

	public static void main(String[] args) {
		SpringApplication.run(SwordApplication.class, args);
	}
}
