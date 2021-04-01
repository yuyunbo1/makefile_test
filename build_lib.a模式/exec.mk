#执行mk 可以让所有的子模块包含，因为运行的命令和规则都是一样的
ifeq ($(EXE), yes) 
	TARGET := $(BIN_DIR)/$(TARGET)
else
	TARGET := $(LIB_DIR)/$(TARGET)
endif
#将生成的目标文件设置到指定目录去
OBJ = $(addprefix $(OBJ_DIR)/, $(notdir $(patsubst  %.c, %.o, $(SRCS))))
DEP = $(addprefix $(DEP_DIR)/, $(notdir $(patsubst %.c, %.d, $(SRCS))))
#设置VPATH变量是为下面的静态规则中%.c,需要知道在哪找文件。要是不设置的话，会找不到文件
VPATH = $(sort $(dir $(SRCS)))
#1.生成so或者可执行文件 SHAREDFLAG由子模块的include def_so.mk还是def_app.mk决定，编译app时不能加shared选项
$(TARGET) : $(OBJ)
	@if [ ! -d $(LIB_DIR) ]; then \
		mkdir -p $(LIB_DIR);	\
	fi
	@if [ ! -d $(BIN_DIR) ]; then \
		mkdir -p $(BIN_DIR);	\
	fi
ifeq ($(EXE), yes) 
	$(CC) $(^) $(LIBS_PATH) $(LIBS) -o $(@)
else
	$(AR) -cr $(@) $(^)
endif	
#2.定义o文件生成规则，注意fPIC位置无关是编译成o文件时的选项
$(OBJ) : $(OBJ_DIR)/%.o : %.c
	@if [ ! -d $(OBJ_DIR) ]; then \
		mkdir -p $(OBJ_DIR);	\
	fi
	$(CC) $(CFLAG) $(INCLUDE) -g -c $(<) -o $(@)
$(DEP) : $(DEP_DIR)/%.d :%.c
	@if [ ! -d $(DEP_DIR) ]; then \
		mkdir -p $(DEP_DIR);	\
	fi
	$(CC) $(CFLAG) $(INCLUDE) -MM $(<) > $(@)
sinclude $(DEP)
clean : 
	@$(RM) $(TARGET) $(OBJ) $(DEP)
.PHONY : clean


