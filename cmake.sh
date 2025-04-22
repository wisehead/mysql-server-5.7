#############################################################
#   File Name: cmake.sh
#     Autohor: Hui Chen (c) 2025
#        Mail: chenhui13@xxx.com
# Create Time: 2025/04/22-10:08:53
#############################################################
#!/bin/sh 
export CFLAGS="-O0 -g"
export CXXFLAGS="-O0 -g -std=c++11"
cmake .. \
	-DCMAKE_INSTALL_PREFIX=/data/mysql \
	-DMYSQL_DATADIR=/data/mysql/data \
	-DSYSCONFDIR=/data/mysql/etc \
	-DWITH_MYISAM_STORAGE_ENGINE=1 \
	-DWITH_INNOBASE_STORAGE_ENGINE=1 \
	-DWITH_MEMORY_STORAGE_ENGINE=1 \
	-DWITH_READLINE=1 \
	-DMYSQL_UNIX_ADDR=/data/mysql/mysqld/mysqld.sock \
	-DMYSQL_TCP_PORT=3306 \
	-DENABLED_LOCAL_INFILE=1 \
	-DWITH_PARTITION_STORAGE_ENGINE=1 \
	-DEXTRA_CHARSETS=all \
	-DDEFAULT_CHARSET=utf8mb4 \
	-DDEFAULT_COLLATION=utf8mb4_unicode_ci -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/home/chenhui/github/mysql-server/boost_1_59_0 -DCMAKE_BUILD_TYPE=Debug -DCMAKE_C_FLAGS='-O0 -g -lpthread' -DCMAKE_CXX_FLAGS='-O0 -g -std=c++11 -w -lpthread' 
