#include <iostream>
#include <cstdlib>
#include <cstdint>
#include <string>
#include <array>
#include "svg2pdf.h"

void option_error()
{
    std::cout << "Invalid option" << std::endl << "inkscape -z --file=input.svg --export-pdf=output.pdf";
    std::exit(EXIT_FAILURE);
}

int main(int argc, char* argv[])
{
    std::string filename = "";
    std::string output = "";

    if (argc == 4)
    {
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
    else if (argc == 1)
    {
        std::cout << "Inkscape 1.3.2 (091e20e, 2023-11-25, custom)" << std::endl; // dummy string
        return EXIT_SUCCESS;
    }
    else { option_error(); }
}
