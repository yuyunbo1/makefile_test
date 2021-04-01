#主makefile 定义可执行程序和所有子模块的MAKEFILE, 并保证执行到所有的模块的MAKEFILE
#all 和 $(all_makefiles) 都定义成伪目标，可以保证每次运行make时都会进入，而不管是否mk是否存在
all_makefiles = $(ROOT_DIR)/build/print.mk
all_makefiles += $(ROOT_DIR)/build/ani.mk
all_makefiles += $(ROOT_DIR)/build/app.mk

all : $(all_makefiles)
	@echo "build done"

$(all_makefiles) :
	$(MAKE) -C $(@D) -f $(@F)

clean : 
	for file in $(all_makefiles); do \
		$(MAKE) -f $$file clean; \
	done
.PHONY : clean all $(all_makefiles)