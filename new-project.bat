@echo off

REM ********************************************************************
REM
REM newproject.bat
REM
REM This windows batch script generates a set of project files.
REM The new project will be based of the template project and 
REM it will be generated with the name and location that is specified
REM as input parameters.
REM
REM IMPORTANT: This script must be run from the root of the
REM source tree.
REM
REM ********************************************************************

echo.
echo 1. Enter a name for the new project.
echo.
echo    This name will be given to the project 
echo    executable and a folder with this name
echo    will be created to store all project files.
echo    Ex. foobar
echo.
set /p projName=Project name: 
if "%projName%" == "" (
    echo.
    echo ERROR: No project name specified.
    echo.
    pause
    goto done
)
echo.



echo.
echo 2. Enter a unique identifier for your project.
echo.
echo    This should be a human readable package name,
echo    containing at least two words separated by a
echo    period.
echo    Ex. com.example.foobar
echo.
set /p uuid=Unique ID: 
if "%uuid%" == "" (
    echo.
    echo ERROR: No uuid specified.
    echo.
    pause
    goto done
)
echo.


echo.
echo 3. Enter the project path.
echo.
echo    This can be a relative path, absolute path,
echo    or empty for the current folder. Note that
echo    a project folder named %projName% will also
echo    be created inside this folder.
echo    Ex. ./samples
echo.
set /p location=Path: 
if "%location%" == "" (
    set projPath=%projName%
) else (
    set projPath=%location%\%projName%
)
echo.

if NOT "%projPath%"=="%projPath: =%" (
    echo ERROR: PATH %projPath%  contains whitespace characters !!
    echo Make sure that Urho.Net installation path doesn't contain whitespace characters
    goto done
)



REM Does this path already exist?
if exist "%projPath%" (
    echo.
    echo ERROR: Path '%projPath%' already exists, aborting.
    echo.
    pause
    goto done
)

@echo off
call .\tools\bash\git-bash.exe script/create-project.sh %projName% %uuid% %projPath%
goto done



:done
