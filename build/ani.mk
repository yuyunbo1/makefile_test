include $(ROOT_DIR)/build/commom.mk
include $(ROOT_DIR)/build/def_so.mk
MODULE = libani
TARGET = $(MODULE).so

SRCS = $(ROOT_DIR)/ani/ani.c 
SRCS += $(ROOT_DIR)/ani/dog/dog.c

INCLUDE = -I$(ROOT_DIR)/ani
INCLUDE += -I$(ROOT_DIR)/ani/dog
INCLUDE += -I$(ROOT_DIR)/print

LIBS = -lprint
LIBS_PATH = -L$(LIB_DIR)

include $(ROOT_DIR)/build/exec_so.mk