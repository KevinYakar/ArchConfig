add_subdirectory(dwmipcpp)
include_directories(${DWMIPCPP_INCLUDE_DIRS})
include_directories(${DWMIPCPP_LIBRARY_DIRS})

target_link_libraries(dwm ${DWMIPCPP_LIBRARIES})
