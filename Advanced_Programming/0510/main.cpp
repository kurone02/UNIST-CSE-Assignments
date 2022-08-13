#include <iostream>

using namespace std;

// Get the day of the week using if statements
string day_of_week_name_ifs(int day_of_week){
    if(day_of_week == 0) return "Sunday";
    if(day_of_week == 1) return "Monday";
    if(day_of_week == 2) return "Tuesday";
    if(day_of_week == 3) return "Wednesday";
    if(day_of_week == 4) return "Thursday";
    if(day_of_week == 5) return "Friday";
    if(day_of_week == 6) return "Saturday";
    return "Invalid";
}

enum day_of_week { SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY };

// Get the day of the week using enum
string day_of_week_name_enums(day_of_week d){
    switch (d){
        #define C(day) case day: return #day 
        C(SUNDAY);
        C(MONDAY);
        C(TUESDAY);
        C(WEDNESDAY);
        C(THURSDAY);
        C(FRIDAY);
        C(SATURDAY);
        default: return "Invalid";
    }
}

enum class month { jan, feb, mar, apr, may, jun, jul, aug, sep, oct, nov, dec };

int days_of_months(month m){
    switch (m){
    case month::jan:
    case month::mar:
    case month::may:
    case month::jul:
    case month::aug:
    case month::oct:
    case month::dec:
        return 31;
    case month::apr:
    case month::jun:
    case month::sep:
    case month::nov:
        return 30;
    case month::feb:
        return 28;
    default:
        return 0;
    }
}

struct day_of_month{
    month m;
    int d;
};

int days_between(day_of_month const &d1, day_of_month const &d2){
    int total_days = 0;
    for(month m = d1.m; m < d2.m; m = (month)((int)m + 1)){
        total_days += days_of_months(m);
    }
    return total_days + d2.d - d1.d;
}

int main(){
    day_of_month a = {month::apr, 30};
    day_of_month b = {month::may, 3};
    cout << days_between(a, b) << endl;
    return 0;
}
