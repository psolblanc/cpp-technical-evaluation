set(PROJECT ${CMAKE_PROJECT_NAME})
set(PROJECT_lib ${CMAKE_PROJECT_NAME}_lib)

# Using solution folders and setting files
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(LIBRARY_ROOT ${CMAKE_CURRENT_LIST_DIR}/../)
set(SOURCE_PATH ${LIBRARY_ROOT}/src)
set(INCLUDE_PATH ${LIBRARY_ROOT}/include)

set(HEADER_FILES ${INCLUDE_PATH}/motion_detector.hpp)
set(SOURCE_FILES ${SOURCE_PATH}/main.cpp)
set(ALL_FILES ${HEADER_FILES} ${SOURCE_FILES})

# Create and configure binary and library of the project
add_executable(${PROJECT})
target_sources(${PROJECT} PRIVATE ${ALL_FILES})

add_library(${PROJECT_lib})
target_sources(${PROJECT_lib} PRIVATE ${ALL_FILES})
target_include_directories(${PROJECT_lib} PUBLIC ${INCLUDE_PATH})

set_target_properties(${PROJECT} PROPERTIES CXX_STANDARD_REQUIRED YES)
set_target_properties(${PROJECT_lib} PROPERTIES CXX_STANDARD_REQUIRED YES)

target_compile_features(${PROJECT} PRIVATE cxx_std_17)
target_compile_features(${PROJECT_lib} PRIVATE cxx_std_17)

#Linking libraries
