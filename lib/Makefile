NAME = mecab
BIN = lib$(NAME)

WORK_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))


# Flags
CCFLAGS += $(CFLAGS)


SRC =
OBJ = $(SRC:.c=.o)

ifeq ($(OS),Windows_NT)
	EXTENSION := dll
	LIBRARY_FILE := $(WORK_DIR)/mecab/mecab/src/.libs/libmecab-2.$(EXTENSION)
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Darwin)
		EXTENSION := dylib
		LIBRARY_FILE := $(WORK_DIR)/mecab/mecab/src/.libs/libmecab.$(EXTENSION)
	else
		EXTENSION := so
		LIBRARY_FILE := $(WORK_DIR)/mecab/mecab/src/.libs/libmecab.$(EXTENSION)
	endif
endif

BIN := $(BIN).$(EXTENSION).bodged
TARGET_FILE := $(WORK_DIR)/$(BIN)
build:
	CXXFLAGS="$(CFLAGS)" cd mecab/mecab/							\
	&& ./autogen.sh --without-libiconv-prefix --enable-utf8-only --with-charset=utf8	\
		--disable-static --enable-shared						\
	&& make											\
	|| if [ "$(EXTENSION)" = "dll" ]; then true; else false; fi
	cp -L $(LIBRARY_FILE) $(TARGET_FILE)
	strip -S $(TARGET_FILE)
	if [ "$(EXTENSION)" = "so" ]; then							\
	  patchelf --set-rpath '@ORIGIN/' "$(TARGET_FILE)";					\
	  patchelf --set-soname '$(BIN)' "$(TARGET_FILE)";					\
	fi

clean:
	cd mecab/mecab/ && make clean || true
	rm -f $(WORK_DIR)/$(BIN)
