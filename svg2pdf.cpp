#include <cstdio>
#include <iostream>
#include <fstream>
#include <librsvg/rsvg.h>
#include <cairo/cairo.h>
#include <cairo/cairo-pdf.h>

extern "C" int svg2pdf(const char* filename, const char* output)
{
    std::ifstream ifs(filename);
    std::string source((std::istreambuf_iterator<char>(ifs)), std::istreambuf_iterator<char>());
    RsvgHandle* svg = rsvg_handle_new_from_data(reinterpret_cast<const guint8*>(source.c_str()), source.length() , nullptr);

    if (svg == nullptr)
    {
        std::cout << "no handle" << std::endl;
        return EXIT_FAILURE;
    }

    RsvgDimensionData dim;
    rsvg_handle_get_dimensions(svg, &dim);

    cairo_surface_t* surface = cairo_pdf_surface_create("-.pdf", dim.width, dim.height);
    cairo_t* cairo = cairo_create(surface);
    cairo_set_source_rgb(cairo, 1.0, 1.0, 1.0);
    rsvg_handle_render_cairo(svg, cairo);
    cairo_surface_flush(surface);
    cairo_destroy(cairo);
    cairo_surface_destroy(surface);
    rsvg_handle_close(svg, nullptr);
    g_object_unref(svg);

    std::rename("-.pdf", output);

    return EXIT_SUCCESS;
}