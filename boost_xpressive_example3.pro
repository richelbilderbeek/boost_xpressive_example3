#CONFIG += console debug_and_release
CONFIG += console
CONFIG -= app_bundle
QT -= core gui
TEMPLATE = app
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

SOURCES += main.cpp


CONFIG += c++17
QMAKE_CXXFLAGS += -std=c++17

# Boost.Test
LIBS += -lboost_unit_test_framework

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
