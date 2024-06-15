# smu version
VERSION = 1.5

# WARNING!!
# This file (c.f. config.mk) is modified for my own personal website.
# I do not advise to use this code and I would not be held liable for any damages
# that this code could produce

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
INCS = -I. -I/usr/include
LIBS = -L/usr/lib

# flags
CFLAGS = -g -O0 -ansi ${INCS} -DVERSION=\"${VERSION}\"
#CFLAGS = -fprofile-arcs -ftest-coverage -pg -g -O0 -Wall -Werror -ansi ${INCS} -DVERSION=\"${VERSION}\"
#CFLAGS = -Os -Wall -Werror -ansi ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = -fprofile-arcs -ftest-coverage -pg ${LIBS}
LDFLAGS = ${LIBS}

# compiler
CC = cc
