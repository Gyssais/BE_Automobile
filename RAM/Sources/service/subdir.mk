################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/service/Comodo.c" \
"../Sources/service/Driver_phare.c" \
"../Sources/service/MPC5604B_LED.c" \
"../Sources/service/Mode_manager.c" \
"../Sources/service/SBC.c" \

C_SRCS += \
../Sources/service/Comodo.c \
../Sources/service/Driver_phare.c \
../Sources/service/MPC5604B_LED.c \
../Sources/service/Mode_manager.c \
../Sources/service/SBC.c \

OBJS += \
./Sources/service/Comodo_c.obj \
./Sources/service/Driver_phare_c.obj \
./Sources/service/MPC5604B_LED_c.obj \
./Sources/service/Mode_manager_c.obj \
./Sources/service/SBC_c.obj \

OBJS_QUOTED += \
"./Sources/service/Comodo_c.obj" \
"./Sources/service/Driver_phare_c.obj" \
"./Sources/service/MPC5604B_LED_c.obj" \
"./Sources/service/Mode_manager_c.obj" \
"./Sources/service/SBC_c.obj" \

C_DEPS += \
./Sources/service/Comodo_c.d \
./Sources/service/Driver_phare_c.d \
./Sources/service/MPC5604B_LED_c.d \
./Sources/service/Mode_manager_c.d \
./Sources/service/SBC_c.d \

OBJS_OS_FORMAT += \
./Sources/service/Comodo_c.obj \
./Sources/service/Driver_phare_c.obj \
./Sources/service/MPC5604B_LED_c.obj \
./Sources/service/Mode_manager_c.obj \
./Sources/service/SBC_c.obj \

C_DEPS_QUOTED += \
"./Sources/service/Comodo_c.d" \
"./Sources/service/Driver_phare_c.d" \
"./Sources/service/MPC5604B_LED_c.d" \
"./Sources/service/Mode_manager_c.d" \
"./Sources/service/SBC_c.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/service/Comodo_c.obj: ../Sources/service/Comodo.c
	@echo 'Building file: $<'
	@echo 'Executing target #1 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/service/Comodo.args" -o "Sources/service/Comodo_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/service/%.d: ../Sources/service/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/service/Driver_phare_c.obj: ../Sources/service/Driver_phare.c
	@echo 'Building file: $<'
	@echo 'Executing target #2 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/service/Driver_phare.args" -o "Sources/service/Driver_phare_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/service/MPC5604B_LED_c.obj: ../Sources/service/MPC5604B_LED.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/service/MPC5604B_LED.args" -o "Sources/service/MPC5604B_LED_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/service/Mode_manager_c.obj: ../Sources/service/Mode_manager.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/service/Mode_manager.args" -o "Sources/service/Mode_manager_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/service/SBC_c.obj: ../Sources/service/SBC.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/service/SBC.args" -o "Sources/service/SBC_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


