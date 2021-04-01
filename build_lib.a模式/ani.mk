include $(ROOT_DIR)/build/commom.mk
include $(ROOT_DIR)/build/def_a.mk
MODULE = libani
TARGET = $(MODULE).a
SRCS += $(filter %.c, $(shell find $(ROOT_DIR)/ani -name *.c))
INCLUDE = -I$(ROOT_DIR)/ani
INCLUDE += -I$(ROOT_DIR)/ani/dog
INCLUDE += -I$(ROOT_DIR)/print

#LIBS = -lprint
#LIBS_PATH = -L$(LIB_DIR)

include $(ROOT_DIR)/build/exec.mk