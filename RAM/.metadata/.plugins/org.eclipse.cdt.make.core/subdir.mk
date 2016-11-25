################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../.metadata/.plugins/org.eclipse.cdt.make.core/specs.cpp \

C_SRCS_QUOTED += \
"../.metadata/.plugins/org.eclipse.cdt.make.core/specs.c" \

C_SRCS += \
../.metadata/.plugins/org.eclipse.cdt.make.core/specs.c \

CPP_SRCS_QUOTED += \
"../.metadata/.plugins/org.eclipse.cdt.make.core/specs.cpp" \

OBJS += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.obj \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.obj \

OBJS_QUOTED += \
"./.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.obj" \
"./.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.obj" \

CPP_DEPS_QUOTED += \
"./.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.d" \

CPP_DEPS += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.d \

C_DEPS += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.d \

OBJS_OS_FORMAT += \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.obj \
./.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.obj \

C_DEPS_QUOTED += \
"./.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.d" \


# Each subdirectory must supply rules for building sources it contributes
.metadata/.plugins/org.eclipse.cdt.make.core/specs_c.obj: ../.metadata/.plugins/org.eclipse.cdt.make.core/specs.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@".metadata/.plugins/org.eclipse.cdt.make.core/specs.args" -o ".metadata/.plugins/org.eclipse.cdt.make.core/specs_c.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

.metadata/.plugins/org.eclipse.cdt.make.core/%.d: ../.metadata/.plugins/org.eclipse.cdt.make.core/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

.metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.obj: ../.metadata/.plugins/org.eclipse.cdt.make.core/specs.cpp
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: PowerPC Compiler'
	"$(PAToolsDirEnv)/mwcceppc" @@".metadata/.plugins/org.eclipse.cdt.make.core/specs_1.args" -o ".metadata/.plugins/org.eclipse.cdt.make.core/specs_cpp.obj" "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

.metadata/.plugins/org.eclipse.cdt.make.core/%.d: ../.metadata/.plugins/org.eclipse.cdt.make.core/%.cpp
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


