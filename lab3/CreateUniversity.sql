CREATE DATABASE university
ON PRIMARY (NAME= 'university_dat', FILENAME = "/MyDocuments/Data/university.mdf" ,FILEGROWTH = 16MB, MAXSIZE = 128MB),
FILEGROUP DimaLabTest_sec (NAME= 'university_dat_sec', FILENAME = "/MyDocuments/Data/university_sec.ndf" ,FILEGROWTH = 64MB, MAXSIZE = 1024MB)
LOG ON (NAME= 'university_log', FILENAME = "/MyDocuments/Log/university.ldf", FILEGROWTH = 64MB, MAXSIZE = 1024MB);
