package me.maweiyi.sword;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("me.maweiyi.sword.model.dao")
@EnableTransactionManagement
public class SwordApplication {

	public static void main(String[] args) {
		SpringApplication.run(SwordApplication.class, args);
	}
}
