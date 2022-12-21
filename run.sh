#docker run gvenzl/oracle-xe  -e ORACLE_PASSWORD=oracle -d -p1521:1521  -v oracle-volume:/home/mat/repo/oracle/oracle-xe
#https://hub.docker.com/r/gvenzl/oracle-xe
#Example JDBC connect string with dynamic port allocation: jdbc:oracle:thin:@localhost:${{ job.services.oracle.ports[1521] }}/XEPDB
#docker run   -e  gvenzl/oracle-xe -d -p1521:1521  -v oracle-volume:/home/mat/repo/oracle/oracle-xe
docker run   -e ORACLE_RANDOM_PASSWORD=yes gvenzl/oracle-xe -d -p1521:1521   -v /home/mat/repo/oracle/init_scripts:/container-entrypoint-initdb.d
