ORIGIN		= Symantec C++
ORIGIN_VER	= Version 7.22
VERSION		= DEBUG

!IFDEF SUB_DEBUG
DEBUG		= $(SUB_DEBUG)
NDEBUG		= !$(SUB_DEBUG)
!ELSE
DEBUG		= 1
NDEBUG		= 0
!ENDIF

PROJ		= MDIAPP
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

HEADERS		= mainfrm.h mdiapdoc.h MDIAPP.h  \
		mdiappvw.h resource.h stdafx.h C:\..\SC\mfc\include\32-bit\afxres.h  \
		C:\..\SC\mfc\include\afxres.h C:\..\SC\include\win32\poppack.h C:\..\SC\include\win32\pshpack2.h C:\..\SC\include\win32\pshpack4.h  \
		C:\..\SC\mfc\include\afxwin.h C:\..\SC\mfc\include\32-bit\afxwin.h C:\..\SC\mfc\include\afx.h C:\..\SC\mfc\include\32-bit\afx.h  \
		C:\..\SC\mfc\include\afxver_.h C:\..\SC\mfc\include\32-bit\afxver_.h C:\..\SC\mfc\include\afxv_w32.h C:\..\SC\mfc\include\32-bit\afxv_w32.h  \
		C:\..\SC\include\windows.h C:\..\SC\include\win32\scdefs.h C:\..\SC\include\win32\WINDOWS.H C:\..\SC\include\excpt.h  \
		C:\..\SC\include\stdarg.h C:\..\SC\include\windef.h C:\..\SC\include\win32\WINDEF.H C:\..\SC\include\winnt.h  \
		C:\..\SC\include\win32\WINNT.H C:\..\SC\include\ctype.h C:\..\SC\include\pshpack4.h C:\..\SC\include\poppack.h  \
		C:\..\SC\include\string.h C:\..\SC\include\winbase.h C:\..\SC\include\win32\WINBASE.H C:\..\SC\include\winerror.h  \
		C:\..\SC\include\win32\WINERROR.H C:\..\SC\include\wingdi.h C:\..\SC\include\win32\WINGDI.H C:\..\SC\include\pshpack1.h  \
		C:\..\SC\include\win32\pshpack1.h C:\..\SC\include\pshpack2.h C:\..\SC\include\winuser.h C:\..\SC\include\win32\WINUSER.H  \
		C:\..\SC\include\winnls.h C:\..\SC\include\win32\WINNLS.H C:\..\SC\include\wincon.h C:\..\SC\include\win32\WINCON.H  \
		C:\..\SC\include\winver.h C:\..\SC\include\win32\WINVER.H C:\..\SC\include\winreg.h C:\..\SC\include\win32\WINREG.H  \
		C:\..\SC\include\winnetwk.h C:\..\SC\include\win32\WINNETWK.H C:\..\SC\include\winsvc.h C:\..\SC\include\win32\WINSVC.H  \
		C:\..\SC\include\mcx.h C:\..\SC\include\win32\MCX.H C:\..\SC\include\imm.h C:\..\SC\include\win32\IMM.H  \
		C:\..\SC\include\commctrl.h C:\..\SC\include\win32\COMMCTRL.H C:\..\SC\include\prsht.h C:\..\SC\include\win32\PRSHT.H  \
		C:\..\SC\include\tchar.h C:\..\SC\include\stdio.h C:\..\SC\include\stdlib.h C:\..\SC\include\time.h  \
		C:\..\SC\include\limits.h C:\..\SC\include\stddef.h C:\..\SC\include\crtdbg.h C:\..\SC\mfc\include\afxcoll.h  \
		C:\..\SC\mfc\include\32-bit\afxcoll.h C:\..\SC\mfc\include\afxstat_.h C:\..\SC\mfc\include\32-bit\afxstat_.h C:\..\SC\mfc\include\afxtls_.h  \
		C:\..\SC\mfc\include\32-bit\afxtls_.h C:\..\SC\include\shellapi.h C:\..\SC\include\win32\shellapi.h C:\..\SC\mfc\include\afxmsg_.h  \
		C:\..\SC\mfc\include\32-bit\afxmsg_.h C:\..\SC\mfc\include\afxdd_.h C:\..\SC\mfc\include\32-bit\afxdd_.h C:\..\SC\mfc\include\afxext.h  \
		C:\..\SC\mfc\include\32-bit\afxext.h C:\..\SC\mfc\include\afxdlgs.h C:\..\SC\mfc\include\32-bit\afxdlgs.h C:\..\SC\include\commdlg.h  \
		C:\..\SC\include\win32\COMMDLG.H C:\..\SC\include\richedit.h C:\..\SC\include\win32\RICHEDIT.H C:\..\SC\include\math.h  \
		..\..\..\..\..\SC\mfc\include\afxwin.h ..\..\..\..\..\SC\mfc\include\32-bit\afxwin.h ..\..\..\..\..\SC\mfc\include\afx.h ..\..\..\..\..\SC\mfc\include\32-bit\afx.h  \
		..\..\..\..\..\SC\mfc\include\afxver_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxver_.h ..\..\..\..\..\SC\mfc\include\afxv_w32.h ..\..\..\..\..\SC\mfc\include\32-bit\afxv_w32.h  \
		..\..\..\..\..\SC\include\windows.h ..\..\..\..\..\SC\include\win32\scdefs.h ..\..\..\..\..\SC\include\win32\WINDOWS.H ..\..\..\..\..\SC\include\excpt.h  \
		..\..\..\..\..\SC\include\stdarg.h ..\..\..\..\..\SC\include\windef.h ..\..\..\..\..\SC\include\win32\WINDEF.H ..\..\..\..\..\SC\include\winnt.h  \
		..\..\..\..\..\SC\include\win32\WINNT.H ..\..\..\..\..\SC\include\ctype.h ..\..\..\..\..\SC\include\pshpack4.h ..\..\..\..\..\SC\include\win32\pshpack4.h  \
		..\..\..\..\..\SC\include\poppack.h ..\..\..\..\..\SC\include\win32\poppack.h ..\..\..\..\..\SC\include\win32\pshpack2.h ..\..\..\..\..\SC\include\string.h  \
		..\..\..\..\..\SC\include\winbase.h ..\..\..\..\..\SC\include\win32\WINBASE.H ..\..\..\..\..\SC\include\winerror.h ..\..\..\..\..\SC\include\win32\WINERROR.H  \
		..\..\..\..\..\SC\include\wingdi.h ..\..\..\..\..\SC\include\win32\WINGDI.H ..\..\..\..\..\SC\include\pshpack1.h ..\..\..\..\..\SC\include\win32\pshpack1.h  \
		..\..\..\..\..\SC\include\pshpack2.h ..\..\..\..\..\SC\include\winuser.h ..\..\..\..\..\SC\include\win32\WINUSER.H ..\..\..\..\..\SC\include\winnls.h  \
		..\..\..\..\..\SC\include\win32\WINNLS.H ..\..\..\..\..\SC\include\wincon.h ..\..\..\..\..\SC\include\win32\WINCON.H ..\..\..\..\..\SC\include\winver.h  \
		..\..\..\..\..\SC\include\win32\WINVER.H ..\..\..\..\..\SC\include\winreg.h ..\..\..\..\..\SC\include\win32\WINREG.H ..\..\..\..\..\SC\include\winnetwk.h  \
		..\..\..\..\..\SC\include\win32\WINNETWK.H ..\..\..\..\..\SC\include\winsvc.h ..\..\..\..\..\SC\include\win32\WINSVC.H ..\..\..\..\..\SC\include\mcx.h  \
		..\..\..\..\..\SC\include\win32\MCX.H ..\..\..\..\..\SC\include\imm.h ..\..\..\..\..\SC\include\win32\IMM.H ..\..\..\..\..\SC\include\commctrl.h  \
		..\..\..\..\..\SC\include\win32\COMMCTRL.H ..\..\..\..\..\SC\include\prsht.h ..\..\..\..\..\SC\include\win32\PRSHT.H ..\..\..\..\..\SC\include\tchar.h  \
		..\..\..\..\..\SC\include\stdio.h ..\..\..\..\..\SC\include\stdlib.h ..\..\..\..\..\SC\include\time.h ..\..\..\..\..\SC\include\limits.h  \
		..\..\..\..\..\SC\include\stddef.h ..\..\..\..\..\SC\include\crtdbg.h ..\..\..\..\..\SC\mfc\include\afxcoll.h ..\..\..\..\..\SC\mfc\include\32-bit\afxcoll.h  \
		..\..\..\..\..\SC\mfc\include\afxstat_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxstat_.h ..\..\..\..\..\SC\mfc\include\afxtls_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxtls_.h  \
		..\..\..\..\..\SC\include\shellapi.h ..\..\..\..\..\SC\include\win32\shellapi.h ..\..\..\..\..\SC\mfc\include\afxres.h ..\..\..\..\..\SC\mfc\include\32-bit\afxres.h  \
		..\..\..\..\..\SC\mfc\include\afxmsg_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxmsg_.h ..\..\..\..\..\SC\mfc\include\afxdd_.h ..\..\..\..\..\SC\mfc\include\32-bit\afxdd_.h  \
		..\..\..\..\..\SC\mfc\include\afxext.h ..\..\..\..\..\SC\mfc\include\32-bit\afxext.h ..\..\..\..\..\SC\mfc\include\afxdlgs.h ..\..\..\..\..\SC\mfc\include\32-bit\afxdlgs.h  \
		..\..\..\..\..\SC\include\commdlg.h ..\..\..\..\..\SC\include\win32\COMMDLG.H ..\..\..\..\..\SC\include\richedit.h ..\..\..\..\..\SC\include\win32\RICHEDIT.H  \
		..\..\..\..\..\SC\include\math.h FRSHELL.h cfrmodin.h cpathdia.h  \
		..\..\..\..\..\SC\include\win32\VER.H ..\..\..\..\..\SC\include\ver.h ..\..\..\..\..\SC\mfc\include\32-bit\winres.h 

DEFFILE		= MDIAPP.DEF

!IF $(DEBUG)
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Ae -mn -C -WA -S -3 -a8 -c -H -HO- -gf 
LFLAGS		=  /CO /NOI /DE /NOPACKF /XN /NT /ENTRY:WinMainCRTStartup /BAS:4194304 /A:512 /RC   :MDIAPP.RES
DEFINES		= -D_DEBUG=1 -D_X86_=1 -D_MT=1
!ELSE
OUTPUTDIR	= .
CREATEOUTPUTDIR	=
TARGETDIR	= .
CREATETARGETDIR	=

SYMROOT		=  .\stdafx 
SYMS		= $(SYMROOT).SYM 
LIBS		= KERNEL32.LIB GDI32.LIB USER32.LIB 

CFLAGS		=  -cpp -Ae -mn -o+time -WA -3 -a8 -c -H -HO- 
LFLAGS		=  /NOI /DE /E /PACKF /XN /NT /ENTRY:WinMainCRTStartup /BAS:4194304 /A:512 /RC   :MDIAPP.RES
DEFINES		= -D_X86_=1 -D_MT=1
!ENDIF

HFLAGS		= $(CFLAGS) 
MFLAGS		= MASTERPROJ=$(PROJ) 
LIBFLAGS	=  /C 
RESFLAGS	=  -32 
DEBUGGERFLAGS	=  
AFLAGS		= $(CFLAGS) 
HELPFLAGS	= 

MODEL		= N

PAR		= PROJS BATS OBJS

RCDEFINES	= 

INCLUDES	= 

INCLUDEDOBJS	= 

OBJS		= mainfrm.OBJ mdiapdoc.OBJ MDIAPP.OBJ  \
		mdiappvw.OBJ 

RCFILES		=  MDIAPP.RES 

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
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
<<
!ELSE
.OBJ.EXE:
		$(LNK) $(LFLAGS) @$(PROJ).LNK<<
.\stdafx.PCO+
mainfrm.OBJ+
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
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
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
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
		-del MDIAPP.dpd
		-del $(OBJS)
		-del $(SYMROOT).SYM
		-del $(SYMROOT).PCO
		-del MDIAPP.RES

cleanres:
		-del MDIAPP.RES

res:		cleanres $(RCFILES) all


link:
!IF $(DEBUG)
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
<<
!ELSE
		$(LNK) $(LFLAGS) @<<$(PROJ).LNK
.\stdafx.PCO+
mainfrm.OBJ+
mdiapdoc.OBJ+
MDIAPP.OBJ+
mdiappvw.OBJ
$$SCW$$.EXE
NUL
KERNEL32.LIB GDI32.LIB USER32.LIB 
MDIAPP.DEF;
<<
!ENDIF

		-del $(TARGETDIR)\$(PROJ).$(PROJTYPE)
		-ren $(TARGETDIR)\$$SCW$$.$(PROJTYPE) $(PROJ).$(PROJTYPE)




!IF EXIST (MDIAPP.dpd)
!INCLUDE MDIAPP.dpd
!ENDIF
$(SYMROOT).SYM: stdafx.h
	$(CC) $(HFLAGS) $(DEFINES) $(INCLUDES) -HF$(SYMROOT).SYM -o$(SYMROOT).PCO stdafx.h



