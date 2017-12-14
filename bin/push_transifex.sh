#!/bin/bash

###############################################################################
#  Copyright (c) 2016, Vicky Vergara <vicky_vergara@hotmail.com>
#
#  Licence:  GPL-2.0  
#
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the
#  Software is furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included
#  in all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
#  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#  DEALINGS IN THE SOFTWARE.
###############################################################################

#example execution
# bin/push_transifex

for pot_file in `git diff --name-only | grep '\.pot'`  ; do
    pot_file=`echo $pot_file | sed -e "s/locale\/pot\//osgeolive\./g"`
    pot_file=`echo $pot_file | sed -e "s/\//--/g"`
    pot_file=`echo $pot_file | sed -e "s/\.pot//g"`
    echo "pushing $pot_file to transifex"
    tx push --source -r $pot_file
done
