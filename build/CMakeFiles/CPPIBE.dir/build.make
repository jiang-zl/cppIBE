# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jiangzhengliang/workspace/cppIBE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jiangzhengliang/workspace/cppIBE/build

# Include any dependencies generated for this target.
include CMakeFiles/CPPIBE.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CPPIBE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CPPIBE.dir/flags.make

CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o: ../benchmark/testEncryption.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o -c /home/jiangzhengliang/workspace/cppIBE/benchmark/testEncryption.cc

CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/benchmark/testEncryption.cc > CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.i

CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/benchmark/testEncryption.cc -o CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.s

CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o: ../benchmark/testKeyAgreement.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o -c /home/jiangzhengliang/workspace/cppIBE/benchmark/testKeyAgreement.cc

CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/benchmark/testKeyAgreement.cc > CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.i

CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/benchmark/testKeyAgreement.cc -o CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.s

CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o: ../benchmark/testSignature.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o -c /home/jiangzhengliang/workspace/cppIBE/benchmark/testSignature.cc

CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/benchmark/testSignature.cc > CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.i

CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/benchmark/testSignature.cc -o CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.s

CMakeFiles/CPPIBE.dir/src/Client.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/src/Client.cc.o: ../src/Client.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CPPIBE.dir/src/Client.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/src/Client.cc.o -c /home/jiangzhengliang/workspace/cppIBE/src/Client.cc

CMakeFiles/CPPIBE.dir/src/Client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/src/Client.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/src/Client.cc > CMakeFiles/CPPIBE.dir/src/Client.cc.i

CMakeFiles/CPPIBE.dir/src/Client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/src/Client.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/src/Client.cc -o CMakeFiles/CPPIBE.dir/src/Client.cc.s

CMakeFiles/CPPIBE.dir/src/IBE.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/src/IBE.cc.o: ../src/IBE.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CPPIBE.dir/src/IBE.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/src/IBE.cc.o -c /home/jiangzhengliang/workspace/cppIBE/src/IBE.cc

CMakeFiles/CPPIBE.dir/src/IBE.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/src/IBE.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/src/IBE.cc > CMakeFiles/CPPIBE.dir/src/IBE.cc.i

CMakeFiles/CPPIBE.dir/src/IBE.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/src/IBE.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/src/IBE.cc -o CMakeFiles/CPPIBE.dir/src/IBE.cc.s

CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o: CMakeFiles/CPPIBE.dir/flags.make
CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o: ../src/PKGServer.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o -c /home/jiangzhengliang/workspace/cppIBE/src/PKGServer.cc

CMakeFiles/CPPIBE.dir/src/PKGServer.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPIBE.dir/src/PKGServer.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiangzhengliang/workspace/cppIBE/src/PKGServer.cc > CMakeFiles/CPPIBE.dir/src/PKGServer.cc.i

CMakeFiles/CPPIBE.dir/src/PKGServer.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPIBE.dir/src/PKGServer.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiangzhengliang/workspace/cppIBE/src/PKGServer.cc -o CMakeFiles/CPPIBE.dir/src/PKGServer.cc.s

# Object files for target CPPIBE
CPPIBE_OBJECTS = \
"CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o" \
"CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o" \
"CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o" \
"CMakeFiles/CPPIBE.dir/src/Client.cc.o" \
"CMakeFiles/CPPIBE.dir/src/IBE.cc.o" \
"CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o"

# External object files for target CPPIBE
CPPIBE_EXTERNAL_OBJECTS =

../bin/CPPIBE: CMakeFiles/CPPIBE.dir/benchmark/testEncryption.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/benchmark/testKeyAgreement.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/benchmark/testSignature.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/src/Client.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/src/IBE.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/src/PKGServer.cc.o
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/build.make
../bin/CPPIBE: CMakeFiles/CPPIBE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../bin/CPPIBE"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CPPIBE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CPPIBE.dir/build: ../bin/CPPIBE

.PHONY : CMakeFiles/CPPIBE.dir/build

CMakeFiles/CPPIBE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CPPIBE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CPPIBE.dir/clean

CMakeFiles/CPPIBE.dir/depend:
	cd /home/jiangzhengliang/workspace/cppIBE/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiangzhengliang/workspace/cppIBE /home/jiangzhengliang/workspace/cppIBE /home/jiangzhengliang/workspace/cppIBE/build /home/jiangzhengliang/workspace/cppIBE/build /home/jiangzhengliang/workspace/cppIBE/build/CMakeFiles/CPPIBE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CPPIBE.dir/depend

