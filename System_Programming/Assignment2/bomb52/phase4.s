edi = argument
edx = 14
esi = 0

edx = x = 14
esi = y = 0
edi = z = arg

def func4(x, y, z):
    
    int a = x - y
    int b = a
    b >>= 31
    b += a
    b >>= 1
    b += y

    if(z > b){
        x = b - 1
        a = func4(x, y, z)
        b += a
    } else if(z < b){
        y = b + 1
        a = func4(x, y, z)
        b += a
    }
    a = b
    return a;
   0x0000000000401013 <+0>:     push   %rbx
   0x0000000000401014 <+1>:     mov    %edx,%eax
   0x0000000000401016 <+3>:     sub    %esi,%eax
   0x0000000000401018 <+5>:     mov    %eax,%ebx
   0x000000000040101a <+7>:     shr    $0x1f,%ebx
   0x000000000040101d <+10>:    add    %eax,%ebx
   0x000000000040101f <+12>:    sar    %ebx
   0x0000000000401021 <+14>:    add    %esi,%ebx
   0x0000000000401023 <+16>:    cmp    %edi,%ebx
   0x0000000000401025 <+18>:    jg     0x40102f <func4+28>
   0x0000000000401027 <+20>:    cmp    %edi,%ebx
   0x0000000000401029 <+22>:    jl     0x40103b <func4+40>
   0x000000000040102b <+24>:    mov    %ebx,%eax
   0x000000000040102d <+26>:    pop    %rbx
   0x000000000040102e <+27>:    retq
   0x000000000040102f <+28>:    lea    -0x1(%rbx),%edx
   0x0000000000401032 <+31>:    callq  0x401013 <func4>
   0x0000000000401037 <+36>:    add    %eax,%ebx
   0x0000000000401039 <+38>:    jmp    0x40102b <func4+24>
   0x000000000040103b <+40>:    lea    0x1(%rbx),%esi
   0x000000000040103e <+43>:    callq  0x401013 <func4>
   0x0000000000401043 <+48>:    add    %eax,%ebx
   0x0000000000401045 <+50>:    jmp    0x40102b <func4+24>
