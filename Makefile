# libsmu - simple markup
# (c) 2007, 2008 Enno Boland

# WARNING!!
# This file (c.f. Makefile) is modified for my own personal website.
# I do not advise to use this code and I would not be held liable for any damages
# that this code could produce
# See LICENSE for further informations

include config.mk

SRC    = smu.c
OBJ    = ${SRC:.c=.o}

all: options smu

options:
	@echo smu build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	@echo CC $<
	@${CC} -c ${CFLAGS} $<

${OBJ}: config.mk

smu: ${OBJ}
	@echo LD $@
	@${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	@echo cleaning
	@rm -f smu ${OBJ} ${LIBOBJ} smu-${VERSION}.tar.gz


.PHONY: all options clean
