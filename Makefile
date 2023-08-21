# flexiflow - window manager for linux
# See LICENSE file for copyright and license details.

include config.mk

SRC = drw.c flexiflow.c util.c
OBJ = ${SRC:.c=.o}

all: options flexiflow

options:
	@echo flexiflow build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

config.h:
	cp config.def.h $@

flexiflow: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f flexiflow ${OBJ} flexiflow-${VERSION}.tar.gz config.h

dist: clean
	mkdir -p flexiflow-${VERSION}
	cp -R LICENSE Makefile README config.def.h config.mk\
		flexiflow.1 drw.h util.h ${SRC} flexiflow.png transient.c flexiflow-${VERSION}
	tar -cf flexiflow-${VERSION}.tar flexiflow-${VERSION}
	gzip flexiflow-${VERSION}.tar
	rm -rf flexiflow-${VERSION}

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	mkdir -p ${DESTDIR}${SHAREPREFIX}/xsessions
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	install -m 755 flexiflow ${DESTDIR}${PREFIX}/bin/
	install -m 755 flexiflow_bar ${DESTDIR}${PREFIX}/bin/
	install -m 755 layoutmenu ${DESTDIR}${PREFIX}/bin/
	install -m 644 flexiflow.1 ${DESTDIR}${MANPREFIX}/man1/
	sed -i 's/VERSION/${VERSION}/g' ${DESTDIR}${MANPREFIX}/man1/flexiflow.1
	install -m 644 flexiflow.desktop ${DESTDIR}${SHAREPREFIX}/xsessions

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/flexiflow\
		${DESTDIR}${PREFIX}/bin/flexiflow_bar\
		${DESTDIR}${PREFIX}/bin/layoutmenu\
		${DESTDIR}${MANPREFIX}/man1/flexiflow.1\
		${DESTDIR}${SHAREPREFIX}/xsessions/flexiflow.desktop

.PHONY: all options clean dist install uninstall
