@echo off

REM   Copyright (c) 2020-2021 Eli Aloni a.k.a elix22.
REM  
REM   Permission is hereby granted, free of charge, to any person obtaining a copy
REM   of this software and associated documentation files (the "Software"), to deal
REM   in the Software without restriction, including without limitation the rights
REM   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
REM   copies of the Software, and to permit persons to whom the Software is
REM   furnished to do so, subject to the following conditions:
REM  
REM   The above copyright notice and this permission notice shall be included in
REM   all copies or substantial portions of the Software.
REM  
REM   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
REM   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
REM   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
REM   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
REM   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
REM   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
REM   THE SOFTWARE.

REM  This script will create an folder called '.urhonet_config' in the home folder
REM  It will create configuration files in that folder , to allow  proper functionality for Urho.Net
REM  Each time that the Urho.Net folder is moved to a different folder , this script must be called 

set URHONET_CONFIG_FOLDER=.urhonet_config
set HOME=%homedrive%%homepath%
set currPwd=%~dp0
set "currPwd=%currPwd:\=/%"

echo %currPwd%
echo %HOME%

if NOT "%currPwd%"=="%currPwd: =%" (
    echo ERROR: PATH %currPwd%  contains whitespace characters !!
    echo Make sure that Urho.Net installation path doesn't contain whitespace characters
    goto done
)


@RD /S /Q %HOME%\%URHONET_CONFIG_FOLDER%
mkdir %HOME%\%URHONET_CONFIG_FOLDER%


echo ^<UrhoNetHome^>>%HOME%\%URHONET_CONFIG_FOLDER%\UrhoNetHome.config
echo    ^<add key="UrhoNetHome" value="%currPwd%" /^>>>%HOME%\%URHONET_CONFIG_FOLDER%\UrhoNetHome.config
echo ^</UrhoNetHome^>>>%HOME%\%URHONET_CONFIG_FOLDER%\UrhoNetHome.config

echo %currPwd%>%HOME%\%URHONET_CONFIG_FOLDER%\urhonethome

if NOT exist %HOME%\.urhonet_config\urhonethome (
    echo ERROR Urho.Net configuration failed
    goto done
)

if NOT exist %HOME%\%URHONET_CONFIG_FOLDER%\UrhoNetHome.config (
    echo ERROR Urho.Net configuration failed
    goto done
)

type %HOME%\.urhonet_config\urhonethome
type %HOME%\%URHONET_CONFIG_FOLDER%\UrhoNetHome.config

echo Urho.Net configured !!


:done