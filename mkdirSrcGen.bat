@ECHO OFF
FOR %%t IN ( cucumber jbehave ) DO FOR %%s IN ( ui tests ) DO CALL :AddDir org.agileware.natural.%%t.%%s
FOR %%t IN ( cucumber jbehave ) DO CALL :AddDir org.agileware.natural.%%t
GOTO :EOF
:AddDir
SET DEST=%1
SET NEWDIR=src-gen
IF NOT EXIST %DEST%\%NEWDIR% MKDIR %DEST%\%NEWDIR%
IF NOT EXIST %DEST%\%NEWDIR% GOTO :EOF
ECHO. > src-gen.md
ECHO # src-gen Placeholder >> src-gen.md
ECHO. >> src-gen.md
:EOF
EXIT /B 0
