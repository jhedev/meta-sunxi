setenv bootargs console=${console} console=tty1 root=/dev/mmcblk0p${mender_boot_part} rootwait panic=10 ${extra}
load ${mender_uboot_boot} ${fdt_addr_r} ${fdtfile} 
load ${mender_uboot_boot} ${kernel_addr_r} uImage || load ${mender_uboot_root} ${kernel_addr_r} boot/uImage
bootm ${kernel_addr_r} - ${fdt_addr_r}
