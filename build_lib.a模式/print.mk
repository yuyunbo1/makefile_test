include $(ROOT_DIR)/build/commom.mk
include $(ROOT_DIR)/build/def_a.mk
MODULE = libprint
TARGET = $(MODULE).a
SRCS += $(filter %.c, $(shell find $(ROOT_DIR)/print -name *.c))
INCLUDE = -I$(ROOT_DIR)/print
include $(ROOT_DIR)/build/exec.mk