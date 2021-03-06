#!/bin/sh
# SCCSID: %Z%%M% %I% %G%
#/******************************************************************************
#* Copyright (c) 2005, 2014  Ericsson AB
#* All rights reserved. This program and the accompanying materials
#* are made available under the terms of the Eclipse Public License v1.0
#* which accompanies this distribution, and is available at
#* http://www.eclipse.org/legal/epl-v10.html
#*
#* Contributors:
#*  Jozsef Gyurusi - initial implementation and initial documentation
#*  Adam Delic
#*  Antal Wuh.Hen.Chang
#*  Attila Balasko
#*  Gabor Szalai
#*  Istvan Sandor
#*  Peter Kremer
#*  Zoltan Jasz
#******************************************************************************/
#

head -1 > /tmp/$$
if xterm -title "Notice from TTCN" -e sh -c "echo ''; cat /tmp/$$; echo ''; echo 'Press RETURN to Continue'; read x"
  then
    /bin/rm -f /tmp/$$
    exit 0
  else
    /bin/rm -f /tmp/$$
    exit 1
fi
