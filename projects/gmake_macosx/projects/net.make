# GNU Make project makefile autogenerated by GENie
ifndef config
  config=debug32
endif

ifndef verbose
  SILENT = @
endif

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(MAKESHELL)))
  SHELLTYPE := posix
endif

ifeq (posix,$(SHELLTYPE))
  MKDIR = $(SILENT) mkdir -p "$(1)"
  COPY  = $(SILENT) cp -fR "$(1)" "$(2)"
  RM    = $(SILENT) rm -f "$(1)"
else
  MKDIR = $(SILENT) mkdir "$(subst /,\\,$(1))" 2> nul || exit 0
  COPY  = $(SILENT) copy /Y "$(subst /,\\,$(1))" "$(subst /,\\,$(2))"
  RM    = $(SILENT) del /F "$(subst /,\\,$(1))" 2> nul || exit 0
endif

CC  = gcc
CXX = g++
AR  = ar

ifndef RESCOMP
  ifdef WINDRES
    RESCOMP = $(WINDRES)
  else
    RESCOMP = windres
  endif
endif

MAKEFILE = net.make

ifeq ($(config),debug32)
  OBJDIR              = ../build/x32/debug/net
  TARGETDIR           = ../bin/x32_debug/net
  TARGET              = $(TARGETDIR)/libnet.a
  DEFINES            += -DASIO_STANDALONE -DDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty -I../../../code/thirdparty/asio -I../../../code
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L../bin/x32_debug/protocol -m32
  LDDEPS             += ../bin/x32_debug/protocol/libprotocol.a
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/net/net_utils.o \
	$(OBJDIR)/code/net/protocol_message.o \
	$(OBJDIR)/code/net/tcp_client.o \
	$(OBJDIR)/code/net/tcp_server.o \
	$(OBJDIR)/code/net/udp_broadcast_receiver.o \
	$(OBJDIR)/code/net/udp_broadcaster.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release32)
  OBJDIR              = ../build/x32/release/net
  TARGETDIR           = ../bin/x32_release/net
  TARGET              = $(TARGETDIR)/libnet.a
  DEFINES            += -DASIO_STANDALONE -DNDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty -I../../../code/thirdparty/asio -I../../../code
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m32
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L../bin/x32_release/protocol -m32
  LDDEPS             += ../bin/x32_release/protocol/libprotocol.a
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/net/net_utils.o \
	$(OBJDIR)/code/net/protocol_message.o \
	$(OBJDIR)/code/net/tcp_client.o \
	$(OBJDIR)/code/net/tcp_server.o \
	$(OBJDIR)/code/net/udp_broadcast_receiver.o \
	$(OBJDIR)/code/net/udp_broadcaster.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),debug64)
  OBJDIR              = ../build/x64/debug/net
  TARGETDIR           = ../bin/x64_debug/net
  TARGET              = $(TARGETDIR)/libnet.a
  DEFINES            += -DASIO_STANDALONE -DDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty -I../../../code/thirdparty/asio -I../../../code
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -g -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L../bin/x64_debug/protocol -m64
  LDDEPS             += ../bin/x64_debug/protocol/libprotocol.a
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/net/net_utils.o \
	$(OBJDIR)/code/net/protocol_message.o \
	$(OBJDIR)/code/net/tcp_client.o \
	$(OBJDIR)/code/net/tcp_server.o \
	$(OBJDIR)/code/net/udp_broadcast_receiver.o \
	$(OBJDIR)/code/net/udp_broadcaster.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

ifeq ($(config),release64)
  OBJDIR              = ../build/x64/release/net
  TARGETDIR           = ../bin/x64_release/net
  TARGET              = $(TARGETDIR)/libnet.a
  DEFINES            += -DASIO_STANDALONE -DNDEBUG -DFTS_OSX
  INCLUDES           += -I../../../code/thirdparty -I../../../code/thirdparty/asio -I../../../code
  INCLUDES           +=
  ALL_CPPFLAGS       += $(CPPFLAGS) -MMD -MP -MP $(DEFINES) $(INCLUDES)
  ALL_ASMFLAGS       += $(ASMFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_CFLAGS         += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_CXXFLAGS       += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64 -std=c++11
  ALL_OBJCFLAGS      += $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_OBJCPPFLAGS    += $(CXXFLAGS) $(CFLAGS) $(ALL_CPPFLAGS) $(ARCH) -O2 -m64
  ALL_RESFLAGS       += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  ALL_LDFLAGS        += $(LDFLAGS) -L../bin/x64_release/protocol -m64
  LDDEPS             += ../bin/x64_release/protocol/libprotocol.a
  LIBS               += $(LDDEPS)
  EXTERNAL_LIBS      +=
  LINKCMD             = $(AR)  -rcs $(TARGET)
  OBJECTS := \
	$(OBJDIR)/code/net/net_utils.o \
	$(OBJDIR)/code/net/protocol_message.o \
	$(OBJDIR)/code/net/tcp_client.o \
	$(OBJDIR)/code/net/tcp_server.o \
	$(OBJDIR)/code/net/udp_broadcast_receiver.o \
	$(OBJDIR)/code/net/udp_broadcaster.o \

  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
endif

OBJDIRS := \
	$(OBJDIR) \
	$(OBJDIR)/code/net \

RESOURCES := \

.PHONY: clean prebuild prelink

all: $(OBJDIRS) prebuild prelink $(TARGET) | $(TARGETDIR)
	@:

$(TARGET): $(GCH) $(OBJECTS) $(LDDEPS) $(EXTERNAL_LIBS) $(RESOURCES) | $(TARGETDIR) $(OBJDIRS)
	@echo Archiving net
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
endif
	$(SILENT) $(LINKCMD) $(OBJECTS) 2>&1 > /dev/null | sed -e '/.o) has no symbols$$/d'
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
	-$(call MKDIR,$(TARGETDIR))

$(OBJDIRS):
	@echo Creating $(@)
	-$(call MKDIR,$@)

clean:
	@echo Cleaning net
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(GCH): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) -x c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"

$(GCH_OBJC): $(PCH) $(MAKEFILE) | $(OBJDIR)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_OBJCPPFLAGS) -x objective-c++-header $(DEFINES) $(INCLUDES) -o "$@" -c "$<"
endif

$(OBJDIR)/code/net/net_utils.o: ../../../code/net/net_utils.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/net/protocol_message.o: ../../../code/net/protocol_message.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/net/tcp_client.o: ../../../code/net/tcp_client.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/net/tcp_server.o: ../../../code/net/tcp_server.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/net/udp_broadcast_receiver.o: ../../../code/net/udp_broadcast_receiver.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

$(OBJDIR)/code/net/udp_broadcaster.o: ../../../code/net/udp_broadcaster.cpp $(GCH) $(MAKEFILE)
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
  -include $(OBJDIR)/$(notdir $(PCH))_objc.d
endif
