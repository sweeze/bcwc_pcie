bcwc_pcie-objs := bcwc_ddr.o bcwc_hw.o bcwc_drv.o bcwc_ringbuf.o bcwc_isp.o bcwc_v4l2.o bcwc_buffer.o
obj-m := bcwc_pcie.o

KVERSION := $(shell uname -r)
KDIR := /lib/modules/$(KVERSION)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
