#
# CDDL HEADER START
#
# This file and its contents are supplied under the terms of the
# Common Development and Distribution License ("CDDL"), version 1.0.
# You may only use this file in accordance with the terms of version
# 1.0 of the CDDL.
#
# A full copy of the text of the CDDL should have accompanied this
# source.  A copy of the CDDL is also available via the Internet at
# http://www.illumos.org/license/CDDL.
#
# CDDL HEADER END
#

#
# Copyright (c) 2012 by Delphix. All rights reserved.
#

#
# Test invalid syntax to the unsetenv option.
#

dtrace=/usr/sbin/dtrace

$dtrace -q -Z -n doogle -xunsetenv=ed=screven -c 'true' 2>&1

[ $? -eq 1 ] && exit 0

exit 1
