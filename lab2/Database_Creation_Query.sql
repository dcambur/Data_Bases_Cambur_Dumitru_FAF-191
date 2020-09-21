CREATE DATABASE DimaLab1
ON PRIMARY (NAME= 'DimaLab1_dat', FILENAME = "/MyDocuments/Data/DimaLab1.mdf" ,FILEGROWTH = 16MB, MAXSIZE = 128MB),
FILEGROUP DimaLabTest_sec (NAME= 'DimaLabTest_dat_sec', FILENAME = "/MyDocuments/Data/DimaLab1_sec.ndf" ,FILEGROWTH = 64MB, MAXSIZE = 1024MB)
LOG ON (NAME= 'DimaLabTest_log', FILENAME = "/MyDocuments/Log/DimaLab1.ldf", FILEGROWTH = 64MB, MAXSIZE = 1024MB);

CREATE DATABASE DimaLab2 
ON PRIMARY (NAME= 'DimaLab2_dat', FILENAME = "/MyDocuments/Data/DimaLab2.mdf" ,FILEGROWTH = 16MB, MAXSIZE = 128MB),
FILEGROUP DimaLabTest_sec (NAME= 'DimaLab2_dat_sec', FILENAME = "/MyDocuments/Data/DimaLab2_sec.ndf" ,FILEGROWTH = 64MB, MAXSIZE = 1024MB)
LOG ON (NAME= 'DimaLabTest2_log', FILENAME = "/MyDocuments/Log/DimaLab02.ldf", FILEGROWTH = 64MB, MAXSIZE = 1024MB);
GO