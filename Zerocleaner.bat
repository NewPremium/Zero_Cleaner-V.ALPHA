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
title �ε���. . .
color 1F
echo. 
echo. --------------------------------------------
echo.  ������  �����  �����    ����
echo.        ��    ��        ��     ��  ��    ��
echo.       ��     ��        ��     ��  ��    ��
echo.      ��      �����  �����   ��    ��
echo.     ��       ��        �� ��      ��    ��
echo.    ��        ��        ��    ��   ��    ��
echo.  ������  �����  ��     ��   ����
echo. --------------------------------------------
echo. 
echo.  [��ø� ��ٷ� �ּ���. . .]
echo.  
echo. http://www.installmate.com/support/uninstall.htm 
echo. �� ��ũ���� ���� UninstallW ������ ���
echo. 
echo. 
echo. V.ALPHA 
echo. 
echo. Ŭ���� ����� ������� �����մϴ�
echo. 
echo. 
echo. �� Zeronate 2018
echo. �� Newpremium 2017 ~ 2018
timeout/t 3 /nobreak>nul
if not exist "system\UninstallW.exe" goto noUninstallW
goto main1

:main1
title ����
cls
echo. 
echo. �ӽ������� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ�
set /p afile=�����ϼ��� : 
cls
echo. 
echo. �ʿ���� ���α׷��� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ�
set /p removeprogram=�����ϼ��� : 
cls
ECHO.  
ECHO. �������� �����?
ECHO. 
ECHO. 1. ��
ECHO. 2. �ƴϿ�
set /p trash=�����ϼ��� : 
cls
echo. 
echo. ������ �α׸� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ�
set /p windowslog=�����ϼ��� : 
cls
echo. 
echo. �ʿ���ų� �Ǽ��� ������ ������Ʈ�� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p windowsupdate=�����ϼ��� : 
cls
echo. 
echo. �������α׷��� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p dstartprogram=�����ϼ��� : 
cls
echo. 
echo. �ʿ���� ���μ��� �� ���񽺸� �����ұ��?
echo. 
echo. 1. ��
echo. 2. �ƴϿ� 
set /p dprosess=�����ϼ��� : 
goto main

:main

:afile
::�ӽ����� ����

if %afile% == 2 (goto removeprogram)
if %afile% == �ƴϿ� (goto removeprogram)
if %afile% == no (goto removeprogram)

title �ӽ����� ������...
echo. �ӽ����� ������...

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
del /f /s /q ��%userprofile%\Local Settings\Temporary Internet Files\*.*��
del /f /s /q ��%userprofile%\Local Settings\Temp\*.*��
del /f /s /q ��%userprofile%\recent\*.*��

title �Ϸ�
echo. �Ϸ�
timeout/t 1 /nobreak>nul
goto removeprogram

::�ʿ���� ���α׷� ����
:removeprogram

if %removeprogram% == 2 (goto dprosess)
if %removeprogram% == �ƴϿ� (goto dprosess)
if %removeprogram% == no (goto dprosess)

cls
echo. ������� ���α׷��� �˻�/���� �õ���...
title ������� ���α׷��� �˻�/���� �õ���...
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
	"afreeca streamer ����",
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
	"�λ����� ����Ʈ�ڻ����",
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
	"�Ｚ���� ���� �߱�",
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
	"Ǫ�����Ȼ��� ���� �߱�",
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
	"���ϻ���(UniSign) �ѱ��������� ����Ʈ�� ������ �̵�",
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
	"�츮���� ���� �α� ������ ",
	"�뱸���� ���� �α� ������ ",
) do (
	system\uninstallw  %%X  > nul 2> nul
	ping -t 127.0.0.1 -n 2 >nul
	)
)
echo. �� !cnt! ���� ������� ���α׷��� �˻�/���� �õ� �Ͽ����ϴ�.
timeout/t 2 /nobreak>nul

::�ʿ���� ���μ����� ����
:dprosess

if %dprosess% == 2 (goto trash)
if %dprosess% == �ƴϿ� (goto trash)
if %dprosess% == no (goto trash)

cls
title �ʿ���� ���μ����� ����
echo. �ʿ���� ���μ����� ����

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
echo. �� !cnt1! ���� �ʿ���� ���񽺸� �����Ͽ����ϴ�.
echo. �� !cnt2! ���� �ʿ���� ���μ����� �����Ͽ����ϴ�.
timeout/t 2 /nobreak>nul
goto trash

::$RECYCLE.BIN ���� ����
:trash

if %trash% == 2 (goto wineventlog)
if %trash% == �ƴϿ� (goto wineventlog)
if %trash% == no (goto wineventlog)
cls
title $RECYCLE.BIN ���� ���� ��...
echo. $RECYCLE.BIN ���� ���� ��...
for %%a in (c d e f g h i j k L m n o p q r s t u v w x y z) do (
if exist %%a:\$RECYCLE.BIN for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\$RECYCLE.BIN\"`) do rd /q/s "%%a:\$RECYCLE.BIN\%%~b"
if exist %%a:\RECYCLER for /f "tokens=* usebackq" %%b in (`"dir /a:d/b %%a:\RECYCLER\"`) do rd /q/s "%%a:\RECYCLER\%%~b"
)
title �Ϸ�
echo. �Ϸ�
timeout/t 1 /nobreak>nul
goto wineventlog

::������ �̺�Ʈ�α� ����
:wineventlog

if %windowslog% == 2 (goto windowsupdate)
if %windowslog% == �ƴϿ� (goto windowsupdate)
if %windowslog% == no (goto windowsupdate)
cls
title Windows �̺�Ʈ�α� ����
echo. Windows �̺�Ʈ�α� ����
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto windowsupdate
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
:do_clear
title �α������� %1
wevtutil.exe cl %1
goto windowsupdate
title �Ϸ�
echo. �Ϸ�
timeout/t 1 /nobreak>nul
goto windowsupdate

::�ʿ���� ������ ������Ʈ ����

:windowsupdate

if %windowsupdate% == 2 (goto startprogram)
if %windowsupdate% == �ƴϿ� (goto startprogram)
if %windowsupdate% == no (goto startprogram)

cls
title �ʿ���� ������ ������Ʈ ���� 
echo. �ʿ���� ������ ������Ʈ ���� 

::��������
wusa /uninstall /quiet /norestart /KB:298279 
::Office ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:949810 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:971033 
::��������
wusa /uninstall /quiet /norestart /KB:976902 
::��������
wusa /uninstall /quiet /norestart /KB:2718704 
::�׷��� ���丷���� ������ ��
wusa /uninstall /quiet /norestart /KB:2803821 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2868038 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2868626 
::Windows10 ���׷��̵� ����
wusa /uninstall /quiet /norestart /KB:2952664 
::���ȭ ȭ�� ǥ�� �� ��ȣ
wusa /uninstall /quiet /norestart /KB:2970228 
::���� RT, ���� 8, ���� ���� 2012�� 2014�� 8�� �Ѿ�
wusa /uninstall /quiet /norestart /KB:2975331 
::���� RT 8.1, ���� ���� 2012 R2�� 2014�� 8�� �Ѿ�
wusa /uninstall /quiet /norestart /KB:2975719 
::�Ǽ� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2976897 
::��罺ũ�� ����
wusa /uninstall /quiet /norestart /KB:2982791 
::�Ǽ� ������Ʈ
wusa /uninstall /quiet /norestart /KB:2984615 
::Windows10 ���׷��̵� �˸�
wusa /uninstall /quiet /norestart /KB:3021917 
::���� ���� ����
wusa /uninstall /quiet /norestart /KB:3022345 
::Windows10 ���׷��̵� �˸�
wusa /uninstall /quiet /norestart /KB:3035583 
::KB3022345���. ����� ����, ��Ȳ, ���� ����
wusa /uninstall /quiet /norestart /KB:3068708 
::����� ���� ���� ����
wusa /uninstall /quiet /norestart /KB:3075249 
::����� ����, ��Ȳ, ���� ����
wusa /uninstall /quiet /norestart /KB:3080149 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:3097877 
::���ʿ��� ������Ʈ
wusa /uninstall /quiet /norestart /KB:3101746 
::Windows7 ��ǰ �˸�
wusa /uninstall /quiet /norestart /KB:3109094  
::���� ����
wusa /uninstall /quiet /norestart /KB:3112343 
::Windows10 ���׷��̵� �˸�2
wusa /uninstall /quiet /norestart /KB:3150513 
::���� ����
wusa /uninstall /quiet /norestart /KB:4012219 
::���� ����
wusa /uninstall /quiet /norestart /KB:4012218 

title �Ϸ�
echo. �Ϸ�
timeout/t 1 /nobreak>nul
goto startprogram

::�������α׷� ����
:startprogram
cls

if %dstartprogram% == 2 (goto off)
if %dstartprogram% == �ƴϿ� (goto off)
if %dstartprogram% == no (goto off)

title ���۸޴�-�������α׷� ���� ������� ����
echo. ���۸޴�-�������α׷� ���� ������� ����
del "%allusersprofile%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
del "%appdata%\Microsoft\Windows\Start Menu\Programs\StartUp" /f /q
title �Ϸ�
echo. �Ϸ�
timeout/t 1 /nobreak>nul
goto off

:noUninstallW
COLOR 4F
cls
title UninstallW (��)�� �������� ����
echo. 
echo. UninstallW (��)�� �������� �ʽ��ϴ�.
echo. 
echo. UninstallW ��(��) system ������ �ְ� �ٽýõ� ���ּ���,
echo. 
echo. �Ǵ� ZeroCleaner ��(��) �缳ġ �ϼ���.
echo. 
echo. ENTERŰ�� �����ø� ����˴ϴ�.
pause>nul
exit

:noroot
COLOR 4F
cls
title ������ ������ ���� ���߽��ϴ�.
echo. 
echo. ���α׷��� ������ ������ ���� ���߽��ϴ�.
echo. ������ ������ �������� �����Ͽ� �ּ���.
echo. 
echo. ENTERŰ�� �����ø� ����˴ϴ�.
pause>nul
exit

:off
cls
title ���α׷� ����
echo. 
echo. ENTERŰ�� �����ø� ���α׷��� ����˴ϴ�.
echo. 
pause>nul
exit