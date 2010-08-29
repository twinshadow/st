# st version
VERSION = 0.0

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

# includes and libs
INCS = -I. -I/usr/include -I${X11INC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11 -lutil

# uncomment manualy your system if compilation fail
SYSTEM = -D`uname | tr a-z A-Z`
#SYSTEM = -DLINUX
#SYSTEM = -DOPENBSD
#SYSTEM = -DFREEBSD
#SYSTEM = -DNETBSD

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" ${SYSTEM}
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -s ${LIBS}

# compiler and linker
CC = cc
