#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <array>
#include "svg2pdf.h"

void option_error()
{
    std::cout << "オプションが違います。" << std::endl << "inkscape -z --file=ファイル名.svg --export-pdf=ファイル名.pdf";
    std::exit(EXIT_FAILURE);
}

int main(int argc, char* argv[])
{
    std::string filename = "";
    std::string output = "";

    if (argc != 4) { option_error(); }
    
    std::array<std::string, 3> args;
    for (std::uint8_t i = 1; i < argc; i++) { args[i - 1] = argv[i]; }

    if (args[0] != "-z") { option_error(); }
    if (args[1].starts_with("--file=")) { filename = args[1].substr(7); }
    else { option_error(); }
    if (args[2].starts_with("--export-pdf")) { output = args[2].substr(13); }
    else { option_error(); }

    std::cout << filename << std::endl << output << std::endl;

    return svg2pdf(filename.c_str(), output.c_str());
}