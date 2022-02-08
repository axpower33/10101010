ORIGIN		= Symantec C++
ORIGIN_VER	= Version 7.22
VERSION		= RELEASE

!IFDEF SUB_DEBUG
DEBUG		= $(SUB_DEBUG)
NDEBUG		= !$(SUB_DEBUG)
!ELSE
DEBUG		= 0
NDEBUG		= 1
!ENDIF

PROJ		= FRSHELL
APPTYPE		= WIN32 EXE
PROJTYPE	= EXE

CC		= SC
CPP		= SPP
JAVAC		= sj
MAKE		= SMAKE
RC		= RCC
HC		= HC31
ASM		= SC
DISASM		= OBJ2ASM
LNK		= LINK
DLLS		= 

HEADERS		= ..\..\..\..\..\SC\INCLUDE\win32\winver.h ..\..\..\..\..\SC\INCLUDE\win32\scdefs.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxres.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\afxres.h ..\..\..\..\..\SC\INCLUDE\win32\poppack.h ..\..\..\..\..\SC\INCLUDE\win32\pshpack1.h stdafx.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\afxwin.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxwin.h ..\..\..\..\..\SC\MFC\INCLUDE\afx.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afx.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\afxver_.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxver_.h ..\..\..\..\..\SC\MFC\INCLUDE\afxv_w32.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxv_w32.h  \
		..\..\..\..\..\SC\INCLUDE\windows.h ..\..\..\..\..\SC\INCLUDE\win32\windows.h ..\..\..\..\..\SC\INCLUDE\excpt.h ..\..\..\..\..\SC\INCLUDE\stdarg.h  \
		..\..\..\..\..\SC\INCLUDE\windef.h ..\..\..\..\..\SC\INCLUDE\win32\windef.h ..\..\..\..\..\SC\INCLUDE\winnt.h ..\..\..\..\..\SC\INCLUDE\win32\winnt.h  \
		..\..\..\..\..\SC\INCLUDE\ctype.h ..\..\..\..\..\SC\INCLUDE\pshpack4.h ..\..\..\..\..\SC\INCLUDE\win32\pshpack4.h ..\..\..\..\..\SC\INCLUDE\poppack.h  \
		..\..\..\..\..\SC\INCLUDE\string.h ..\..\..\..\..\SC\INCLUDE\winbase.h ..\..\..\..\..\SC\INCLUDE\win32\winbase.h ..\..\..\..\..\SC\INCLUDE\winerror.h  \
		..\..\..\..\..\SC\INCLUDE\win32\winerror.h ..\..\..\..\..\SC\INCLUDE\wingdi.h ..\..\..\..\..\SC\INCLUDE\win32\wingdi.h ..\..\..\..\..\SC\INCLUDE\pshpack1.h  \
		..\..\..\..\..\SC\INCLUDE\pshpack2.h ..\..\..\..\..\SC\INCLUDE\win32\pshpack2.h ..\..\..\..\..\SC\INCLUDE\winuser.h ..\..\..\..\..\SC\INCLUDE\win32\winuser.h  \
		..\..\..\..\..\SC\INCLUDE\winnls.h ..\..\..\..\..\SC\INCLUDE\win32\winnls.h ..\..\..\..\..\SC\INCLUDE\wincon.h ..\..\..\..\..\SC\INCLUDE\win32\wincon.h  \
		..\..\..\..\..\SC\INCLUDE\winver.h ..\..\..\..\..\SC\INCLUDE\winreg.h ..\..\..\..\..\SC\INCLUDE\win32\winreg.h ..\..\..\..\..\SC\INCLUDE\winnetwk.h  \
		..\..\..\..\..\SC\INCLUDE\win32\winnetwk.h ..\..\..\..\..\SC\INCLUDE\winsvc.h ..\..\..\..\..\SC\INCLUDE\win32\winsvc.h ..\..\..\..\..\SC\INCLUDE\mcx.h  \
		..\..\..\..\..\SC\INCLUDE\win32\mcx.h ..\..\..\..\..\SC\INCLUDE\imm.h ..\..\..\..\..\SC\INCLUDE\win32\imm.h ..\..\..\..\..\SC\INCLUDE\commctrl.h  \
		..\..\..\..\..\SC\INCLUDE\win32\commctrl.h ..\..\..\..\..\SC\INCLUDE\prsht.h ..\..\..\..\..\SC\INCLUDE\win32\prsht.h ..\..\..\..\..\SC\INCLUDE\tchar.h  \
		..\..\..\..\..\SC\INCLUDE\mbstring.h ..\..\..\..\..\SC\INCLUDE\mbctype.h ..\..\..\..\..\SC\INCLUDE\stdio.h ..\..\..\..\..\SC\INCLUDE\stdlib.h  \
		..\..\..\..\..\SC\INCLUDE\time.h ..\..\..\..\..\SC\MFC\INCLUDE\afxcoll.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxcoll.h ..\..\..\..\..\SC\MFC\INCLUDE\afxstat_.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxstat_.h ..\..\..\..\..\SC\INCLUDE\shellapi.h ..\..\..\..\..\SC\INCLUDE\win32\shellapi.h ..\..\..\..\..\SC\MFC\INCLUDE\afxmsg_.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxmsg_.h ..\..\..\..\..\SC\MFC\INCLUDE\afxdd_.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxdd_.h ..\..\..\..\..\SC\INCLUDE\limits.h  \
		..\..\..\..\..\SC\MFC\INCLUDE\afxext.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxext.h ..\..\..\..\..\SC\MFC\INCLUDE\afxdlgs.h ..\..\..\..\..\SC\MFC\INCLUDE\mfc30\afxdlgs.h  \
		..\..\..\..\..\SC\INCLUDE\commdlg.h ..\..\..\..\..\SC\INCLUDE\win32\commdlg.h FRSHELL.h ..\..\..\..\..\SC\INCLUDE\fcntl.h  \
		..\..\..\..\..\SC\INCLUDE\conio.h ..\..\..\..\..\SC\INCLUDE\io.h ..\..\..\..\..\SC\INCLUDE\sys\stat.h ..\..\..\..\..\SC\INCLUDE\math.h  \
		..\..\..\..\..\SC\INCLUDE\alloc.h ..\..\..\..\..\SC\INCLUDE\direct.h fr3ddoc.h fr3dvw.h  \
		mainfrm.h cfrmodin.h cpathdia.h resource.h  \
		..\..\..\..\..\SC\mfc\include\32-bit\afxwin.h ..\..\..\..\..\SC\mfc\include\32-bit\afx.h ..\..\..\..\..\SC\mfc\include\32-bit\afxver_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxv_w32.h  \
		..\..\..\..\..\SC\include\stddef.h ..\..\..\..\..\SC\include\crtdbg.h ..\..\..\..\..\SC\mfc\include\32-bit\afxcoll.h ..\..\..\..\..\SC\mfc\include\32-bit\afxstat_.h  \
		..\..\..\..\..\SC\mfc\include\afxtls_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxtls_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxres.h ..\..\..\..\..\SC\mfc\include\32-bit\afxmsg_.h  \
		..\..\..\..\..\SC\mfc\include\32-bit\afxdd_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxext.h ..\..\..\..\..\SC\mfc\include\32-bit\afxdlgs.h ..\..\..\..\..\SC\include\richedit.h  \
		..\..\..\..\..\SC\include\win32\RICHEDIT.H ..\..\..\..\..\SC\include\win32\VER.H ..\..\..\..\..\SC\include\ver.h ..\..\..\..\..\SC\mfc\include\32-bit\winres.h 

DEFFILE		= frshell.DEF

!IF $(DEBUG)
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Ae -mn -C -o+time -WA -ff -S -3 -a8 -c -H -HO- -g 
CFLAGS_1	=  -cpp -Ae -mn -C -o+time -WA -ff -S -4 -a8 -c -H -HO- -l -g
DEFINES_1	= -D_DEBUG=1 -D_X86_=1 -D_MT=1 -D_MBCS=1
LFLAGS		=  /CO /NOI /DE /NOPACKF /XN /NT /ENTRY:WinMainCRTStartup /VERS:1.0 /BAS:4194304 /A:512 /RC   :FRSHELL.RES
DEFINES		= -D_DEBUG=1 -D_X86_=1 -D_MT=1 -D_MBCS=1
!ELSE
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Ae -mn -o+time -WA -ff -GT65535 -3 -a8 -c -H -HO- -gh -gg 
CFLAGS_1	=  -cpp -Ae -mn -o+time -WA -3 -a8 -c -H -HO-
DEFINES_1	= -D_X86_=1 -D_MT=1 -D_MBCS=1
LFLAGS		=  /NOI /DE /PACKF /XN /NT /ENTRY:WinMainCRTStartup /VERS:1.0 /BAS:4194304 /A:512 /RC   :FRSHELL.RES
DEFINES		= -D_X86_=1 -D_MT=1 -D_MBCS=1
!ENDIF

HFLAGS		= $(CFLAGS) 
MFLAGS		= MASTERPROJ=$(PROJ) 
LIBFLAGS	=  /C 
RESFLAGS	=  -32 
DEBUGGERFLAGS	=  -STARTUP 
AFLAGS		= $(CFLAGS) 
HELPFLAGS	= 

MODEL		= N

PAR		= PROJS BATS OBJS

RCDEFINES	= -D_MFC_VER=0x300

INCLUDES	= 

INCLUDEDOBJS	= 

OBJS		= mainfrm.OBJ fr3ddoc.OBJ FRSHELL.OBJ  \
		fr3dvw.OBJ 

RCFILES		=  FRSHELL.RES 

RESFILES	= 

HELPFILES	= 

BATS		= 

.SUFFIXES: .C .CP .CPP .CXX .CC .H .HPP .HXX .COM .EXE .DLL .LIB .RTF .DLG .ASM .RES .RC .OBJ 

.C.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.c

.CPP.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cpp

.CXX.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cxx

.CC.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cc

.CP.OBJ:
	$(CC) $(CFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.cp

.H.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.h

.HPP.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.hpp

.HXX.SYM:
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF -o.\$(*B).sym $*.hxx

.C.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)   $*.c   -o$*.lst

.CPP.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.cpp -o$*.lst

.CXX.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.cxx -o$*.lst

.CP.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)  $*.cp  -o$*.lst

.CC.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES)  $*.cc  -o$*.lst

.ASM.EXP:
	$(CPP) $(CFLAGS) $(DEFINES) $(INCLUDES) $*.asm -o$*.lst

.OBJ.COD:
	$(DISASM) $*.OBJ -c

!IF $(DEBUG)
.OBJ.EXE:
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ELSE
.OBJ.EXE:
		$(LNK) $(LFLAGS) @$(PROJ).LNK<<
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ENDIF

.RTF.HLP:
	$(HC) $(HELPFLAGS) $*.HPJ

.ASM.OBJ:
	$(ASM) $(AFLAGS) $(DEFINES) $(INCLUDES) -o$*.obj $*.asm

.RC.RES: 
	$(RC) $(RCDEFINES) $(RESFLAGS) $(INCLUDES) $*.rc -o$*.res

.DLG.RES:
	echo ^#include "windows.h" >$$$*.rc
	echo ^IF EXIST "$*.h" >>$$$*.rc
	echo ^#include "$*.h" >>$$$*.rc
	echo ^#include "$*.dlg" >>$$$*.rc
	$(RC) $(RCDEFINES) $(RESFLAGS) $(INCLUDES) $$$*.rc
	-del $*.res
	-ren $$$*.res $*.res



all:	noteout createdir $(PRECOMPILE) $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(POSTCOMPILE) $(TARGETDIR)\$(PROJ).$(PROJTYPE) $(POSTLINK) _done


all2:	createdir $(PRECOMPILE) $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(POSTCOMPILE) $(TARGETDIR)\$(PROJ).$(PROJTYPE) $(POSTLINK) _done

noteout:
	REM Output to $(OUTPUTDIR)

createdir:
	$(CREATEOUTPUTDIR)
	$(CREATETARGETDIR)
	
$(TARGETDIR)\$(PROJ).$(PROJTYPE): $(SYMS) $(OBJS) $(INCLUDEDOBJS) $(RCFILES) $(RESFILES) $(HELPFILES) $(DEFFILE)
			-del $(TARGETDIR)\$(PROJ).$(PROJTYPE)
!IF $(DEBUG)
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ENDIF

			-ren $(TARGETDIR)\$$SCW$$.$(PROJTYPE) $(PROJ).$(PROJTYPE)
			-echo $(TARGETDIR)\$(PROJ).$(PROJTYPE) built

_done:
		REM  Project is up to date

buildall:	clean	all


clean:
		-del $(TARGETDIR)\$$SCW$$.$(PROJTYPE)
		-del $(PROJ).CLE
		-del $(OUTPUTDIR)\SCPH.SYM
		-del FRSHELL.dpd
		-del $(OBJS)
		-del $(SYMROOT).SYM
		-del $(SYMROOT).PCO
		-del FRSHELL.RES

cleanres:
		-del FRSHELL.RES

res:		cleanres $(RCFILES) all


link:
!IF $(DEBUG)
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
fr3ddoc.OBJ+
FRSHELL.OBJ+
fr3dvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
frshell.DEF;
<<
!ENDIF

		-del $(TARGETDIR)\$(PROJ).$(PROJTYPE)
		-ren $(TARGETDIR)\$$SCW$$.$(PROJTYPE) $(PROJ).$(PROJTYPE)




!IF EXIST (FRSHELL.dpd)
!INCLUDE FRSHELL.dpd
!ENDIF

FRSHELL.OBJ:	FRSHELL.cpp
		$(CC) $(CFLAGS_1) $(DEFINES_1) $(INCLUDES) -oFRSHELL.obj FRSHELL.cpp


$(SYMROOT).SYM: stdafx.h
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF$(SYMROOT).SYM -o$(SYMROOT).PCO stdafx.h



