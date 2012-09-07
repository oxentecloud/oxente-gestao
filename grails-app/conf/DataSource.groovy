dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
	cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "create" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/gestor_dev"
			username = "root"
			password = "root"
		}
		hibernate {
			show_sql = true
		}
	}
	test {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url = "jdbc:mysql://localhost/gestor_test"
			username = "root"
			password = "root"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url = "jdbc:mysql://mysql-oxentegestor.jelastic.servint.net/oxente_dev"
			username = "root"
			password = "1KqBFYYA0U"
		}
	}
}