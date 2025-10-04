PREFIX ?= /usr/local

CFLAGS += -g -O2 -Wall

PROGRAMS = fbmark_rectangle fbmark_sierpinski

all: $(PROGRAMS)

fbmark_rectangle: fbmark_rectangle.c
	$(CC) $^ -o $@ $(CFLAGS) $(LDFLAGS)

fbmark_sierpinski: fbmark_sierpinski.c
	$(CC) $^ -o $@ -lm $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) $(PROGRAMS)

install: all
	install -d $(DESTDIR)$(PREFIX)/bin
	install $(PROGRAMS) $(DESTDIR)$(PREFIX)/bin

uninstall:
	$(RM) $(DESTDIR)$(PREFIX)/bin/fbmark_rectangle
	$(RM) $(DESTDIR)$(PREFIX)/bin/fbmark_sierpinski
