include $(ROOT_DIR)/build/commom.mk
include $(ROOT_DIR)/build/def_app.mk
MODULE = app
TARGET = $(MODULE)

SRCS = $(ROOT_DIR)/app/main.c
INCLUDE = -I$(ROOT_DIR)/app
INCLUDE += -I$(ROOT_DIR)/print
INCLUDE += -I$(ROOT_DIR)/ani
INCLUDE += -I$(ROOT_DIR)/ani/dog

LIBS = -lprint -lani
LIBS_PATH = -L$(LIB_DIR)
include $(ROOT_DIR)/build/exec_so.mk