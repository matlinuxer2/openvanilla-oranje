libdir=$(prefix)/lib/openvanilla/

lib_LTLIBRARIES = libovimphonetic.la
libovimphonetic_la_SOURCES =  OVIMPhoneticStatic.cpp OVPhoneticData.c 

CINS = $(top_srcdir)/DataTables/bpmf.cin  $(top_srcdir)/DataTables/punctuations.cin 

OVPhoneticData.c: $(CINS)
	perl convert-phonedata.pl $^ > $@

libovimphonetic_la_CPPFLAGS = -I$(top_srcdir)/Frameworks/OpenVanilla -I$(top_srcdir)/Modules/SharedLibrary/

ovimphoneticdir=$(libdir)/OVIMPhonetic/

EXTRA_DIST= OVIMPhonetic-Info.plist README.txt convert-phonedata.pl  
