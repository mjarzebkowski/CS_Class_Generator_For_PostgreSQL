# [CmdletBinding()] 
# Param ( 
# 	[Parameter(Mandatory=$True)] 
# 	[string]$param1, 
# 	[Alias("p2")] 
# 	[string]$param2,
# 	[switch]$param3 
# )
# $foldername = "PostgreSQL_Csharp_classes"
# new-item -Name $foldername -ItemType directory
# connect to postgres
# create folders
# create classes
	#insert is-exist? dependency
	#insert sql dependencies
#
$MyServer = "localhost"
$MyPort  = "5432"
$MyDB = "LOG"
$MyUid = "postgres"
$MyPass = "postgres"

$DBConnectionString = "Driver={PostgreSQL UNICODE(x64)};Server=$MyServer;Port=$MyPort;Database=$MyDB;Uid=$MyUid;Pwd=$MyPass;"
$DBConn = New-Object System.Data.Odbc.OdbcConnection;
$DBConn.ConnectionString = $DBConnectionString;
$DBConn.Open();
$DBCmd = $DBConn.CreateCommand();
$DBCmd.CommandText = "SELECT * FROM tb_module;";
$DBCmd.ExecuteReader();
$DBConn.Close(); 