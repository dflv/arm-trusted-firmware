#
# Copyright (c) 2013-2014, ARM Limited and Contributors. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# Redistributions in binary form must reproduce the above copyright notice,
# this list of conditions and the following disclaimer in the documentation
# and/or other materials provided with the distribution.
#
# Neither the name of ARM nor the names of its contributors may be used
# to endorse or promote products derived from this software without specific
# prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#

#
# No additional platform system include directories required
#
# PLAT_INCLUDES		:=

PLAT_BL_COMMON_SOURCES	:=	drivers/arm/pl011/pl011.c			\
				drivers/arm/pl011/pl011_console.c		\
				drivers/io/io_fip.c				\
				drivers/io/io_memmap.c				\
				drivers/io/io_semihosting.c			\
				lib/mmio.c					\
				lib/aarch64/sysreg_helpers.S		\
				lib/aarch64/xlat_tables.c			\
				lib/semihosting/semihosting.c			\
				lib/semihosting/aarch64/semihosting_call.S	\
				plat/fvp/plat_io_storage.c

BL1_SOURCES		+=	drivers/arm/cci400/cci400.c			\
				plat/common/aarch64/platform_up_stack.S		\
				plat/fvp/bl1_plat_setup.c			\
				plat/fvp/aarch64/bl1_plat_helpers.S		\
				plat/fvp/aarch64/plat_common.c			\
				plat/fvp/aarch64/plat_helpers.S

BL2_SOURCES		+=	drivers/arm/tzc400/tzc400.c			\
				plat/common/aarch64/platform_up_stack.S		\
				plat/fvp/bl2_plat_setup.c			\
				plat/fvp/plat_security.c			\
				plat/fvp/aarch64/plat_common.c

BL31_SOURCES		+=	drivers/arm/gic/gic_v2.c			\
				drivers/arm/gic/gic_v3.c			\
				drivers/arm/gic/aarch64/gic_v3_sysregs.S	\
				drivers/arm/cci400/cci400.c			\
				plat/common/aarch64/platform_mp_stack.S		\
				plat/fvp/bl31_plat_setup.c			\
				plat/fvp/plat_gic.c				\
				plat/fvp/plat_pm.c				\
				plat/fvp/plat_topology.c			\
				plat/fvp/aarch64/plat_helpers.S			\
				plat/fvp/aarch64/plat_common.c			\
				plat/fvp/drivers/pwrc/fvp_pwrc.c
