#include "rectangle.h"

std::ostream &operator <<(std::ostream &out, rectangle const &r){
    return out << "rectangle(width: " << r.get_width() << ", height: " << r.get_height() << ')';
}
