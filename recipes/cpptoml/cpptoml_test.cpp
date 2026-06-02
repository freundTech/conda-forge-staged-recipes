#include <sstream>
#include <cpptoml.h>

int main() {
    auto input =
        "[section]\n"
        "value = true\n";
    auto stream = std::istringstream{input};
    auto parser = cpptoml::parser{stream};

    auto table = parser.parse();

    return 0;
}
