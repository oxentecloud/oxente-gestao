dataSource {
	pooled = true
	//dialect = 'com.e4net.hibernate.dialect.PostgreSQL91Dialect'
	driverClassName = "org.postgresql.Driver"
	username = "oxente"
	password = "@oxentedev@"
 	
}
hibernate {
	cache.use_second_level_cache=true
	cache.use_query_cache=true
    cache.provider_class='net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
	development {
		dataSource {
			dbCreate = "create" // one of 'create', 'create-drop','update'
			url= "jdbc:postgresql://localhost:5432/oxente_dev"
			
		}
		hibernate {
			show_sql = true
		}
	}
	test {
		dataSource {
			dbCreate = "create-drop" // one of 'create', 'create-drop','update'
			url= "jdbc:postgresql://localhost:5432/oxente_test"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			url= "jdbc:postgresql://localhost:5432/oxente_prod"
		}
	}
}