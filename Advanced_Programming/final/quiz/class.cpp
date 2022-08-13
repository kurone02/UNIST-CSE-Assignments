class a {};
class b : public a {};
class c : public b {};
class d : public c {};

int main(){
    a v1;
    b v2;
    c v3;
    d v4;
    a* p1 = &v3;
    b* p2 = &v4;
    c* p3 = &v2;
    d* p4 = &v1;
}