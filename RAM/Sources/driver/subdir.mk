################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/driver/Exceptions.c" \
"../Sources/driver/IntcInterrupts.c" \
"../Sources/driver/ivor_branch_table.c" \
"../Sources/driver/mc33984_drv.c" \
"../Sources/driver/spi_drv.c" \

C_SRCS += \
../Sources/driver/Exceptions.c \
../Sources/driver/IntcInterrupts.c \
../Sources/driver/ivor_branch_table.c \
../Sources/driver/mc33984_drv.c \
../Sources/driver/spi_drv.c \

OBJS += \
./Sources/driver/Exceptions_c.obj \
./Sources/driver/IntcInterrupts_c.obj \
./Sources/driver/ivor_branch_table_c.obj \
./Sources/driver/mc33984_drv_c.obj \
./Sources/driver/spi_drv_c.obj \

OBJS_QUOTED += \
"./Sources/driver/Exceptions_c.obj" \
"./Sources/driver/IntcInterrupts_c.obj" \
"./Sources/driver/ivor_branch_table_c.obj" \
"./Sources/driver/mc33984_drv_c.obj" \
"./Sources/driver/spi_drv_c.obj" \

C_DEPS += \
./Sources/driver/Exceptions_c.d \
./Sources/driver/IntcInterrupts_c.d \
./Sources/driver/ivor_branch_table_c.d \
./Sources/driver/mc33984_drv_c.d \
./Sources/driver/spi_drv_c.d \

OBJS_OS_FORMAT += \
./Sources/driver/Exceptions_c.obj \
./Sources/driver/IntcInterrupts_c.obj \
./Sources/driver/ivor_branch_table_c.obj \
./Sources/driver/mc33984_drv_c.obj \
./Sources/driver/spi_drv_c.obj \

C_DEPS_QUOTED += \
"./Sources/driver/Exceptions_c.d" \
"./Sources/driver/IntcInterrupts_c.d" \
"./Sources/driver/ivor_branch_table_c.d" \
"./Sources/driver/mc33984_drv_c.d" \
"./Sources/driver/spi_drv_c.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/driver/Exceptions_c.obj: ../Sources/driver/Exceptions.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/driver/Exceptions.args" -o "Sources/driver/Exceptions_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/driver/%.d: ../Sources/driver/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/driver/IntcInterrupts_c.obj: ../Sources/driver/IntcInterrupts.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/driver/IntcInterrupts.args" -o "Sources/driver/IntcInterrupts_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/driver/ivor_branch_table_c.obj: ../Sources/driver/ivor_branch_table.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/driver/ivor_branch_table.args" -o "Sources/driver/ivor_branch_table_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/driver/mc33984_drv_c.obj: ../Sources/driver/mc33984_drv.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/driver/mc33984_drv.args" -o "Sources/driver/mc33984_drv_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/driver/spi_drv_c.obj: ../Sources/driver/spi_drv.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/driver/spi_drv.args" -o "Sources/driver/spi_drv_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


