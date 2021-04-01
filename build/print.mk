include $(ROOT_DIR)/build/commom.mk
include $(ROOT_DIR)/build/def_so.mk
MODULE = libprint
TARGET = $(MODULE).so
SRCS += $(ROOT_DIR)/print/print.c
INCLUDE = -I$(ROOT_DIR)/print
include $(ROOT_DIR)/build/exec_so.mk