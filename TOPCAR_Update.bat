ECHO OFF
SET PROMPT= 
REM  
REM  BATCH FILE: TopCar.BAT
REM
REM  This will copy the latest MDE files Source Code directory
REM  to local C drive
REM
REM  

ECHO ON
REM *********   DO NOT CLOSE THIS WINDOW     ***********
REM *********     UPDATING PDF Files	     ***********
ECHO OFF


REM Pause the batch file for 10 seconds to allow C3 to close properly
ping -n 11 OCTANT05

c:
cd "\Program Files"

IF NOT EXIST "C:\Program Files\OCTADEV" GOTO MakeOCTADev
   	CD \OCTADev
:MakeOCTADev
	MD "c:\Program Files\OCTADEV"

IF NOT EXIST "C:\Program Files\OCTADEV\FieldSupervisor" GOTO MakeOCTADevFS
   	CD \FS
:MakeOCTADevFS
	MD "c:\Program Files\OCTADEV\FieldSupervisor"

echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\TOPCAR.accde" "C:\Program Files\OCTADEV\FieldSupervisor\"
echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\TOPCAR.ico" "C:\Program Files\OCTADEV\FieldSupervisor\"
echo y|copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\Detours.ico" "C:\Program Files\OCTADEV\FieldSupervisor\"

copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\TOPCAR.LNK" "%USERPROFILE%\DESKTOP\*.*"
copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\Detours.URL" "%USERPROFILE%\DESKTOP\*.*"
copy "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\TOPCAR-Repair.bat" "%USERPROFILE%\DESKTOP\*.*"

C:
CD "\Documents and Settings\All Users\Start Menu\Programs"
MD "OCTA Apps"

REM echo y|copy  "\\octant05\OpsData\BUS-OPS\SYSTEMS\Applications\FieldSupervisorsDashboard\ClientInstall\TOPCAR.LNK" "C:\Documents and Settings\All Users\Start Menu\Programs\OCTA Apps\*.*"


REM  Start TOPCAR back up again
c:
cd \Program Files (x86)\Microsoft Office\Office15
MSACCESS.EXE "C:\Program Files\OCTADEV\FieldSupervisor\TOPCAR.accde"