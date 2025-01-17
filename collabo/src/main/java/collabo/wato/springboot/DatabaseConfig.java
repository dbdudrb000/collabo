//package collabo.wato.springboot;
//
//import javax.sql.DataSource;
//
//import org.apache.ibatis.session.SqlSessionFactory;
//import org.mybatis.spring.SqlSessionFactoryBean;
//import org.mybatis.spring.SqlSessionTemplate;
//import org.mybatis.spring.annotation.MapperScan;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Configuration
//@MapperScan(basePackages="collabo.wato.springboot.web.*.mapper")
//@EnableTransactionManagement
//public class DatabaseConfig {
//
//	@Bean
//	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
//	final SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
//	sessionFactory.setDataSource(dataSource);
//	sessionFactory.setTypeAliasesPackage("collabo.wato.springboot.web.*.vo");
//	PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
//	sessionFactory.setMapperLocations(resolver.getResources("mybatis.mapper/*.xml"));
//	return sessionFactory.getObject();
//	}
//
//	@Bean
//	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) throws Exception {
//	final SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory);
//	return sqlSessionTemplate;
//	}
//
//}
//
