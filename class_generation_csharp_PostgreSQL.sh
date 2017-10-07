#!/bin/bash

#PRESET COLOUR
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# VARIABLES TO CONNECTION STRING WITH DEFAULT / PRESET ARGUMENTS
SERVER="localhost"
DBNAME="xRider_main"
LOGIN="postgres"
PASSWORD="postgres"
PORT="5432"

#get other connection variables if set
while [ $# -gt 0 ]
do
echo "$i: $1"
  case $1 in
		-p|--p|-P|--P)
			PORT=$2
			;;
		-s|--server|-S|--SERVER)
			SERVER=$2
			;;
		-D|-DB|-DBNAME)
			DBNAME=$2
			;;

		-l|--login|-L|--LOGIN)
			LOGIN=$2
			;;
		-pass|--PASS|--password)
			PASSWORD=$2
			;;
	esac
	let i=$i+1
	shift
done

printf $GREEN"Starting script \n\n"$NC;
printf $NC;
printf $GREEN "Given variables: \n"$NC;
printf $NC;

printf "server "$SERVER"\n";
printf "dbname "$DBNAME"\n";
printf "login "$LOGIN"\n";
printf "password "$PASSWORD"\n";
printf "port "$PORT"\n";

printf $NC;

printf "Connecting to PostgreSQL...""\n""\n";

#vartest=$(psql -h $SERVER -p $PORT -U $LOGIN -W $PASSWORD -t -c "SELECT * FROM information_schema.tables WHERE table_type = 'BASE TABLE' AND table_schema = 'public' ORDER BY table_type, table_name");
TABLELIST=`psql -d $DBNAME -U $LOGIN -h $SERVER -p $PORT -t -c "SELECT table_name FROM information_schema.tables WHERE table_type = 'BASE TABLE' AND table_schema = 'public' " `;
# psql -h $SERVER -U $LOGIN $DBNAME << EOF
# SELECT * 
# FROM information_schema.tables 
# WHERE table_type = 'BASE TABLE' $DBNAME
#     AND table_schema = 'public' 
# ORDER BY table_type, table_name
# EOF


# NEW DIR NAME
printf "\n =========== \n"
DIRNAME="PGSQL_connect_classes"
#
# sprawdzić czy istnieje już taki folder, sprawdzić czy istnieją jakieś pliki i czy je nadpisać
#
mkdir "$DIRNAME" #new dir in current directory
cd "$DIRNAME""/"
#$COLUMNLIST =`psql -d $DBNAME -U $LOGIN -h $SERVER -p $PORT -t -c "SELECT column_name FROM information_schema.columns WHERE table_name = '$line' " `;
printf "$TABLELIST"" oto lista tabel"
printf "\n =========== \n"


for line in $TABLELIST

	printf "$line"
	printf "\n =========== \n"
	$COLUMNLIST=`psql -d $DBNAME -U $LOGIN -h $SERVER -p $PORT -t -c "SELECT column_name FROM information_schema.columns WHERE table_name = '$line' " `;
	
	for column in $COLUMNLIST

	printf "\n =========== \n"
	printf $column
	done
done

echo "$vartest" >>

printf "\n =========== \n"
printf "$vartest"
printf "\n =========== \n"
printf "$WYNIK"
printf "\n =========== \n"

echo $WYNIK


# if [ (psql -h $SERVER -p $PORT -U $LOGIN -W $PASSWORD $DBNAME) ];
# 	then
# 		echo << " Conected to DB!";
# 	else
# 		echo << " Error with DB connection!";
# fi

# store arguments in a special array 
# args=("$@") 
# # get number of elements 
# ELEMENTS=${#args[@]} 
 
# # echo each element in array  
# # for loop 
# for (( i=0;i<$ELEMENTS;i++)); do 
#     echo ${args[${i}]} 
# done


# echo << 

psql -U postgres xRider_main -h localhost -p 5432 -t -c &quot; SELECT table_name FROM information_schema.tables WHERE table_type = 'BASETABLE' AND table_schema = 'public' &quot; `

# # VARIABLES TO CONNECTION STRING WITH DEFAULT

# SERVER="localhost"
# DBNAME="postgres"
# LOGIN="postgres"
# PASSWORD="postgres"
# PORT="5432"

# # SET CUSTOM CONNECTION VARIABLES, IF GIVEN

# if(){

# }

# if(){
	
# }

# if(){
	
# }

# if(){
	
# }

# if(){
	
# }




# # GET ALL TABLES FROM DATABASE

# SQL_FOUNDED_TABLES;

# # GET ALL COLUMNS FROM CURRENT TABLE 

# foreach()
# {

# }

# CURRENTCLASS="";


# foreach(){

# # CREATE HEADER

# 	cat > "Connector"+"$CURRENTCLASS".cs

# 	echo "using System;" > $CURRENTCLASS
# 	echo "using System.Collections.Generic;" > $CURRENTCLASS
# 	echo "using System.Linq;" > $CURRENTCLASS
# 	echo "using System.Threading.Tasks;" > $CURRENTCLASS
# 	echo "\n" > $CURRENTCLASS
# 	echo "namespace $CURRENTCLASS" > $CURRENTCLASS
# 	echo "{" > $CURRENTCLASS
# 	echo "\t"+"public class $CURRENTCLASS" > $CURRENTCLASS
# 	echo "\t"+"{" > $CURRENTCLASS	

# # CREATE OBJECT VARIABLES
# # GET ALL COLUMNS FROM CURRENT TABLE 
# foreach()
# {

# }

# # CREATE CONSTRUCTORS



# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS" > $CURRENTCLASS
# v	echo "text" > $CURRENTCLASS
# 	echo "text" > $CURRENTCLASS
# 	echo "text" > $CURRENTCLASS
# 	echo "text" > $CURRENTCLASS
# 	echo "text" > $CURRENTCLASS
# 	echo "text" > $CURRENTCLASS

# # SELECT
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS

# # INSERT
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS
# # ADD INSERT 
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS

# # CREATE
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS

# # UPDATE
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS
# # DELETE
# 	echo "\t"+"\t"+"void "+"$CURRENTCLASS"+"_Selector" > $CURRENTCLASS


# }

# # BACK TO WORKING DIRECTORY
# cd .. 