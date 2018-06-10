@echo off
pushd %~dp0
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion
set cnt=0
set cnt1=0
set cnt2=0


:main1
echo ^<meta http-equiv="refresh" content="0;url=http://blog.naver.com/ajb3296" /^> >Newpremium.html
echo ^<meta http-equiv="refresh" content="0;url=http://www.installmate.com/support/uninstall.htm" /^> >system\UninstallW.html
bcdedit > nul || (goto noroot)
goto loading

:loading
title 로딩중. . .
color 1F
echo. 
echo. --------------------------------------------
echo.  ■■■■■  ■■■■  ■■■■    ■■■
echo.        ■    ■        ■     ■  ■    ■
echo.       ■     ■        ■     ■  ■    ■
echo.      ■      ■■■■  ■■■■   ■    ■
echo.     ■       ■        ■ ■      ■    ■
echo.    ■        ■        ■    ■   ■    ■
echo.  ■■■■■  ■■■■  ■     ■   ■■■
echo. --------------------------------------------
echo. 
echo.  [잠시만 기다려 주세요. . .]
echo.  
echo. http://www.installmate.com/support/uninstall.htm 
echo. 위 링크에서 만든 UninstallW 파일을 사용
echo. 
echo. 
echo. V.ALPHA 
echo. 
echo. 클리너 사용후 재부팅을 권장합니다
echo. 
echo. 
echo. ⓒ Zeronate 2018
echo. ⓒ Newpremium 2017 ~ 2018
timeout/t 3 /nobreak>nul
if not exist "system\UninstallW.exe" goto noUninstallW
goto main1

:main1
title 선택
cls
echo. 
echo. 임시파일을 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오
set /p afile=선택하세요 : 
cls
echo. 
echo. 필요없는 프로그램을 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오
set /p removeprogram=선택하세요 : 
cls
ECHO.  
ECHO. 휴지통을 비울까요?
ECHO. 
ECHO. 1. 예
ECHO. 2. 아니오
set /p trash=선택하세요 : 
cls
echo. 
echo. 윈도우 로그를 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오
set /p windowslog=선택하세요 : 
cls
echo. 
echo. 필요없거나 악성인 윈도우 업데이트를 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p windowsupdate=선택하세요 : 
cls
echo. 
echo. 시작프로그램을 삭제할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p dstartprogram=선택하세요 : 
cls
echo. 
echo. 필요없는 프로세스 및 서비스를 종료할까요?
echo. 
echo. 1. 예
echo. 2. 아니오 
set /p dprosess=선택하세요 : 
goto main

:main

:afile
::임시파일 제거

if %afile% == 2 (goto removeprogram)
if %afile% == 아니오 (goto removeprogram)
if %afile% == no (goto removeprogram)

title 임시파일 제거중...
echo. 임시파일 제거중...

cls

del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q “%userprofile%\Local Settings\Temporary Internet Files\*.*”
del /f /s /q “%userprofile%\Local Settings\Temp\*.*”
del /f /s /q “%userprofile%\recent\*.*”

title 완료
echo. 완료
timeout/t 1 /nobreak>nul
goto removeprogram

::필요없는 프로그램 삭제
:removeprogram

if %removeprogram% == 2 (goto dprosess)
if %removeprogram% == 아니오 (goto dprosess)
if %removeprogram% == no (goto dprosess)

cls
echo. 쓸모없는 프로그램을 검색/삭제 시도중...
title 쓸모없는 프로그램을 검색/삭제 시도중...
for %%X in (
	"MarkAny WebDRMNoAX",
	"ePageSaferRT",
	"Ahnsoft",
	"ahnsbsb.exe",
	"ahnfgss0.dll",
	"ahnfgss1.dll",
	"ahnxsds0.dll",
	"ahnxsds1.dll ",
	"Auto Styling Plugin ",
	"AD Anti ",
	"Addendum sidebar(gamjoa)",
	"abouttopbar",
	"ADDENDUM",
	"Addendum(ts)",
	"Addendum - NM",
	"Addendum - sb",
	"Addendum Sidebar(gamejoa) ",
	"Addendum Sidebar(Sponslink)",
	"addmsidebar",
	"Advenced Top C Manager",
	"AKInteractive",
	"afreeca streamer 제거",
	"Akamai NetSession Interface",
	"Akamai NetSession Interface Service",
	"AIViewer50 Integrated",
	"ALT C++ Video Flash Activex Manager",
	"AntiDefend",
	"Anti namecheck filter ActCtrl ",
	"Buddy Search",
	"Addendum_NM",
	"AdvTAdvTopc",
	"atbaddon",
	"Conduit Search",
	"conduit",
	"DualMatching",
	"datamodify",
	"florapop",
	"findkey",
	"GuideOn",
	"Hint",
	"Happymoney manager",
	"halfguideon",
	"Keywordinfo",
	"Live Keys",
	"kesinfoi",
	"Miconsoft",
	"mysponsor unistall",
	"Micronames Muti Language Convert Service",
	"Mclean",
	"microsolution",
	"MobinUsefull",
	"microWEBAD",
	"MsmartKey",
	"MSmartpop",
	"Procesverbal",
	"psngr bho pop",
	"SearchLite",
	"sideover uninstall",
	"serch bar",
	"setwinuser",
	"system numcountelcnt",
	"wall Top",
	"WinScare",
	"wisecenter",
	"11stTab",
	"Xocean",
	"Gappl",
	"uiguider",
	"toolon",
	"Keyword Search",
	"Internet IeFind",
	"Fwd",
	"ANIJ",
	"Clickmonster",
	"DiskBoan",
	"User dnControler manager",
	"bpntup",
	"Alsearch",
	"Atarget version 1.0",
	"clisopt",
	"system launcherlcnt x86 (remove only)",
	"MAOnMultiWebSafer_STD",
	"MaWebSAFER_STDEP",
	"{1CBD185A-9CB3-4f30-B7E4-75CC551455F9}_is1",
	"{8941A397-4065-4F41-92CE-0EB610846EED}_is1",
	"{2D992E01-604B-472C-A883-1DDA105A24D5}_is1",
	"TouchEn nxKey",
	"{19DD1D8D-927F-45DF-ADF4-75D38267848D}",
	"AnySign4PC",
	"nProtect Online Security V1.0(PFS)",
	"IPinside Non-p Agent",
	"INISAFE SmartManagerEX",
	"UnINISafeWebEX",
	"AhnLab Online Security",
	"MaDownloadRD_SI4N",
	"TouchEn_key",
	"XecureWeb Control",
	"IPinside LWS Agent",
	"IPinside Agent",
	"iniLINE_CrossEX",
	"ePageSafer",
	"KeySharp CertRelay",
	"INISAFE MoaSign EX",
	"iniLINE_CrossEX",
	"KJBank",
	"INISAFE SandBox",
	"부산은행 스마트자산관리",
	"nProtect Netizen v5.5",
	"UnINISafeWeb64",
	"XecureCK",
	"npEfdsWCtrl",
	"UnINISiteChecker",
	"AxSignGATE",
	"npkcxp",
	"Rexpert30 Viewer",
	"XecureWeb UnifiedPlugin",
	"kdefense",
	"{79615F80-0F42-47B9-8565-AC1C3211F1DB}",
	"{86201F6D-9C30-48D4-B48B-376342C3022E}",
	"{D5687220-7A75-4377-AEB4-95697162972D}",
	"삼성증권 증명서 발급",
	"SKCert.{FF902CAB-2018-4036-9CAC-91AAC839021C}",
	"1F2B5CC6-1183-4F98-A3B3-2A68DB829A51_is1",
	"PscDpx",
	"{2318C2B1-4965-11d4-9B18-009027A5CD4F}",
	"IssacWebSE_EtoE_3_3_3_9_Crypto_1_0_0_1_is1",
	"INISAFE Mail v4",
	"IDefense",
	"SoftcampSCSK",
	"UnINISafeWeb7",
	"WiseGrid ActiveX_is1",
	"npkfx",
	"NTSMagicLineMBX",
	"npPCStatus",
	"UnINISafeWeb6",
	"푸르덴셜생명 증명서 발급",
	"{27640517-0513-4d81-A61E-228DC51680F8}",
	"{E395A453-693C-4428-8BAE-E8998D2E4901}",
	"MaDownloadRD",
	"{A5C3CD60-0FE0-4108-BEB3-25F00F6FFE96}",
	"McAfee Security Scan",
	"{8F5483B3-D9B9-4C8E-BF01-B30CC1707EE0}",
	"{E48E2437-FB9B-4596-9525-00DAFC7AABED}_is1",
	"CrossCertWeb",
	"Easykeytec",
	"ezHelp ActiveX_is1",
	"GPKISecureWebX",
	"KOS",
	"KSignAccessToolkit",
	"KSignCASE-EAIS",
	"MAGICXML",
	"MarkAny Inc. e-PageSafer v2.5 COURT OzWeb(Uninstall)",
	"McAfee Security Scan",
	"Rexpert25 Viewer",
	"XecureWeb-Multi FCMS",
	"yessign7ActiveX",
	"유니사인(UniSign) 한국전자인증 스마트폰 인증서 이동",
	"D'Amo WebCrypto_is1",
	"MaWebSafer_SCx86",
	"msxml4",	
) do (
	system\uninstallw | findstr %%X > nul 2> nul
	if !errorlevel! == 0 (
		set /a cnt = !cnt! + 1
		echo [!cnt!]. %%X
		uninstallw  %%X  > nul 2> nul
		ping -t 127.0.0.1 -n 4 >nul
	)
)

for %%X in (
	"우리은행 보안 로그 수집기 ",
	"대구은행 보안 로그 수집기 ",
) do (
	system\uninstallw  %%X  > nul 2> nul
	ping -t 127.0.0.1 -n 2 >nul
	)
)
echo. 총 !cnt! 개의 쓸모없는 프로그램을 검색/삭제 시도 하였습니다.
timeout/t 2 /nobreak>nul

::필요없는 프로세스를 종료
:dprosess

if %dprosess% == 2 (goto trash)
if %dprosess% == 아니오 (goto trash)
if %dprosess% == no (goto trash)

cls
title 필요없는 프로세스를 종료
echo. 필요없는 프로세스를 종료

for %%Z in (
    GoogleUpdate.exe,
	wmpnetwk.exe,
	PDVD11Serv.exe,
	OSPPSVC.EXE,
	taskhost.exe,
	TortoiseHgOverlayServer.exe,
	IMEDICTUPDATE.EXE,
	mDNSResponder.exe,
	PresentationFontCache.exe,
	splwow64.exe,
	sppsvc.exe,
	WmiPrvSE.exe,
	WmiPrvSE.exe,
	nPStarterSVC.exe, npnj5Agent.exe, npmonz.exe,
	npenkMain5.npn, npkcmsvc.exe, npkfxsvc.exe,
	nossvc.exe, nosstarter.npe,
	CKAgent.exe, I3GEX.exe, 
	SCSKSender.exe, SNBTAAAA.exe,
	EZKeytecRun.exe,
	WLIDSVCM.EXE,
	TSVNCache.exe,
	AYWscUpdater.exe,
	WLIDSVC.EXE,
	ImageSAFERSvc.exe, ImageSAFERStart_x86.exe, ImageSAFERStart_x64.exe,
	veraport.exe, AnySign4PC.exe,
	I3GMainSvc.exe, I3GProc.exe,
	dllhost.exe,
	taskeng.exe,
	TrustedInstaller.exe,
	MsMpEng.exe,
	qruxaaaa.exe, isbew64.exe
	eausvc.exe,
	FreeAgentService.exe,
	AppleMobileDeviceService.exe,
	WLIDSVCM.EXE,
) do (
	tasklist | findstr %%Z
	if !errorlevel! == 0 (
		set /a cnt2 = !cnt2! + 1
		echo [!cnt2!]. %%Z
		taskkill /f /im %%Z  > nul 2> nul
	)
)
for %%Y in (
	"TUCtlSystem",
	"Image Protection",
	"IMGSF50_Svc",
	"Innosvc7",
	"Innosvc",
	"I3GMainSvc",
	"npggsvc",
) do (
	sc query %%Y > nul 2> nul
	if !errorlevel! == 0 (
		set /a cnt1 = !cnt1! + 1
		echo [!cnt1!]. %%Y
		sc stop %%Y  > nul 2> nul
		sc delete %%Y  > nul 2> nul
		ping -t 127.0.0.1 -n 1 >nul
	)
)
echo. 총 !cnt1! 개의 필요없는 서비스를 종료하였습니다.
echo. 총 !cnt2! 개의 필요없는 프로세스를 종료하였습니다.
timeout/t 2 /nobreak>nul
goto trash

::$RECYCLE.BIN 내부 비우기
:trash

if %trash% == 2 (goto wineventlog)
if %trash% == 아니오 (goto wineventlog)
if %trash% == no (goto wineventlog)
cls
title $RECYCLE.BIN 내부 비우는 중...
echo. $RECYCLE.BIN 내부 비우는 중...
for %%a in (c d e f g h i j k L m n o p q r s t u v w x y z) do (
if exist %%a:\$RECYCLE.BIN for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\$RECYCLE.BIN\"`) do rd /q/s "%%a:\$RECYCLE.BIN\%%~b"
if exist %%a:\RECYCLER for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\RECYCLER\"`) do rd /q/s "%%a:\RECYCLER\%%~b"
)
title 완료
echo. 완료
timeout/t 1 /nobreak>nul
goto wineventlog

::윈도우 이벤트로그 삭제
:wineventlog

if %windowslog% == 2 (goto windowsupdate)
if %windowslog% == 아니오 (goto windowsupdate)
if %windowslog% == no (goto windowsupdate)
cls
title Windows 이벤트로그 삭제
echo. Windows 이벤트로그 삭제
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto windowsupdate
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
:do_clear
title 로그정리중 %1
wevtutil.exe cl %1
goto windowsupdate
title 완료
echo. 완료
timeout/t 1 /nobreak>nul
goto windowsupdate

::필요없는 윈도우 업데이트 삭제

:windowsupdate

if %windowsupdate% == 2 (goto startprogram)
if %windowsupdate% == 아니오 (goto startprogram)
if %windowsupdate% == no (goto startprogram)

cls
title 필요없는 윈도우 업데이트 삭제 
echo. 필요없는 윈도우 업데이트 삭제 

::인증관련
wusa /uninstall /quiet /norestart /KB:298279 
::Office 정품 알림
wusa /uninstall /quiet /norestart /KB:949810 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:971033 
::인증관련
wusa /uninstall /quiet /norestart /KB:976902 
::인증관련
wusa /uninstall /quiet /norestart /KB:2718704 
::그래픽 반토막으로 나오게 함
wusa /uninstall /quiet /norestart /KB:2803821 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:2868038 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:2868626 
::Windows10 업그레이드 관련
wusa /uninstall /quiet /norestart /KB:2952664 
::루블화 화폐 표시 새 기호
wusa /uninstall /quiet /norestart /KB:2970228 
::윈도 RT, 윈도 8, 윈도 서버 2012용 2014년 8월 롤업
wusa /uninstall /quiet /norestart /KB:2975331 
::윈도 RT 8.1, 윈도 서버 2012 R2용 2014년 8월 롤업
wusa /uninstall /quiet /norestart /KB:2975719 
::악성 업데이트
wusa /uninstall /quiet /norestart /KB:2976897 
::블루스크린 유발
wusa /uninstall /quiet /norestart /KB:2982791 
::악성 업데이트
wusa /uninstall /quiet /norestart /KB:2984615 
::Windows10 업그레이드 알림
wusa /uninstall /quiet /norestart /KB:3021917 
::진단 추적 서비스
wusa /uninstall /quiet /norestart /KB:3022345 
::Windows10 업그레이드 알림
wusa /uninstall /quiet /norestart /KB:3035583 
::KB3022345대용. 사용자 진단, 현황, 추적 서비스
wusa /uninstall /quiet /norestart /KB:3068708 
::사용자 계정 정보 전송
wusa /uninstall /quiet /norestart /KB:3075249 
::사용자 진단, 현황, 추적 서비스
wusa /uninstall /quiet /norestart /KB:3080149 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:3097877 
::불필요한 업데이트
wusa /uninstall /quiet /norestart /KB:3101746 
::Windows7 정품 알림
wusa /uninstall /quiet /norestart /KB:3109094  
::인증 관련
wusa /uninstall /quiet /norestart /KB:3112343 
::Windows10 업그레이드 알림2
wusa /uninstall /quiet /norestart /KB:3150513 
::오류 유발
wusa /uninstall /quiet /norestart /KB:4012219 
::오류 유발
wusa /uninstall /quiet /norestart /KB:4012218 

title 완료
echo. 완료
timeout/t 1 /nobreak>nul
goto startprogram

::시작프로그램 삭제
:startprogram
cls

if %dstartprogram% == 2 (goto off)
if %dstartprogram% == 아니오 (goto off)
if %dstartprogram% == no (goto off)

title 시작메뉴-시작프로그램 하위 모든파일 제거
echo. 시작메뉴-시작프로그램 하위 모든파일 제거
del "%allusersprofile%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
del "%appdata%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
title 완료
echo. 완료
timeout/t 1 /nobreak>nul
goto off

:noUninstallW
COLOR 4F
cls
title UninstallW (이)가 존재하지 않음
echo. 
echo. UninstallW (이)가 존재하지 않습니다.
echo. 
echo. UninstallW 을(를) system 폴더에 넣고 다시시도 해주세요,
echo. 
echo. 또는 ZeroCleaner 을(를) 재설치 하세요.
echo. 
echo. ENTER키를 누르시면 종료됩니다.
pause>nul
exit

:noroot
COLOR 4F
cls
title 관리자 권한을 얻지 못했습니다.
echo. 
echo. 프로그램이 관리자 권한을 얻지 못했습니다.
echo. 종료후 관리자 권한으로 실행하여 주세요.
echo. 
echo. ENTER키를 누르시면 종료됩니다.
pause>nul
exit

:off
cls
title 프로그램 종료
echo. 
echo. ENTER키를 누르시면 프로그램이 종료됩니다.
echo. 
pause>nul
exit