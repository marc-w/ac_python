#!/bin/sh

# MIT License

# Copyright (c) 2024 Marc Weinberg https://marc-w.com

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Simple Bash based deployment
# Usage
# . ./deploy.sh 
# If you need to undo, use Git ;)

clear

printf 'Starting...'
printf 'Operating from:'
pwd
printf '\n'

# conditional used to facilitate argument passing
if [ -z "$1" ];then

    # The code on instance should always be pulled without conflict, this command resets 
    # git for a fresh pull
    printf 'about to git pull new code\n'
    git reset --hard HEAD
    git pull
    printf 'new code delivered, git pull COMPLETE\n'
fi

# Reboot the server
sudo reboot
