cmake_minimum_required(VERSION 3.5)

project(LogersTests LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# или
include(FetchContent)
FetchContent_Declare(
  json
  URL https://github.com/nlohmann/json/releases/download/v3.11.2/json.tar.xz
)
FetchContent_MakeAvailable(json)

add_executable(LogersTests main.cpp)

target_link_libraries(LogersTests PRIVATE nlohmann_json::nlohmann_json)

include(GNUInstallDirs)
install(TARGETS LogersTests
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
