################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/BCM_appli.c" \
"../Sources/Comodo.c" \
"../Sources/Driver.c" \
"../Sources/Exceptions.c" \
"../Sources/IntcInterrupts.c" \
"../Sources/LCM_appli.c" \
"../Sources/MPC5604B_LED.c" \
"../Sources/Mode_manager.c" \
"../Sources/SBC.c" \
"../Sources/ivor_branch_table.c" \
"../Sources/main.c" \

C_SRCS += \
../Sources/BCM_appli.c \
../Sources/Comodo.c \
../Sources/Driver.c \
../Sources/Exceptions.c \
../Sources/IntcInterrupts.c \
../Sources/LCM_appli.c \
../Sources/MPC5604B_LED.c \
../Sources/Mode_manager.c \
../Sources/SBC.c \
../Sources/ivor_branch_table.c \
../Sources/main.c \

OBJS += \
./Sources/BCM_appli_c.obj \
./Sources/Comodo_c.obj \
./Sources/Driver_c.obj \
./Sources/Exceptions_c.obj \
./Sources/IntcInterrupts_c.obj \
./Sources/LCM_appli_c.obj \
./Sources/MPC5604B_LED_c.obj \
./Sources/Mode_manager_c.obj \
./Sources/SBC_c.obj \
./Sources/ivor_branch_table_c.obj \
./Sources/main_c.obj \

OBJS_QUOTED += \
"./Sources/BCM_appli_c.obj" \
"./Sources/Comodo_c.obj" \
"./Sources/Driver_c.obj" \
"./Sources/Exceptions_c.obj" \
"./Sources/IntcInterrupts_c.obj" \
"./Sources/LCM_appli_c.obj" \
"./Sources/MPC5604B_LED_c.obj" \
"./Sources/Mode_manager_c.obj" \
"./Sources/SBC_c.obj" \
"./Sources/ivor_branch_table_c.obj" \
"./Sources/main_c.obj" \

C_DEPS += \
./Sources/BCM_appli_c.d \
./Sources/Comodo_c.d \
./Sources/Driver_c.d \
./Sources/Exceptions_c.d \
./Sources/IntcInterrupts_c.d \
./Sources/LCM_appli_c.d \
./Sources/MPC5604B_LED_c.d \
./Sources/Mode_manager_c.d \
./Sources/SBC_c.d \
./Sources/ivor_branch_table_c.d \
./Sources/main_c.d \

OBJS_OS_FORMAT += \
./Sources/BCM_appli_c.obj \
./Sources/Comodo_c.obj \
./Sources/Driver_c.obj \
./Sources/Exceptions_c.obj \
./Sources/IntcInterrupts_c.obj \
./Sources/LCM_appli_c.obj \
./Sources/MPC5604B_LED_c.obj \
./Sources/Mode_manager_c.obj \
./Sources/SBC_c.obj \
./Sources/ivor_branch_table_c.obj \
./Sources/main_c.obj \

C_DEPS_QUOTED += \
"./Sources/BCM_appli_c.d" \
"./Sources/Comodo_c.d" \
"./Sources/Driver_c.d" \
"./Sources/Exceptions_c.d" \
"./Sources/IntcInterrupts_c.d" \
"./Sources/LCM_appli_c.d" \
"./Sources/MPC5604B_LED_c.d" \
"./Sources/Mode_manager_c.d" \
"./Sources/SBC_c.d" \
"./Sources/ivor_branch_table_c.d" \
"./Sources/main_c.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/BCM_appli_c.obj: ../Sources/BCM_appli.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/BCM_appli.args" -o "Sources/BCM_appli_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/%.d: ../Sources/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/Comodo_c.obj: ../Sources/Comodo.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/Comodo.args" -o "Sources/Comodo_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Driver_c.obj: ../Sources/Driver.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/Driver.args" -o "Sources/Driver_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Exceptions_c.obj: ../Sources/Exceptions.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/Exceptions.args" -o "Sources/Exceptions_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/IntcInterrupts_c.obj: ../Sources/IntcInterrupts.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/IntcInterrupts.args" -o "Sources/IntcInterrupts_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/LCM_appli_c.obj: ../Sources/LCM_appli.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/LCM_appli.args" -o "Sources/LCM_appli_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/MPC5604B_LED_c.obj: ../Sources/MPC5604B_LED.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/MPC5604B_LED.args" -o "Sources/MPC5604B_LED_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Mode_manager_c.obj: ../Sources/Mode_manager.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/Mode_manager.args" -o "Sources/Mode_manager_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/SBC_c.obj: ../Sources/SBC.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/SBC.args" -o "Sources/SBC_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/ivor_branch_table_c.obj: ../Sources/ivor_branch_table.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/ivor_branch_table.args" -o "Sources/ivor_branch_table_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/main_c.obj: ../Sources/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/main.args" -o "Sources/main_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


