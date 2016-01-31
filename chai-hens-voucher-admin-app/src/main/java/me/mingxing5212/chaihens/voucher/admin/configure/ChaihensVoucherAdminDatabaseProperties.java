package me.mingxing5212.chaihens.voucher.admin.configure;

import com.zaxxer.hikari.HikariConfig;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "chaihens.voucher.admin.dataSource")
public class ChaihensVoucherAdminDatabaseProperties extends HikariConfig {
}
