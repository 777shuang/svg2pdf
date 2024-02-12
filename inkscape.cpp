#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <array>
#include "svg2pdf.h"

void option_error()
{
    std::cout << "Invalid option" << std::endl << "svg2pdf input.svg output.pdf";
    std::exit(EXIT_FAILURE);
}

int main(int argc, char* argv[])
{
    std::string filename = "";
    std::string output = "";

    if (argc == 3) { return svg2pdf(argv[1], argv[2]); }
    else { option_error(); }
}
