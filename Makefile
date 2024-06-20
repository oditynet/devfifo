obj-m += queue.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	#gcc -pthread -o test_driver test_driver.c
	cp queue.ko /lib/modules/$(shell uname -r)
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
