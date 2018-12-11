//* SKELETON: DFSIXSOY
//*
//*
//* THE FOLLOWING STEP LOADS THE HIDAM/OSAM CATALOG DATA BASE
//*
//ZCLUDPRC JCLLIB ORDER=(${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.PROCLIB)
//CATLOAD EXEC PGM=DFS3PU00,
//  PARM=(DLI,DFS3PU00,DFSCPL00,,,,,,,,,,,N,N,,,,,,,,,,,,'DFSDF=CAT')
//*
//DFSRESLB DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.SDFSRESL,DISP=SHR
//STEPLIB  DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.SDFSRESL,DISP=SHR
//PROCLIB  DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.PROCLIB,DISP=SHR
//IMS      DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.DBDLIB,DISP=SHR
//         DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.PSBLIB,DISP=SHR
//IMSACBA  DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.ACBLIB,DISP=SHR
//MODSTAT  DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.MODSTAT,DISP=SHR
//IEFRDER  DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.IMSLOG1,DISP=(NEW,DELETE),
//            DCB=(RECFM=VB,LRECL=4092,BLKSIZE=4096,BUFNO=5),
//            SPACE=(CYL,(100,75)),UNIT=SYSDA
//IEFRDER2 DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.IMSLOG2,DISP=(NEW,DELETE),
//            DCB=(RECFM=VB,LRECL=4092,BLKSIZE=4096,BUFNO=5),
//            SPACE=(CYL,(100,75)),UNIT=SYSDA
//DFSVSAMP DD DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.PROCLIB(DFSVSMHP),DISP=SHR
//SYSPRINT DD  SYSOUT=*
//SYSABEND DD  SYSOUT=*
//IMSACB0X DD  DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.ACBLIB,DISP=SHR
//IMSACB01 DD  DSN=${instance-DFS_AUTH_LIB_HLQ1}.${instance-DFS_AUTH_LIB_HLQ2}.ACBLIB,DISP=SHR
//ACBCATWK DD  DUMMY
//SYSOUT   DD  SYSOUT=*
//*SYSINP   DD  *
//*			   MANAGEDACBS=SETUP
//*