libdir=$(prefix)/lib/openvanilla/

lib_LTLIBRARIES = libovimgeneric.la
libovimgeneric_la_SOURCES = CIN-Defaults.cpp CIN-Defaults.h OVIMGeneric.cpp OVIMGeneric.h
libovimgeneric_la_CPPFLAGS = -I$(top_srcdir)/Frameworks/OpenVanilla -I$(top_srcdir)/Modules/SharedLibrary/
libovimgeneric_la_LIBADD = ../SharedLibrary/libSharedLibrary.la
libovimgeneric_la_LDFLAGS = -module -avoid-version -no-undefined -Wl,-E -Bsymbolic

ovimgenericdir=$(libdir)/OVIMGeneric/

EXTRA_DIST= OVIMGeneric-Info.plist
