#!/usr/bin/env bash

# Copyright (c) 2020-2021 Eli Aloni a.k.a elix22.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

PROJECT_PATH=$1


if [ -n "$PROJECT_PATH" ] ; then
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        PROJECT_PATH=$(cygpath -m ${PROJECT_PATH})
    fi
    echo $PROJECT_PATH
    if [ ! -d $PROJECT_PATH ] ; then
        echo "$PROJECT_PATH does not exist"
    else
        if [  -d $PROJECT_PATH/script ] ; then
            cp -r template/script/build-android.sh $PROJECT_PATH/script/
            cp -r template/script/build-ios.sh $PROJECT_PATH/script/
            cp -r template/script/create-android-manifest.sh $PROJECT_PATH/script/
        else 
            echo "$PROJECT_PATH/script does not exist , probably not a valid project path"
        fi
        if [  -d $PROJECT_PATH/References ] ; then
            cp -f "template/libs/dotnet/urho/desktop/UrhoDotNet.dll" "$PROJECT_PATH/References/"
            cp -f "template/libs/dotnet/urho/desktop/UrhoDotNet.xml" "$PROJECT_PATH/References/"
        else
            echo "$PROJECT_PATH/References does not exist , probably not a valid project path"
        fi

    fi
else
    echo "please provide project path"
    echo "./update-project.sh project-path"
fi

