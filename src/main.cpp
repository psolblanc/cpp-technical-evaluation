#include <iostream>
#include "spdlog/spdlog.h"

int main() {

  std::cout << "Hello allread." << std::endl;
  spdlog::info("Hello, {}!", "World");
  return 0;
}