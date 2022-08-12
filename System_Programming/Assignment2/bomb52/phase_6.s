=> 0x0000000000401111 <+0>:     push   %r14
   0x0000000000401113 <+2>:     push   %r13
   0x0000000000401115 <+4>:     push   %r12
   0x0000000000401117 <+6>:     push   %rbp
   0x0000000000401118 <+7>:     push   %rbx
   0x0000000000401119 <+8>:     sub    $0x50,%rsp
   0x000000000040111d <+12>:    lea    0x30(%rsp),%rsi
   0x0000000000401122 <+17>:    callq  0x401473 <read_six_numbers>
   0x0000000000401127 <+22>:    lea    0x30(%rsp),%r12
   0x000000000040112c <+27>:    mov    %r12,%r13
   0x000000000040112f <+30>:    mov    $0x0,%r14d
   0x0000000000401135 <+36>:    jmp    0x40115d <phase_6+76>
   0x0000000000401137 <+38>:    callq  0x401451 <explode_bomb>
   0x000000000040113c <+43>:    jmp    0x40116c <phase_6+91>
   0x000000000040113e <+45>:    add    $0x1,%ebx
   0x0000000000401141 <+48>:    cmp    $0x5,%ebx
   0x0000000000401144 <+51>:    jg     0x401159 <phase_6+72>
   0x0000000000401146 <+53>:    movslq %ebx,%rax
   0x0000000000401149 <+56>:    mov    0x30(%rsp,%rax,4),%eax
   0x000000000040114d <+60>:    cmp    %eax,0x0(%rbp)
   0x0000000000401150 <+63>:    jne    0x40113e <phase_6+45>
   0x0000000000401152 <+65>:    callq  0x401451 <explode_bomb>
   0x0000000000401157 <+70>:    jmp    0x40113e <phase_6+45>
   0x0000000000401159 <+72>:    add    $0x4,%r13
   0x000000000040115d <+76>:    mov    %r13,%rbp
   0x0000000000401160 <+79>:    mov    0x0(%r13),%eax
   0x0000000000401164 <+83>:    sub    $0x1,%eax
   0x0000000000401167 <+86>:    cmp    $0x5,%eax
   0x000000000040116a <+89>:    ja     0x401137 <phase_6+38>
   0x000000000040116c <+91>:    add    $0x1,%r14d
   0x0000000000401170 <+95>:    cmp    $0x6,%r14d
   0x0000000000401174 <+99>:    je     0x40117b <phase_6+106>
   0x0000000000401176 <+101>:   mov    %r14d,%ebx
   0x0000000000401179 <+104>:   jmp    0x401146 <phase_6+53>
   0x000000000040117b <+106>:   lea    0x18(%r12),%rcx
   0x0000000000401180 <+111>:   mov    $0x7,%edx
   0x0000000000401185 <+116>:   mov    %edx,%eax
   0x0000000000401187 <+118>:   sub    (%r12),%eax
   0x000000000040118b <+122>:   mov    %eax,(%r12)
   0x000000000040118f <+126>:   add    $0x4,%r12
---Type <return> to continue, or q <return> to quit---
   0x0000000000401193 <+130>:   cmp    %r12,%rcx
   0x0000000000401196 <+133>:   jne    0x401185 <phase_6+116>
   0x0000000000401198 <+135>:   mov    $0x0,%esi
   0x000000000040119d <+140>:   jmp    0x4011b8 <phase_6+167>
   0x000000000040119f <+142>:   mov    0x8(%rdx),%rdx
   0x00000000004011a3 <+146>:   add    $0x1,%eax
   0x00000000004011a6 <+149>:   cmp    %ecx,%eax
   0x00000000004011a8 <+151>:   jne    0x40119f <phase_6+142>
   0x00000000004011aa <+153>:   mov    %rdx,(%rsp,%rsi,8)
   0x00000000004011ae <+157>:   add    $0x1,%rsi
   0x00000000004011b2 <+161>:   cmp    $0x6,%rsi
   0x00000000004011b6 <+165>:   je     0x4011cd <phase_6+188>
   0x00000000004011b8 <+167>:   mov    0x30(%rsp,%rsi,4),%ecx
   0x00000000004011bc <+171>:   mov    $0x1,%eax
   0x00000000004011c1 <+176>:   mov    $0x6032f0,%edx
   0x00000000004011c6 <+181>:   cmp    $0x1,%ecx
   0x00000000004011c9 <+184>:   jg     0x40119f <phase_6+142>
   0x00000000004011cb <+186>:   jmp    0x4011aa <phase_6+153>
   0x00000000004011cd <+188>:   mov    (%rsp),%rbx
   0x00000000004011d1 <+192>:   mov    0x8(%rsp),%rax
   0x00000000004011d6 <+197>:   mov    %rax,0x8(%rbx)
   0x00000000004011da <+201>:   mov    0x10(%rsp),%rdx
   0x00000000004011df <+206>:   mov    %rdx,0x8(%rax)
   0x00000000004011e3 <+210>:   mov    0x18(%rsp),%rax
   0x00000000004011e8 <+215>:   mov    %rax,0x8(%rdx)
   0x00000000004011ec <+219>:   mov    0x20(%rsp),%rdx
   0x00000000004011f1 <+224>:   mov    %rdx,0x8(%rax)
   0x00000000004011f5 <+228>:   mov    0x28(%rsp),%rax
   0x00000000004011fa <+233>:   mov    %rax,0x8(%rdx)
   0x00000000004011fe <+237>:   movq   $0x0,0x8(%rax)
   0x0000000000401206 <+245>:   mov    $0x5,%ebp
   0x000000000040120b <+250>:   jmp    0x401216 <phase_6+261>
   0x000000000040120d <+252>:   mov    0x8(%rbx),%rbx
   0x0000000000401211 <+256>:   sub    $0x1,%ebp
   0x0000000000401214 <+259>:   je     0x401227 <phase_6+278>
   0x0000000000401216 <+261>:   mov    0x8(%rbx),%rax
   0x000000000040121a <+265>:   mov    (%rax),%eax
   0x000000000040121c <+267>:   cmp    %eax,(%rbx)
   0x000000000040121e <+269>:   jge    0x40120d <phase_6+252>
   0x0000000000401220 <+271>:   callq  0x401451 <explode_bomb>
   0x0000000000401225 <+276>:   jmp    0x40120d <phase_6+252>
---Type <return> to continue, or q <return> to quit---
   0x0000000000401227 <+278>:   add    $0x50,%rsp
   0x000000000040122b <+282>:   pop    %rbx
   0x000000000040122c <+283>:   pop    %rbp
   0x000000000040122d <+284>:   pop    %r12
   0x000000000040122f <+286>:   pop    %r13
   0x0000000000401231 <+288>:   pop    %r14
   0x0000000000401233 <+290>:   retq




<node1> (loc: 0x6032f0) ---> value = 385    next = 0x603300
<node2> (loc: 0x603300) ---> value = 268    next = 0x603310
<node3> (loc: 0x603310) ---> value = 854    next = 0x603320
<node4> (loc: 0x603320) ---> value = 293    next = 0x603330
<node5> (loc: 0x603330) ---> value = 957    next = 0x603340
<node6> (loc: 0x603340) ---> value = 955    next = (nil)


define pl
   set var $current = $arg0
   while $current != 0
      printf "<node%d> (loc: %p) ---> value = %d    next = %p\n", *($current + 0x4), $current, *($current), *($current + 0x8)
      set var $current = *($current + 0x8)
   end
end

0x7fffffffe1b0 + 0x30
0x7fffffffe1e0


define pa
   set var $i = 1
   while $i <= 6
      printf "a[%d] = %d\n", $i, **(int*)($arg0 + 0x8*($i-1))
      set var $i = $i + 1
   end
end


(gdb) display/oi $pc