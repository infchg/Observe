//dbverif.groovy

import groovy.sql.Sql
import net.sourceforge.jtds.jdbc.Driver  //#needs the jars

def env = System.getenv()
def dbServer = env.'DB_Server'
def dbUser = env.'DB_User'
def dbPass = env.'DB_Pass'

println "with db=${dbServer} $dbUser  $dbPass"
println System.getProperty("java.library.path");
println System.properties.find { it.key == "java.home" }

def CONN_STRING="jdbc:jtds:sqlserver://DB256IN.appspot.org/INFCHG;useNTLMv2=true;useLOBs=false;" as String
def DRIVER_CLASS="net.sourceforge.jtds.jdbc.Driver" // com.microsoft.sqlserver.jdbc.SQLServerDriver 
def sql = Sql.newInstance(CONN_STRING , DRIVER_CLASS)
def aa=  sql.execute("select cINF,icode from [DFRDB].[Global].[dbo].[zone] where icode = 122")
def rows = sql.rows("select * from [DFRDB].[Global].[dbo].[zone] where icode = 122 ")

println "expecting 1 row only" 
 assert rows.size() == 1  
 println rows.join('\n')

