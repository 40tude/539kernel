; The values of the decriptors from Basekernel (kernelcode.S) (https://github.com/dthain/basekernel)
gdt:
	null_descriptor				: 	dw 0, 0, 0, 0
	kernel_code_descriptor		: 	dw 0xffff, 0x0000, 9a00h, 0x00cf
	kernel_data_descriptor		: 	dw 0xffff, 0x0000, 0x9200, 0x00cf
	userspace_code_descriptor	: 	dw 0xffff, 0x0000, 0xfa00, 0x00cf
	userspace_data_descriptor	: 	dw 0xffff, 0x0000, 0xf200, 0x00cf

gdtr:
	gdt_size			: 	dw ( 5 * 8 ) ;= 28h
	gdt_base_address	: 	dd gdt
