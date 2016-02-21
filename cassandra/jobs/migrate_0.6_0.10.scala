import com.datastax.spark.connector._ //Imports basic rdd functions
import com.datastax.spark.connector.cql._ //(Optional) Imports java driver helper functions


println(s"Starting migration from ${System.getenv("KEYSPACE")}.${System.getenv("TABLE")} to ${System.getenv("KEYSPACE")}.${System.getenv("TABLE")}_v10 ")
val events = sc.cassandraTable(System.getenv("KEYSPACE"), System.getenv("TABLE"))

println(s"Found ${events.count} events.")
