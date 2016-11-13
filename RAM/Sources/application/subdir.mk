################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/application/BCM_appli.c" \
"../Sources/application/BCM_appli_old.c" \
"../Sources/application/LCM_appli_old.c" \
"../Sources/application/main.c" \

C_SRCS += \
../Sources/application/BCM_appli.c \
../Sources/application/BCM_appli_old.c \
../Sources/application/LCM_appli_old.c \
../Sources/application/main.c \

OBJS += \
./Sources/application/BCM_appli_c.obj \
./Sources/application/BCM_appli_old_c.obj \
./Sources/application/LCM_appli_old_c.obj \
./Sources/application/main_c.obj \

OBJS_QUOTED += \
"./Sources/application/BCM_appli_c.obj" \
"./Sources/application/BCM_appli_old_c.obj" \
"./Sources/application/LCM_appli_old_c.obj" \
"./Sources/application/main_c.obj" \

C_DEPS += \
./Sources/application/BCM_appli_c.d \
./Sources/application/BCM_appli_old_c.d \
./Sources/application/LCM_appli_old_c.d \
./Sources/application/main_c.d \

OBJS_OS_FORMAT += \
./Sources/application/BCM_appli_c.obj \
./Sources/application/BCM_appli_old_c.obj \
./Sources/application/LCM_appli_old_c.obj \
./Sources/application/main_c.obj \

C_DEPS_QUOTED += \
"./Sources/application/BCM_appli_c.d" \
"./Sources/application/BCM_appli_old_c.d" \
"./Sources/application/LCM_appli_old_c.d" \
"./Sources/application/main_c.d" \


# Each subdirectory must supply rules for building sources it contributes
Sources/application/BCM_appli_c.obj: ../Sources/application/BCM_appli.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/application/BCM_appli.args" -o "Sources/application/BCM_appli_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/application/%.d: ../Sources/application/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/application/BCM_appli_old_c.obj: ../Sources/application/BCM_appli_old.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/application/BCM_appli_old.args" -o "Sources/application/BCM_appli_old_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/application/LCM_appli_old_c.obj: ../Sources/application/LCM_appli_old.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/application/LCM_appli_old.args" -o "Sources/application/LCM_appli_old_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/application/main_c.obj: ../Sources/application/main.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@"Sources/application/main.args" -o "Sources/application/main_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


