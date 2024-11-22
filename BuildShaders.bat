@echo off
setlocal

cd %~dp0

SET MGFX="C:\Program Files (x86)\MSBuild\MonoGame\v3.0\Tools\KNIFXC.exe"
SET XNAFX="C:\Users\gavin\Documents\dev\BatchShaderCompiler\CompileEffect.exe"

@for /f %%f IN ('dir /b *.fx') do (
    call %XNAFX% Windows HiDef %%~nf.fx %%~nf.fxo
)

endlocal
@pause
