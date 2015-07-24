# Copyright (C) 2015 Fujitsu Network Communications, Inc. All Rights Reserved.

# minimal makefile to build sample application

CPPFLAGS+=$(INCDIR)
CPPFLAGS+=$(INCDIR)/sys
CPPFLAGS+=$(INCDIR)/dcps/C++/SACPP
CPPFLAGS+=$(INCDIR)/dcps/C++/isocpp

BIN = publisher subscriber
publisher_OBJS = publisher.o implementation.o
subscriber_OBJS = subscriber.o implementation.o

all: $(BIN)

publisher : $(publisher_OBJS)
	$(CXX) $(publisher_OBJS) -ldcpsisocpp -lddskernel -lddsworld-idl -o $@

subscriber : $(subscriber_OBJS)
	$(CXX) $(subscriber_OBJS) -ldcpsisocpp -lddskernel -lddsworld-idl -o $@

%.o : %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -c $^ -o $@

install :
	install -d $(BIN_DIR)
	install -m 0755 $(BIN) $(BIN_DIR)
