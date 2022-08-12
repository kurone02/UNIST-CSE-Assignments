Disassembly of section .init:

0000000000400a78 <_init>:
  400a78:       48 83 ec 08             sub    $0x8,%rsp
  400a7c:       48 8b 05 75 25 20 00    mov    0x202575(%rip),%rax        # 602ff8 <_DYNAMIC+0x1d0>
  400a83:       48 85 c0                test   %rax,%rax
  400a86:       74 05                   je     400a8d <_init+0x15>
  400a88:       e8 03 01 00 00          callq  400b90 <__gmon_start__@plt>
  400a8d:       48 83 c4 08             add    $0x8,%rsp
  400a91:       c3                      retq

Disassembly of section .plt:

0000000000400aa0 <getenv@plt-0x10>:
  400aa0:       ff 35 62 25 20 00       pushq  0x202562(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400aa6:       ff 25 64 25 20 00       jmpq   *0x202564(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400aac:       0f 1f 40 00             nopl   0x0(%rax)

0000000000400ab0 <getenv@plt>:
  400ab0:       ff 25 62 25 20 00       jmpq   *0x202562(%rip)        # 603018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ab6:       68 00 00 00 00          pushq  $0x0
  400abb:       e9 e0 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400ac0 <__errno_location@plt>:
  400ac0:       ff 25 5a 25 20 00       jmpq   *0x20255a(%rip)        # 603020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ac6:       68 01 00 00 00          pushq  $0x1
  400acb:       e9 d0 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400ad0 <strcpy@plt>:
  400ad0:       ff 25 52 25 20 00       jmpq   *0x202552(%rip)        # 603028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ad6:       68 02 00 00 00          pushq  $0x2
  400adb:       e9 c0 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400ae0 <puts@plt>:
  400ae0:       ff 25 4a 25 20 00       jmpq   *0x20254a(%rip)        # 603030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400ae6:       68 03 00 00 00          pushq  $0x3
  400aeb:       e9 b0 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400af0 <write@plt>:
  400af0:       ff 25 42 25 20 00       jmpq   *0x202542(%rip)        # 603038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400af6:       68 04 00 00 00          pushq  $0x4
  400afb:       e9 a0 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b00 <printf@plt>:
  400b00:       ff 25 3a 25 20 00       jmpq   *0x20253a(%rip)        # 603040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b06:       68 05 00 00 00          pushq  $0x5
  400b0b:       e9 90 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b10 <alarm@plt>:
  400b10:       ff 25 32 25 20 00       jmpq   *0x202532(%rip)        # 603048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b16:       68 06 00 00 00          pushq  $0x6
  400b1b:       e9 80 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b20 <close@plt>:
  400b20:       ff 25 2a 25 20 00       jmpq   *0x20252a(%rip)        # 603050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400b26:       68 07 00 00 00          pushq  $0x7
  400b2b:       e9 70 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b30 <read@plt>:
  400b30:       ff 25 22 25 20 00       jmpq   *0x202522(%rip)        # 603058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400b36:       68 08 00 00 00          pushq  $0x8
  400b3b:       e9 60 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b40 <__libc_start_main@plt>:
  400b40:       ff 25 1a 25 20 00       jmpq   *0x20251a(%rip)        # 603060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b46:       68 09 00 00 00          pushq  $0x9
  400b4b:       e9 50 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b50 <fgets@plt>:
  400b50:       ff 25 12 25 20 00       jmpq   *0x202512(%rip)        # 603068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b56:       68 0a 00 00 00          pushq  $0xa
  400b5b:       e9 40 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b60 <signal@plt>:
  400b60:       ff 25 0a 25 20 00       jmpq   *0x20250a(%rip)        # 603070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b66:       68 0b 00 00 00          pushq  $0xb
  400b6b:       e9 30 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b70 <gethostbyname@plt>:
  400b70:       ff 25 02 25 20 00       jmpq   *0x202502(%rip)        # 603078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b76:       68 0c 00 00 00          pushq  $0xc
  400b7b:       e9 20 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b80 <fprintf@plt>:
  400b80:       ff 25 fa 24 20 00       jmpq   *0x2024fa(%rip)        # 603080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b86:       68 0d 00 00 00          pushq  $0xd
  400b8b:       e9 10 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400b90 <__gmon_start__@plt>:
  400b90:       ff 25 f2 24 20 00       jmpq   *0x2024f2(%rip)        # 603088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b96:       68 0e 00 00 00          pushq  $0xe
  400b9b:       e9 00 ff ff ff          jmpq   400aa0 <_init+0x28>

0000000000400ba0 <strtol@plt>:
  400ba0:       ff 25 ea 24 20 00       jmpq   *0x2024ea(%rip)        # 603090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400ba6:       68 0f 00 00 00          pushq  $0xf
  400bab:       e9 f0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400bb0 <fflush@plt>:
  400bb0:       ff 25 e2 24 20 00       jmpq   *0x2024e2(%rip)        # 603098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400bb6:       68 10 00 00 00          pushq  $0x10
  400bbb:       e9 e0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400bc0 <__isoc99_sscanf@plt>:
  400bc0:       ff 25 da 24 20 00       jmpq   *0x2024da(%rip)        # 6030a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400bc6:       68 11 00 00 00          pushq  $0x11
  400bcb:       e9 d0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400bd0 <bcopy@plt>:
  400bd0:       ff 25 d2 24 20 00       jmpq   *0x2024d2(%rip)        # 6030a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400bd6:       68 12 00 00 00          pushq  $0x12
  400bdb:       e9 c0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400be0 <fopen@plt>:
  400be0:       ff 25 ca 24 20 00       jmpq   *0x2024ca(%rip)        # 6030b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400be6:       68 13 00 00 00          pushq  $0x13
  400beb:       e9 b0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400bf0 <sprintf@plt>:
  400bf0:       ff 25 c2 24 20 00       jmpq   *0x2024c2(%rip)        # 6030b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400bf6:       68 14 00 00 00          pushq  $0x14
  400bfb:       e9 a0 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400c00 <exit@plt>:
  400c00:       ff 25 ba 24 20 00       jmpq   *0x2024ba(%rip)        # 6030c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c06:       68 15 00 00 00          pushq  $0x15
  400c0b:       e9 90 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400c10 <connect@plt>:
  400c10:       ff 25 b2 24 20 00       jmpq   *0x2024b2(%rip)        # 6030c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c16:       68 16 00 00 00          pushq  $0x16
  400c1b:       e9 80 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400c20 <sleep@plt>:
  400c20:       ff 25 aa 24 20 00       jmpq   *0x2024aa(%rip)        # 6030d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400c26:       68 17 00 00 00          pushq  $0x17
  400c2b:       e9 70 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400c30 <__ctype_b_loc@plt>:
  400c30:       ff 25 a2 24 20 00       jmpq   *0x2024a2(%rip)        # 6030d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400c36:       68 18 00 00 00          pushq  $0x18
  400c3b:       e9 60 fe ff ff          jmpq   400aa0 <_init+0x28>

0000000000400c40 <socket@plt>:
  400c40:       ff 25 9a 24 20 00       jmpq   *0x20249a(%rip)        # 6030e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400c46:       68 19 00 00 00          pushq  $0x19
  400c4b:       e9 50 fe ff ff          jmpq   400aa0 <_init+0x28>

Disassembly of section .text:

0000000000400c50 <_start>:
  400c50:       31 ed                   xor    %ebp,%ebp
  400c52:       49 89 d1                mov    %rdx,%r9
  400c55:       5e                      pop    %rsi
  400c56:       48 89 e2                mov    %rsp,%rdx
  400c59:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
  400c5d:       50                      push   %rax
  400c5e:       54                      push   %rsp
  400c5f:       49 c7 c0 d0 21 40 00    mov    $0x4021d0,%r8
  400c66:       48 c7 c1 60 21 40 00    mov    $0x402160,%rcx
  400c6d:       48 c7 c7 27 0d 40 00    mov    $0x400d27,%rdi
  400c74:       e8 c7 fe ff ff          callq  400b40 <__libc_start_main@plt>
  400c79:       f4                      hlt
  400c7a:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000000400c80 <deregister_tm_clones>:
  400c80:       55                      push   %rbp
  400c81:       b8 60 37 60 00          mov    $0x603760,%eax
  400c86:       48 3d 60 37 60 00       cmp    $0x603760,%rax
  400c8c:       48 89 e5                mov    %rsp,%rbp
  400c8f:       74 17                   je     400ca8 <deregister_tm_clones+0x28>
  400c91:       b8 00 00 00 00          mov    $0x0,%eax
  400c96:       48 85 c0                test   %rax,%rax
  400c99:       74 0d                   je     400ca8 <deregister_tm_clones+0x28>
  400c9b:       5d                      pop    %rbp
  400c9c:       bf 60 37 60 00          mov    $0x603760,%edi
  400ca1:       ff e0                   jmpq   *%rax
  400ca3:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
  400ca8:       5d                      pop    %rbp
  400ca9:       c3                      retq
  400caa:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000000400cb0 <register_tm_clones>:
  400cb0:       be 60 37 60 00          mov    $0x603760,%esi
  400cb5:       55                      push   %rbp
  400cb6:       48 81 ee 60 37 60 00    sub    $0x603760,%rsi
  400cbd:       48 89 e5                mov    %rsp,%rbp
  400cc0:       48 c1 fe 03             sar    $0x3,%rsi
  400cc4:       48 89 f0                mov    %rsi,%rax
  400cc7:       48 c1 e8 3f             shr    $0x3f,%rax
  400ccb:       48 01 c6                add    %rax,%rsi
  400cce:       48 d1 fe                sar    %rsi
  400cd1:       74 15                   je     400ce8 <register_tm_clones+0x38>
  400cd3:       b8 00 00 00 00          mov    $0x0,%eax
  400cd8:       48 85 c0                test   %rax,%rax
  400cdb:       74 0b                   je     400ce8 <register_tm_clones+0x38>
  400cdd:       5d                      pop    %rbp
  400cde:       bf 60 37 60 00          mov    $0x603760,%edi
  400ce3:       ff e0                   jmpq   *%rax
  400ce5:       0f 1f 00                nopl   (%rax)
  400ce8:       5d                      pop    %rbp
  400ce9:       c3                      retq
  400cea:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)

0000000000400cf0 <__do_global_dtors_aux>:
  400cf0:       80 3d 81 2a 20 00 00    cmpb   $0x0,0x202a81(%rip)        # 603778 <completed.6940>
  400cf7:       75 17                   jne    400d10 <__do_global_dtors_aux+0x20>
  400cf9:       55                      push   %rbp
  400cfa:       48 89 e5                mov    %rsp,%rbp
  400cfd:       e8 7e ff ff ff          callq  400c80 <deregister_tm_clones>
  400d02:       c6 05 6f 2a 20 00 01    movb   $0x1,0x202a6f(%rip)        # 603778 <completed.6940>
  400d09:       5d                      pop    %rbp
  400d0a:       c3                      retq
  400d0b:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
  400d10:       f3 c3                   repz retq
  400d12:       0f 1f 40 00             nopl   0x0(%rax)
  400d16:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  400d1d:       00 00 00

0000000000400d20 <frame_dummy>:
  400d20:       55                      push   %rbp
  400d21:       48 89 e5                mov    %rsp,%rbp
  400d24:       5d                      pop    %rbp
  400d25:       eb 89                   jmp    400cb0 <register_tm_clones>

0000000000400d27 <main>:
  400d27:       53                      push   %rbx
  400d28:       83 ff 01                cmp    $0x1,%edi
  400d2b:       0f 84 e8 00 00 00       je     400e19 <main+0xf2>
  400d31:       48 89 f3                mov    %rsi,%rbx
  400d34:       83 ff 02                cmp    $0x2,%edi
  400d37:       0f 85 0a 01 00 00       jne    400e47 <main+0x120>
  400d3d:       48 8b 7e 08             mov    0x8(%rsi),%rdi
  400d41:       be e4 21 40 00          mov    $0x4021e4,%esi
  400d46:       e8 95 fe ff ff          callq  400be0 <fopen@plt>
  400d4b:       48 89 05 2e 2a 20 00    mov    %rax,0x202a2e(%rip)        # 603780 <infile>
  400d52:       48 85 c0                test   %rax,%rax
  400d55:       0f 84 d1 00 00 00       je     400e2c <main+0x105>
  400d5b:       e8 5b 06 00 00          callq  4013bb <initialize_bomb>
  400d60:       bf 68 22 40 00          mov    $0x402268,%edi
  400d65:       e8 76 fd ff ff          callq  400ae0 <puts@plt>
  400d6a:       bf a8 22 40 00          mov    $0x4022a8,%edi
  400d6f:       e8 6c fd ff ff          callq  400ae0 <puts@plt>
  400d74:       e8 39 07 00 00          callq  4014b2 <read_line>
  400d79:       48 89 c7                mov    %rax,%rdi
  400d7c:       e8 e2 00 00 00          callq  400e63 <phase_1>
  400d81:       e8 5a 08 00 00          callq  4015e0 <phase_defused>
  400d86:       bf d8 22 40 00          mov    $0x4022d8,%edi
  400d8b:       e8 50 fd ff ff          callq  400ae0 <puts@plt>
  400d90:       e8 1d 07 00 00          callq  4014b2 <read_line>
  400d95:       48 89 c7                mov    %rax,%rdi
  400d98:       e8 e4 00 00 00          callq  400e81 <phase_2>
  400d9d:       e8 3e 08 00 00          callq  4015e0 <phase_defused>
  400da2:       bf 1d 22 40 00          mov    $0x40221d,%edi
  400da7:       e8 34 fd ff ff          callq  400ae0 <puts@plt>
  400dac:       e8 01 07 00 00          callq  4014b2 <read_line>
  400db1:       48 89 c7                mov    %rax,%rdi
  400db4:       e8 0b 01 00 00          callq  400ec4 <phase_3>
  400db9:       e8 22 08 00 00          callq  4015e0 <phase_defused>
  400dbe:       bf 3b 22 40 00          mov    $0x40223b,%edi
  400dc3:       e8 18 fd ff ff          callq  400ae0 <puts@plt>
  400dc8:       e8 e5 06 00 00          callq  4014b2 <read_line>
  400dcd:       48 89 c7                mov    %rax,%rdi
  400dd0:       e8 72 02 00 00          callq  401047 <phase_4>
  400dd5:       e8 06 08 00 00          callq  4015e0 <phase_defused>
  400dda:       bf 08 23 40 00          mov    $0x402308,%edi
  400ddf:       e8 fc fc ff ff          callq  400ae0 <puts@plt>
  400de4:       e8 c9 06 00 00          callq  4014b2 <read_line>
  400de9:       48 89 c7                mov    %rax,%rdi
  400dec:       e8 ad 02 00 00          callq  40109e <phase_5>
  400df1:       e8 ea 07 00 00          callq  4015e0 <phase_defused>
  400df6:       bf 4a 22 40 00          mov    $0x40224a,%edi
  400dfb:       e8 e0 fc ff ff          callq  400ae0 <puts@plt>
  400e00:       e8 ad 06 00 00          callq  4014b2 <read_line>
  400e05:       48 89 c7                mov    %rax,%rdi
  400e08:       e8 04 03 00 00          callq  401111 <phase_6>
  400e0d:       e8 ce 07 00 00          callq  4015e0 <phase_defused>
  400e12:       b8 00 00 00 00          mov    $0x0,%eax
  400e17:       5b                      pop    %rbx
  400e18:       c3                      retq
  400e19:       48 8b 05 48 29 20 00    mov    0x202948(%rip),%rax        # 603768 <stdin@@GLIBC_2.2.5>
  400e20:       48 89 05 59 29 20 00    mov    %rax,0x202959(%rip)        # 603780 <infile>
  400e27:       e9 2f ff ff ff          jmpq   400d5b <main+0x34>
  400e2c:       48 8b 53 08             mov    0x8(%rbx),%rdx
  400e30:       48 8b 33                mov    (%rbx),%rsi
  400e33:       bf e6 21 40 00          mov    $0x4021e6,%edi
  400e38:       e8 c3 fc ff ff          callq  400b00 <printf@plt>
  400e3d:       bf 08 00 00 00          mov    $0x8,%edi
  400e42:       e8 b9 fd ff ff          callq  400c00 <exit@plt>
  400e47:       48 8b 36                mov    (%rsi),%rsi
  400e4a:       bf 03 22 40 00          mov    $0x402203,%edi
  400e4f:       b8 00 00 00 00          mov    $0x0,%eax
  400e54:       e8 a7 fc ff ff          callq  400b00 <printf@plt>
  400e59:       bf 08 00 00 00          mov    $0x8,%edi
  400e5e:       e8 9d fd ff ff          callq  400c00 <exit@plt>

0000000000400e63 <phase_1>:
  400e63:       48 83 ec 08             sub    $0x8,%rsp
  400e67:       be 30 23 40 00          mov    $0x402330,%esi
  400e6c:       e8 e3 04 00 00          callq  401354 <strings_not_equal>
  400e71:       85 c0                   test   %eax,%eax
  400e73:       75 05                   jne    400e7a <phase_1+0x17>
  400e75:       48 83 c4 08             add    $0x8,%rsp
  400e79:       c3                      retq
  400e7a:       e8 d2 05 00 00          callq  401451 <explode_bomb>
  400e7f:       eb f4                   jmp    400e75 <phase_1+0x12>

0000000000400e81 <phase_2>:
  400e81:       53                      push   %rbx
  400e82:       48 83 ec 20             sub    $0x20,%rsp
  400e86:       48 89 e6                mov    %rsp,%rsi
  400e89:       e8 e5 05 00 00          callq  401473 <read_six_numbers>
  400e8e:       83 3c 24 00             cmpl   $0x0,(%rsp)
  400e92:       78 07                   js     400e9b <phase_2+0x1a>
  400e94:       bb 01 00 00 00          mov    $0x1,%ebx
  400e99:       eb 11                   jmp    400eac <phase_2+0x2b>
  400e9b:       e8 b1 05 00 00          callq  401451 <explode_bomb>
  400ea0:       eb f2                   jmp    400e94 <phase_2+0x13>
  400ea2:       48 83 c3 01             add    $0x1,%rbx
  400ea6:       48 83 fb 06             cmp    $0x6,%rbx
  400eaa:       74 12                   je     400ebe <phase_2+0x3d>
  400eac:       89 d8                   mov    %ebx,%eax
  400eae:       03 44 9c fc             add    -0x4(%rsp,%rbx,4),%eax
  400eb2:       39 04 9c                cmp    %eax,(%rsp,%rbx,4)
  400eb5:       74 eb                   je     400ea2 <phase_2+0x21>
  400eb7:       e8 95 05 00 00          callq  401451 <explode_bomb>
  400ebc:       eb e4                   jmp    400ea2 <phase_2+0x21>
  400ebe:       48 83 c4 20             add    $0x20,%rsp
  400ec2:       5b                      pop    %rbx
  400ec3:       c3                      retq

0000000000400ec4 <phase_3>:
  400ec4:       48 83 ec 18             sub    $0x18,%rsp
  400ec8:       4c 8d 44 24 08          lea    0x8(%rsp),%r8
  400ecd:       48 8d 4c 24 07          lea    0x7(%rsp),%rcx
  400ed2:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
  400ed7:       be 8e 23 40 00          mov    $0x40238e,%esi
  400edc:       b8 00 00 00 00          mov    $0x0,%eax
  400ee1:       e8 da fc ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  400ee6:       83 f8 02                cmp    $0x2,%eax
  400ee9:       7e 16                   jle    400f01 <phase_3+0x3d>
  400eeb:       83 7c 24 0c 07          cmpl   $0x7,0xc(%rsp)
  400ef0:       0f 87 03 01 00 00       ja     400ff9 <phase_3+0x135>
  400ef6:       8b 44 24 0c             mov    0xc(%rsp),%eax
  400efa:       ff 24 c5 a0 23 40 00    jmpq   *0x4023a0(,%rax,8)
  400f01:       e8 4b 05 00 00          callq  401451 <explode_bomb>
  400f06:       eb e3                   jmp    400eeb <phase_3+0x27>
  400f08:       b8 78 00 00 00          mov    $0x78,%eax
  400f0d:       81 7c 24 08 65 03 00    cmpl   $0x365,0x8(%rsp)
  400f14:       00
  400f15:       0f 84 e8 00 00 00       je     401003 <phase_3+0x13f>
  400f1b:       e8 31 05 00 00          callq  401451 <explode_bomb>
  400f20:       b8 78 00 00 00          mov    $0x78,%eax
  400f25:       e9 d9 00 00 00          jmpq   401003 <phase_3+0x13f>
  400f2a:       b8 72 00 00 00          mov    $0x72,%eax
  400f2f:       81 7c 24 08 0f 01 00    cmpl   $0x10f,0x8(%rsp)
  400f36:       00
  400f37:       0f 84 c6 00 00 00       je     401003 <phase_3+0x13f>
  400f3d:       e8 0f 05 00 00          callq  401451 <explode_bomb>
  400f42:       b8 72 00 00 00          mov    $0x72,%eax
  400f47:       e9 b7 00 00 00          jmpq   401003 <phase_3+0x13f>
  400f4c:       b8 73 00 00 00          mov    $0x73,%eax
  400f51:       81 7c 24 08 41 01 00    cmpl   $0x141,0x8(%rsp)
  400f58:       00
  400f59:       0f 84 a4 00 00 00       je     401003 <phase_3+0x13f>
  400f5f:       e8 ed 04 00 00          callq  401451 <explode_bomb>
  400f64:       b8 73 00 00 00          mov    $0x73,%eax
  400f69:       e9 95 00 00 00          jmpq   401003 <phase_3+0x13f>
  400f6e:       b8 79 00 00 00          mov    $0x79,%eax
  400f73:       81 7c 24 08 f6 01 00    cmpl   $0x1f6,0x8(%rsp)
  400f7a:       00
  400f7b:       0f 84 82 00 00 00       je     401003 <phase_3+0x13f>
  400f81:       e8 cb 04 00 00          callq  401451 <explode_bomb>
  400f86:       b8 79 00 00 00          mov    $0x79,%eax
  400f8b:       eb 76                   jmp    401003 <phase_3+0x13f>
  400f8d:       b8 74 00 00 00          mov    $0x74,%eax
  400f92:       81 7c 24 08 77 01 00    cmpl   $0x177,0x8(%rsp)
  400f99:       00
  400f9a:       74 67                   je     401003 <phase_3+0x13f>
  400f9c:       e8 b0 04 00 00          callq  401451 <explode_bomb>
  400fa1:       b8 74 00 00 00          mov    $0x74,%eax
  400fa6:       eb 5b                   jmp    401003 <phase_3+0x13f>
  400fa8:       b8 72 00 00 00          mov    $0x72,%eax
  400fad:       81 7c 24 08 95 00 00    cmpl   $0x95,0x8(%rsp)
  400fb4:       00
  400fb5:       74 4c                   je     401003 <phase_3+0x13f>
  400fb7:       e8 95 04 00 00          callq  401451 <explode_bomb>
  400fbc:       b8 72 00 00 00          mov    $0x72,%eax
  400fc1:       eb 40                   jmp    401003 <phase_3+0x13f>
  400fc3:       b8 6b 00 00 00          mov    $0x6b,%eax
  400fc8:       81 7c 24 08 2c 03 00    cmpl   $0x32c,0x8(%rsp)
  400fcf:       00
  400fd0:       74 31                   je     401003 <phase_3+0x13f>
  400fd2:       e8 7a 04 00 00          callq  401451 <explode_bomb>
  400fd7:       b8 6b 00 00 00          mov    $0x6b,%eax
  400fdc:       eb 25                   jmp    401003 <phase_3+0x13f>
  400fde:       b8 78 00 00 00          mov    $0x78,%eax
  400fe3:       81 7c 24 08 47 03 00    cmpl   $0x347,0x8(%rsp)
  400fea:       00
  400feb:       74 16                   je     401003 <phase_3+0x13f>
  400fed:       e8 5f 04 00 00          callq  401451 <explode_bomb>
  400ff2:       b8 78 00 00 00          mov    $0x78,%eax
  400ff7:       eb 0a                   jmp    401003 <phase_3+0x13f>
  400ff9:       e8 53 04 00 00          callq  401451 <explode_bomb>
  400ffe:       b8 7a 00 00 00          mov    $0x7a,%eax
  401003:       38 44 24 07             cmp    %al,0x7(%rsp)
  401007:       74 05                   je     40100e <phase_3+0x14a>
  401009:       e8 43 04 00 00          callq  401451 <explode_bomb>
  40100e:       48 83 c4 18             add    $0x18,%rsp
  401012:       c3                      retq

0000000000401013 <func4>:
  401013:       53                      push   %rbx
  401014:       89 d0                   mov    %edx,%eax
  401016:       29 f0                   sub    %esi,%eax
  401018:       89 c3                   mov    %eax,%ebx
  40101a:       c1 eb 1f                shr    $0x1f,%ebx
  40101d:       01 c3                   add    %eax,%ebx
  40101f:       d1 fb                   sar    %ebx
  401021:       01 f3                   add    %esi,%ebx
  401023:       39 fb                   cmp    %edi,%ebx
  401025:       7f 08                   jg     40102f <func4+0x1c>
  401027:       39 fb                   cmp    %edi,%ebx
  401029:       7c 10                   jl     40103b <func4+0x28>
  40102b:       89 d8                   mov    %ebx,%eax
  40102d:       5b                      pop    %rbx
  40102e:       c3                      retq
  40102f:       8d 53 ff                lea    -0x1(%rbx),%edx
  401032:       e8 dc ff ff ff          callq  401013 <func4>
  401037:       01 c3                   add    %eax,%ebx
  401039:       eb f0                   jmp    40102b <func4+0x18>
  40103b:       8d 73 01                lea    0x1(%rbx),%esi
  40103e:       e8 d0 ff ff ff          callq  401013 <func4>
  401043:       01 c3                   add    %eax,%ebx
  401045:       eb e4                   jmp    40102b <func4+0x18>

0000000000401047 <phase_4>:
  401047:       48 83 ec 18             sub    $0x18,%rsp
  40104b:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
  401050:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
  401055:       be 2f 25 40 00          mov    $0x40252f,%esi
  40105a:       b8 00 00 00 00          mov    $0x0,%eax
  40105f:       e8 5c fb ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  401064:       83 f8 02                cmp    $0x2,%eax
  401067:       75 07                   jne    401070 <phase_4+0x29>
  401069:       83 7c 24 0c 0e          cmpl   $0xe,0xc(%rsp)
  40106e:       76 05                   jbe    401075 <phase_4+0x2e>
  401070:       e8 dc 03 00 00          callq  401451 <explode_bomb>
  401075:       ba 0e 00 00 00          mov    $0xe,%edx # x // My cmt
  40107a:       be 00 00 00 00          mov    $0x0,%esi # y // My cmt
  40107f:       8b 7c 24 0c             mov    0xc(%rsp),%edi # z // My cmt
  401083:       e8 8b ff ff ff          callq  401013 <func4>
  401088:       83 f8 12                cmp    $0x12,%eax
  40108b:       75 07                   jne    401094 <phase_4+0x4d>
  40108d:       83 7c 24 08 12          cmpl   $0x12,0x8(%rsp)
  401092:       74 05                   je     401099 <phase_4+0x52>
  401094:       e8 b8 03 00 00          callq  401451 <explode_bomb>
  401099:       48 83 c4 18             add    $0x18,%rsp
  40109d:       c3                      retq

000000000040109e <phase_5>:
  40109e:       48 83 ec 18             sub    $0x18,%rsp
  4010a2:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
  4010a7:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
  4010ac:       be 2f 25 40 00          mov    $0x40252f,%esi
  4010b1:       b8 00 00 00 00          mov    $0x0,%eax
  4010b6:       e8 05 fb ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  4010bb:       83 f8 01                cmp    $0x1,%eax
  4010be:       7e 4a                   jle    40110a <phase_5+0x6c>
  4010c0:       8b 44 24 0c             mov    0xc(%rsp),%eax
  4010c4:       83 e0 0f                and    $0xf,%eax
  4010c7:       89 44 24 0c             mov    %eax,0xc(%rsp)
  4010cb:       83 f8 0f                cmp    $0xf,%eax
  4010ce:       74 30                   je     401100 <phase_5+0x62>
  4010d0:       b9 00 00 00 00          mov    $0x0,%ecx
  4010d5:       ba 00 00 00 00          mov    $0x0,%edx
  4010da:       83 c2 01                add    $0x1,%edx
  4010dd:       48 98                   cltq
  4010df:       8b 04 85 e0 23 40 00    mov    0x4023e0(,%rax,4),%eax
  4010e6:       01 c1                   add    %eax,%ecx
  4010e8:       83 f8 0f                cmp    $0xf,%eax
  4010eb:       75 ed                   jne    4010da <phase_5+0x3c>
  4010ed:       c7 44 24 0c 0f 00 00    movl   $0xf,0xc(%rsp)
  4010f4:       00
  4010f5:       83 fa 0f                cmp    $0xf,%edx
  4010f8:       75 06                   jne    401100 <phase_5+0x62>
  4010fa:       39 4c 24 08             cmp    %ecx,0x8(%rsp)
  4010fe:       74 05                   je     401105 <phase_5+0x67>
  401100:       e8 4c 03 00 00          callq  401451 <explode_bomb>
  401105:       48 83 c4 18             add    $0x18,%rsp
  401109:       c3                      retq
  40110a:       e8 42 03 00 00          callq  401451 <explode_bomb>
  40110f:       eb af                   jmp    4010c0 <phase_5+0x22>

0000000000401111 <phase_6>:
  401111:       41 56                   push   %r14
  401113:       41 55                   push   %r13
  401115:       41 54                   push   %r12
  401117:       55                      push   %rbp
  401118:       53                      push   %rbx
  401119:       48 83 ec 50             sub    $0x50,%rsp
  40111d:       48 8d 74 24 30          lea    0x30(%rsp),%rsi
  401122:       e8 4c 03 00 00          callq  401473 <read_six_numbers>
  401127:       4c 8d 64 24 30          lea    0x30(%rsp),%r12
  40112c:       4d 89 e5                mov    %r12,%r13
  40112f:       41 be 00 00 00 00       mov    $0x0,%r14d
  401135:       eb 26                   jmp    40115d <phase_6+0x4c>
  401137:       e8 15 03 00 00          callq  401451 <explode_bomb>
  40113c:       eb 2e                   jmp    40116c <phase_6+0x5b>
  40113e:       83 c3 01                add    $0x1,%ebx
  401141:       83 fb 05                cmp    $0x5,%ebx
  401144:       7f 13                   jg     401159 <phase_6+0x48>
  401146:       48 63 c3                movslq %ebx,%rax
  401149:       8b 44 84 30             mov    0x30(%rsp,%rax,4),%eax
  40114d:       39 45 00                cmp    %eax,0x0(%rbp)
  401150:       75 ec                   jne    40113e <phase_6+0x2d>
  401152:       e8 fa 02 00 00          callq  401451 <explode_bomb>
  401157:       eb e5                   jmp    40113e <phase_6+0x2d>
  401159:       49 83 c5 04             add    $0x4,%r13
  40115d:       4c 89 ed                mov    %r13,%rbp
  401160:       41 8b 45 00             mov    0x0(%r13),%eax
  401164:       83 e8 01                sub    $0x1,%eax
  401167:       83 f8 05                cmp    $0x5,%eax
  40116a:       77 cb                   ja     401137 <phase_6+0x26>
  40116c:       41 83 c6 01             add    $0x1,%r14d
  401170:       41 83 fe 06             cmp    $0x6,%r14d
  401174:       74 05                   je     40117b <phase_6+0x6a>
  401176:       44 89 f3                mov    %r14d,%ebx
  401179:       eb cb                   jmp    401146 <phase_6+0x35>
  40117b:       49 8d 4c 24 18          lea    0x18(%r12),%rcx
  401180:       ba 07 00 00 00          mov    $0x7,%edx
  401185:       89 d0                   mov    %edx,%eax
  401187:       41 2b 04 24             sub    (%r12),%eax
  40118b:       41 89 04 24             mov    %eax,(%r12)
  40118f:       49 83 c4 04             add    $0x4,%r12
  401193:       4c 39 e1                cmp    %r12,%rcx
  401196:       75 ed                   jne    401185 <phase_6+0x74>
  401198:       be 00 00 00 00          mov    $0x0,%esi
  40119d:       eb 19                   jmp    4011b8 <phase_6+0xa7>
  40119f:       48 8b 52 08             mov    0x8(%rdx),%rdx
  4011a3:       83 c0 01                add    $0x1,%eax
  4011a6:       39 c8                   cmp    %ecx,%eax
  4011a8:       75 f5                   jne    40119f <phase_6+0x8e>
  4011aa:       48 89 14 f4             mov    %rdx,(%rsp,%rsi,8)
  4011ae:       48 83 c6 01             add    $0x1,%rsi
  4011b2:       48 83 fe 06             cmp    $0x6,%rsi
  4011b6:       74 15                   je     4011cd <phase_6+0xbc>
  4011b8:       8b 4c b4 30             mov    0x30(%rsp,%rsi,4),%ecx
  4011bc:       b8 01 00 00 00          mov    $0x1,%eax
  4011c1:       ba f0 32 60 00          mov    $0x6032f0,%edx
  4011c6:       83 f9 01                cmp    $0x1,%ecx
  4011c9:       7f d4                   jg     40119f <phase_6+0x8e>
  4011cb:       eb dd                   jmp    4011aa <phase_6+0x99>
  4011cd:       48 8b 1c 24             mov    (%rsp),%rbx
  4011d1:       48 8b 44 24 08          mov    0x8(%rsp),%rax
  4011d6:       48 89 43 08             mov    %rax,0x8(%rbx)
  4011da:       48 8b 54 24 10          mov    0x10(%rsp),%rdx
  4011df:       48 89 50 08             mov    %rdx,0x8(%rax)
  4011e3:       48 8b 44 24 18          mov    0x18(%rsp),%rax
  4011e8:       48 89 42 08             mov    %rax,0x8(%rdx)
  4011ec:       48 8b 54 24 20          mov    0x20(%rsp),%rdx
  4011f1:       48 89 50 08             mov    %rdx,0x8(%rax)
  4011f5:       48 8b 44 24 28          mov    0x28(%rsp),%rax
  4011fa:       48 89 42 08             mov    %rax,0x8(%rdx)
  4011fe:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
  401205:       00
  401206:       bd 05 00 00 00          mov    $0x5,%ebp
  40120b:       eb 09                   jmp    401216 <phase_6+0x105>
  40120d:       48 8b 5b 08             mov    0x8(%rbx),%rbx
  401211:       83 ed 01                sub    $0x1,%ebp
  401214:       74 11                   je     401227 <phase_6+0x116>
  401216:       48 8b 43 08             mov    0x8(%rbx),%rax
  40121a:       8b 00                   mov    (%rax),%eax
  40121c:       39 03                   cmp    %eax,(%rbx)
  40121e:       7d ed                   jge    40120d <phase_6+0xfc>
  401220:       e8 2c 02 00 00          callq  401451 <explode_bomb>
  401225:       eb e6                   jmp    40120d <phase_6+0xfc>
  401227:       48 83 c4 50             add    $0x50,%rsp
  40122b:       5b                      pop    %rbx
  40122c:       5d                      pop    %rbp
  40122d:       41 5c                   pop    %r12
  40122f:       41 5d                   pop    %r13
  401231:       41 5e                   pop    %r14
  401233:       c3                      retq

0000000000401234 <fun7>:
  401234:       48 85 ff                test   %rdi,%rdi
  401237:       74 34                   je     40126d <fun7+0x39>
  401239:       48 83 ec 08             sub    $0x8,%rsp
  40123d:       8b 17                   mov    (%rdi),%edx
  40123f:       39 f2                   cmp    %esi,%edx
  401241:       7f 0e                   jg     401251 <fun7+0x1d>
  401243:       b8 00 00 00 00          mov    $0x0,%eax
  401248:       39 f2                   cmp    %esi,%edx
  40124a:       75 12                   jne    40125e <fun7+0x2a>
  40124c:       48 83 c4 08             add    $0x8,%rsp
  401250:       c3                      retq
  401251:       48 8b 7f 08             mov    0x8(%rdi),%rdi
  401255:       e8 da ff ff ff          callq  401234 <fun7>
  40125a:       01 c0                   add    %eax,%eax
  40125c:       eb ee                   jmp    40124c <fun7+0x18>
  40125e:       48 8b 7f 10             mov    0x10(%rdi),%rdi
  401262:       e8 cd ff ff ff          callq  401234 <fun7>
  401267:       8d 44 00 01             lea    0x1(%rax,%rax,1),%eax
  40126b:       eb df                   jmp    40124c <fun7+0x18>
  40126d:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401272:       c3                      retq

0000000000401273 <secret_phase>:
  401273:       53                      push   %rbx
  401274:       e8 39 02 00 00          callq  4014b2 <read_line>
  401279:       ba 0a 00 00 00          mov    $0xa,%edx
  40127e:       be 00 00 00 00          mov    $0x0,%esi
  401283:       48 89 c7                mov    %rax,%rdi
  401286:       e8 15 f9 ff ff          callq  400ba0 <strtol@plt>
  40128b:       48 89 c3                mov    %rax,%rbx
  40128e:       8d 40 ff                lea    -0x1(%rax),%eax
  401291:       3d e8 03 00 00          cmp    $0x3e8,%eax
  401296:       77 27                   ja     4012bf <secret_phase+0x4c>
  401298:       89 de                   mov    %ebx,%esi
  40129a:       bf 10 31 60 00          mov    $0x603110,%edi
  40129f:       e8 90 ff ff ff          callq  401234 <fun7>
  4012a4:       83 f8 01                cmp    $0x1,%eax
  4012a7:       74 05                   je     4012ae <secret_phase+0x3b>
  4012a9:       e8 a3 01 00 00          callq  401451 <explode_bomb>
  4012ae:       bf 68 23 40 00          mov    $0x402368,%edi
  4012b3:       e8 28 f8 ff ff          callq  400ae0 <puts@plt>
  4012b8:       e8 23 03 00 00          callq  4015e0 <phase_defused>
  4012bd:       5b                      pop    %rbx
  4012be:       c3                      retq
  4012bf:       e8 8d 01 00 00          callq  401451 <explode_bomb>
  4012c4:       eb d2                   jmp    401298 <secret_phase+0x25>

00000000004012c6 <sig_handler>:
  4012c6:       48 83 ec 08             sub    $0x8,%rsp
  4012ca:       bf 20 24 40 00          mov    $0x402420,%edi
  4012cf:       e8 0c f8 ff ff          callq  400ae0 <puts@plt>
  4012d4:       bf 03 00 00 00          mov    $0x3,%edi
  4012d9:       e8 42 f9 ff ff          callq  400c20 <sleep@plt>
  4012de:       bf e2 24 40 00          mov    $0x4024e2,%edi
  4012e3:       b8 00 00 00 00          mov    $0x0,%eax
  4012e8:       e8 13 f8 ff ff          callq  400b00 <printf@plt>
  4012ed:       48 8b 3d 6c 24 20 00    mov    0x20246c(%rip),%rdi        # 603760 <__TMC_END__>
  4012f4:       e8 b7 f8 ff ff          callq  400bb0 <fflush@plt>
  4012f9:       bf 01 00 00 00          mov    $0x1,%edi
  4012fe:       e8 1d f9 ff ff          callq  400c20 <sleep@plt>
  401303:       bf ea 24 40 00          mov    $0x4024ea,%edi
  401308:       e8 d3 f7 ff ff          callq  400ae0 <puts@plt>
  40130d:       bf 10 00 00 00          mov    $0x10,%edi
  401312:       e8 e9 f8 ff ff          callq  400c00 <exit@plt>

0000000000401317 <invalid_phase>:
  401317:       48 83 ec 08             sub    $0x8,%rsp
  40131b:       48 89 fe                mov    %rdi,%rsi
  40131e:       bf f2 24 40 00          mov    $0x4024f2,%edi
  401323:       b8 00 00 00 00          mov    $0x0,%eax
  401328:       e8 d3 f7 ff ff          callq  400b00 <printf@plt>
  40132d:       bf 08 00 00 00          mov    $0x8,%edi
  401332:       e8 c9 f8 ff ff          callq  400c00 <exit@plt>

0000000000401337 <string_length>:
  401337:       80 3f 00                cmpb   $0x0,(%rdi)
  40133a:       74 12                   je     40134e <string_length+0x17>
  40133c:       48 89 fa                mov    %rdi,%rdx
  40133f:       48 83 c2 01             add    $0x1,%rdx
  401343:       89 d0                   mov    %edx,%eax
  401345:       29 f8                   sub    %edi,%eax
  401347:       80 3a 00                cmpb   $0x0,(%rdx)
  40134a:       75 f3                   jne    40133f <string_length+0x8>
  40134c:       f3 c3                   repz retq
  40134e:       b8 00 00 00 00          mov    $0x0,%eax
  401353:       c3                      retq

0000000000401354 <strings_not_equal>:
  401354:       41 54                   push   %r12
  401356:       55                      push   %rbp
  401357:       53                      push   %rbx
  401358:       48 89 fb                mov    %rdi,%rbx
  40135b:       48 89 f5                mov    %rsi,%rbp
  40135e:       e8 d4 ff ff ff          callq  401337 <string_length>
  401363:       41 89 c4                mov    %eax,%r12d
  401366:       48 89 ef                mov    %rbp,%rdi
  401369:       e8 c9 ff ff ff          callq  401337 <string_length>
  40136e:       ba 01 00 00 00          mov    $0x1,%edx
  401373:       41 39 c4                cmp    %eax,%r12d
  401376:       74 07                   je     40137f <strings_not_equal+0x2b>
  401378:       89 d0                   mov    %edx,%eax
  40137a:       5b                      pop    %rbx
  40137b:       5d                      pop    %rbp
  40137c:       41 5c                   pop    %r12
  40137e:       c3                      retq
  40137f:       0f b6 03                movzbl (%rbx),%eax
  401382:       84 c0                   test   %al,%al
  401384:       74 27                   je     4013ad <strings_not_equal+0x59>
  401386:       3a 45 00                cmp    0x0(%rbp),%al
  401389:       75 29                   jne    4013b4 <strings_not_equal+0x60>
  40138b:       48 83 c3 01             add    $0x1,%rbx
  40138f:       48 83 c5 01             add    $0x1,%rbp
  401393:       0f b6 03                movzbl (%rbx),%eax
  401396:       84 c0                   test   %al,%al
  401398:       74 0c                   je     4013a6 <strings_not_equal+0x52>
  40139a:       38 45 00                cmp    %al,0x0(%rbp)
  40139d:       74 ec                   je     40138b <strings_not_equal+0x37>
  40139f:       ba 01 00 00 00          mov    $0x1,%edx
  4013a4:       eb d2                   jmp    401378 <strings_not_equal+0x24>
  4013a6:       ba 00 00 00 00          mov    $0x0,%edx
  4013ab:       eb cb                   jmp    401378 <strings_not_equal+0x24>
  4013ad:       ba 00 00 00 00          mov    $0x0,%edx
  4013b2:       eb c4                   jmp    401378 <strings_not_equal+0x24>
  4013b4:       ba 01 00 00 00          mov    $0x1,%edx
  4013b9:       eb bd                   jmp    401378 <strings_not_equal+0x24>

00000000004013bb <initialize_bomb>:
  4013bb:       48 83 ec 08             sub    $0x8,%rsp
  4013bf:       be c6 12 40 00          mov    $0x4012c6,%esi
  4013c4:       bf 02 00 00 00          mov    $0x2,%edi
  4013c9:       e8 92 f7 ff ff          callq  400b60 <signal@plt>
  4013ce:       48 83 c4 08             add    $0x8,%rsp
  4013d2:       c3                      retq

00000000004013d3 <initialize_bomb_solve>:
  4013d3:       f3 c3                   repz retq

00000000004013d5 <blank_line>:
  4013d5:       55                      push   %rbp
  4013d6:       53                      push   %rbx
  4013d7:       48 83 ec 08             sub    $0x8,%rsp
  4013db:       48 89 fd                mov    %rdi,%rbp
  4013de:       0f b6 5d 00             movzbl 0x0(%rbp),%ebx
  4013e2:       84 db                   test   %bl,%bl
  4013e4:       74 1e                   je     401404 <blank_line+0x2f>
  4013e6:       e8 45 f8 ff ff          callq  400c30 <__ctype_b_loc@plt>
  4013eb:       48 83 c5 01             add    $0x1,%rbp
  4013ef:       48 0f be db             movsbq %bl,%rbx
  4013f3:       48 8b 00                mov    (%rax),%rax
  4013f6:       f6 44 58 01 20          testb  $0x20,0x1(%rax,%rbx,2)
  4013fb:       75 e1                   jne    4013de <blank_line+0x9>
  4013fd:       b8 00 00 00 00          mov    $0x0,%eax
  401402:       eb 05                   jmp    401409 <blank_line+0x34>
  401404:       b8 01 00 00 00          mov    $0x1,%eax
  401409:       48 83 c4 08             add    $0x8,%rsp
  40140d:       5b                      pop    %rbx
  40140e:       5d                      pop    %rbp
  40140f:       c3                      retq

0000000000401410 <skip>:
  401410:       53                      push   %rbx
  401411:       48 63 05 64 23 20 00    movslq 0x202364(%rip),%rax        # 60377c <num_input_strings>
  401418:       48 8d 3c 80             lea    (%rax,%rax,4),%rdi
  40141c:       48 c1 e7 04             shl    $0x4,%rdi
  401420:       48 81 c7 a0 37 60 00    add    $0x6037a0,%rdi
  401427:       48 8b 15 52 23 20 00    mov    0x202352(%rip),%rdx        # 603780 <infile>
  40142e:       be 50 00 00 00          mov    $0x50,%esi
  401433:       e8 18 f7 ff ff          callq  400b50 <fgets@plt>
  401438:       48 89 c3                mov    %rax,%rbx
  40143b:       48 85 c0                test   %rax,%rax
  40143e:       74 0c                   je     40144c <skip+0x3c>
  401440:       48 89 c7                mov    %rax,%rdi
  401443:       e8 8d ff ff ff          callq  4013d5 <blank_line>
  401448:       85 c0                   test   %eax,%eax
  40144a:       75 c5                   jne    401411 <skip+0x1>
  40144c:       48 89 d8                mov    %rbx,%rax
  40144f:       5b                      pop    %rbx
  401450:       c3                      retq

0000000000401451 <explode_bomb>:
  401451:       48 83 ec 08             sub    $0x8,%rsp
  401455:       bf 03 25 40 00          mov    $0x402503,%edi
  40145a:       e8 81 f6 ff ff          callq  400ae0 <puts@plt>
  40145f:       bf 0c 25 40 00          mov    $0x40250c,%edi
  401464:       e8 77 f6 ff ff          callq  400ae0 <puts@plt>
  401469:       bf 08 00 00 00          mov    $0x8,%edi
  40146e:       e8 8d f7 ff ff          callq  400c00 <exit@plt>

0000000000401473 <read_six_numbers>:
  401473:       48 83 ec 08             sub    $0x8,%rsp
  401477:       48 89 f2                mov    %rsi,%rdx
  40147a:       48 8d 4e 04             lea    0x4(%rsi),%rcx
  40147e:       48 8d 46 14             lea    0x14(%rsi),%rax
  401482:       50                      push   %rax
  401483:       48 8d 46 10             lea    0x10(%rsi),%rax
  401487:       50                      push   %rax
  401488:       4c 8d 4e 0c             lea    0xc(%rsi),%r9
  40148c:       4c 8d 46 08             lea    0x8(%rsi),%r8
  401490:       be 23 25 40 00          mov    $0x402523,%esi
  401495:       b8 00 00 00 00          mov    $0x0,%eax
  40149a:       e8 21 f7 ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  40149f:       48 83 c4 10             add    $0x10,%rsp
  4014a3:       83 f8 05                cmp    $0x5,%eax
  4014a6:       7e 05                   jle    4014ad <read_six_numbers+0x3a>
  4014a8:       48 83 c4 08             add    $0x8,%rsp
  4014ac:       c3                      retq
  4014ad:       e8 9f ff ff ff          callq  401451 <explode_bomb>

00000000004014b2 <read_line>:
  4014b2:       48 83 ec 08             sub    $0x8,%rsp
  4014b6:       b8 00 00 00 00          mov    $0x0,%eax
  4014bb:       e8 50 ff ff ff          callq  401410 <skip>
  4014c0:       48 85 c0                test   %rax,%rax
  4014c3:       74 63                   je     401528 <read_line+0x76>
  4014c5:       8b 35 b1 22 20 00       mov    0x2022b1(%rip),%esi        # 60377c <num_input_strings>
  4014cb:       48 63 c6                movslq %esi,%rax
  4014ce:       48 8d 14 80             lea    (%rax,%rax,4),%rdx
  4014d2:       48 c1 e2 04             shl    $0x4,%rdx
  4014d6:       48 81 c2 a0 37 60 00    add    $0x6037a0,%rdx
  4014dd:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
  4014e4:       b8 00 00 00 00          mov    $0x0,%eax
  4014e9:       48 89 d7                mov    %rdx,%rdi
  4014ec:       f2 ae                   repnz scas %es:(%rdi),%al
  4014ee:       48 f7 d1                not    %rcx
  4014f1:       48 83 e9 01             sub    $0x1,%rcx
  4014f5:       83 f9 4e                cmp    $0x4e,%ecx
  4014f8:       0f 8f 9c 00 00 00       jg     40159a <read_line+0xe8>
  4014fe:       83 e9 01                sub    $0x1,%ecx
  401501:       48 63 c9                movslq %ecx,%rcx
  401504:       48 63 c6                movslq %esi,%rax
  401507:       48 8d 04 80             lea    (%rax,%rax,4),%rax
  40150b:       48 c1 e0 04             shl    $0x4,%rax
  40150f:       c6 84 01 a0 37 60 00    movb   $0x0,0x6037a0(%rcx,%rax,1)
  401516:       00
  401517:       8d 46 01                lea    0x1(%rsi),%eax
  40151a:       89 05 5c 22 20 00       mov    %eax,0x20225c(%rip)        # 60377c <num_input_strings>
  401520:       48 89 d0                mov    %rdx,%rax
  401523:       48 83 c4 08             add    $0x8,%rsp
  401527:       c3                      retq
  401528:       48 8b 05 39 22 20 00    mov    0x202239(%rip),%rax        # 603768 <stdin@@GLIBC_2.2.5>
  40152f:       48 39 05 4a 22 20 00    cmp    %rax,0x20224a(%rip)        # 603780 <infile>
  401536:       74 19                   je     401551 <read_line+0x9f>
  401538:       bf 53 25 40 00          mov    $0x402553,%edi
  40153d:       e8 6e f5 ff ff          callq  400ab0 <getenv@plt>
  401542:       48 85 c0                test   %rax,%rax
  401545:       74 1e                   je     401565 <read_line+0xb3>
  401547:       bf 00 00 00 00          mov    $0x0,%edi
  40154c:       e8 af f6 ff ff          callq  400c00 <exit@plt>
  401551:       bf 35 25 40 00          mov    $0x402535,%edi
  401556:       e8 85 f5 ff ff          callq  400ae0 <puts@plt>
  40155b:       bf 08 00 00 00          mov    $0x8,%edi
  401560:       e8 9b f6 ff ff          callq  400c00 <exit@plt>
  401565:       48 8b 05 fc 21 20 00    mov    0x2021fc(%rip),%rax        # 603768 <stdin@@GLIBC_2.2.5>
  40156c:       48 89 05 0d 22 20 00    mov    %rax,0x20220d(%rip)        # 603780 <infile>
  401573:       b8 00 00 00 00          mov    $0x0,%eax
  401578:       e8 93 fe ff ff          callq  401410 <skip>
  40157d:       48 85 c0                test   %rax,%rax
  401580:       0f 85 3f ff ff ff       jne    4014c5 <read_line+0x13>
  401586:       bf 35 25 40 00          mov    $0x402535,%edi
  40158b:       e8 50 f5 ff ff          callq  400ae0 <puts@plt>
  401590:       bf 00 00 00 00          mov    $0x0,%edi
  401595:       e8 66 f6 ff ff          callq  400c00 <exit@plt>
  40159a:       bf 5e 25 40 00          mov    $0x40255e,%edi
  40159f:       e8 3c f5 ff ff          callq  400ae0 <puts@plt>
  4015a4:       8b 05 d2 21 20 00       mov    0x2021d2(%rip),%eax        # 60377c <num_input_strings>
  4015aa:       8d 50 01                lea    0x1(%rax),%edx
  4015ad:       89 15 c9 21 20 00       mov    %edx,0x2021c9(%rip)        # 60377c <num_input_strings>
  4015b3:       48 98                   cltq
  4015b5:       48 6b c0 50             imul   $0x50,%rax,%rax
  4015b9:       48 be 2a 2a 2a 74 72    movabs $0x636e7572742a2a2a,%rsi
  4015c0:       75 6e 63
  4015c3:       48 bf 61 74 65 64 2a    movabs $0x2a2a2a64657461,%rdi
  4015ca:       2a 2a 00
  4015cd:       48 89 b0 a0 37 60 00    mov    %rsi,0x6037a0(%rax)
  4015d4:       48 89 b8 a8 37 60 00    mov    %rdi,0x6037a8(%rax)
  4015db:       e8 71 fe ff ff          callq  401451 <explode_bomb>

00000000004015e0 <phase_defused>:
  4015e0:       83 3d 95 21 20 00 06    cmpl   $0x6,0x202195(%rip)        # 60377c <num_input_strings>
  4015e7:       74 02                   je     4015eb <phase_defused+0xb>
  4015e9:       f3 c3                   repz retq
  4015eb:       48 83 ec 68             sub    $0x68,%rsp
  4015ef:       4c 8d 44 24 10          lea    0x10(%rsp),%r8
  4015f4:       48 8d 4c 24 08          lea    0x8(%rsp),%rcx
  4015f9:       48 8d 54 24 0c          lea    0xc(%rsp),%rdx
  4015fe:       be 79 25 40 00          mov    $0x402579,%esi
  401603:       bf 90 38 60 00          mov    $0x603890,%edi
  401608:       b8 00 00 00 00          mov    $0x0,%eax
  40160d:       e8 ae f5 ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  401612:       83 f8 03                cmp    $0x3,%eax
  401615:       74 0f                   je     401626 <phase_defused+0x46>
  401617:       bf b8 24 40 00          mov    $0x4024b8,%edi
  40161c:       e8 bf f4 ff ff          callq  400ae0 <puts@plt>
  401621:       48 83 c4 68             add    $0x68,%rsp
  401625:       c3                      retq
  401626:       be 82 25 40 00          mov    $0x402582,%esi
  40162b:       48 8d 7c 24 10          lea    0x10(%rsp),%rdi
  401630:       e8 1f fd ff ff          callq  401354 <strings_not_equal>
  401635:       85 c0                   test   %eax,%eax
  401637:       75 de                   jne    401617 <phase_defused+0x37>
  401639:       bf 58 24 40 00          mov    $0x402458,%edi
  40163e:       e8 9d f4 ff ff          callq  400ae0 <puts@plt>
  401643:       bf 80 24 40 00          mov    $0x402480,%edi
  401648:       e8 93 f4 ff ff          callq  400ae0 <puts@plt>
  40164d:       b8 00 00 00 00          mov    $0x0,%eax
  401652:       e8 1c fc ff ff          callq  401273 <secret_phase>
  401657:       eb be                   jmp    401617 <phase_defused+0x37>

0000000000401659 <sigalrm_handler>:
  401659:       48 83 ec 08             sub    $0x8,%rsp
  40165d:       ba 00 00 00 00          mov    $0x0,%edx
  401662:       be b0 25 40 00          mov    $0x4025b0,%esi
  401667:       48 8b 3d 02 21 20 00    mov    0x202102(%rip),%rdi        # 603770 <stderr@@GLIBC_2.2.5>
  40166e:       b8 00 00 00 00          mov    $0x0,%eax
  401673:       e8 08 f5 ff ff          callq  400b80 <fprintf@plt>
  401678:       bf 01 00 00 00          mov    $0x1,%edi
  40167d:       e8 7e f5 ff ff          callq  400c00 <exit@plt>

0000000000401682 <rio_readlineb>:
  401682:       41 56                   push   %r14
  401684:       41 55                   push   %r13
  401686:       41 54                   push   %r12
  401688:       55                      push   %rbp
  401689:       53                      push   %rbx
  40168a:       48 89 fb                mov    %rdi,%rbx
  40168d:       49 89 f4                mov    %rsi,%r12
  401690:       49 89 d6                mov    %rdx,%r14
  401693:       41 bd 01 00 00 00       mov    $0x1,%r13d
  401699:       48 8d 6f 10             lea    0x10(%rdi),%rbp
  40169d:       48 83 fa 01             cmp    $0x1,%rdx
  4016a1:       77 0c                   ja     4016af <rio_readlineb+0x2d>
  4016a3:       eb 60                   jmp    401705 <rio_readlineb+0x83>
  4016a5:       e8 16 f4 ff ff          callq  400ac0 <__errno_location@plt>
  4016aa:       83 38 04                cmpl   $0x4,(%rax)
  4016ad:       75 67                   jne    401716 <rio_readlineb+0x94>
  4016af:       8b 43 04                mov    0x4(%rbx),%eax
  4016b2:       85 c0                   test   %eax,%eax
  4016b4:       7f 20                   jg     4016d6 <rio_readlineb+0x54>
  4016b6:       ba 00 20 00 00          mov    $0x2000,%edx
  4016bb:       48 89 ee                mov    %rbp,%rsi
  4016be:       8b 3b                   mov    (%rbx),%edi
  4016c0:       e8 6b f4 ff ff          callq  400b30 <read@plt>
  4016c5:       89 43 04                mov    %eax,0x4(%rbx)
  4016c8:       85 c0                   test   %eax,%eax
  4016ca:       78 d9                   js     4016a5 <rio_readlineb+0x23>
  4016cc:       85 c0                   test   %eax,%eax
  4016ce:       74 4f                   je     40171f <rio_readlineb+0x9d>
  4016d0:       48 89 6b 08             mov    %rbp,0x8(%rbx)
  4016d4:       eb d9                   jmp    4016af <rio_readlineb+0x2d>
  4016d6:       48 8b 53 08             mov    0x8(%rbx),%rdx
  4016da:       0f b6 0a                movzbl (%rdx),%ecx
  4016dd:       48 83 c2 01             add    $0x1,%rdx
  4016e1:       48 89 53 08             mov    %rdx,0x8(%rbx)
  4016e5:       83 e8 01                sub    $0x1,%eax
  4016e8:       89 43 04                mov    %eax,0x4(%rbx)
  4016eb:       49 83 c4 01             add    $0x1,%r12
  4016ef:       41 88 4c 24 ff          mov    %cl,-0x1(%r12)
  4016f4:       80 f9 0a                cmp    $0xa,%cl
  4016f7:       74 0c                   je     401705 <rio_readlineb+0x83>
  4016f9:       41 83 c5 01             add    $0x1,%r13d
  4016fd:       49 63 c5                movslq %r13d,%rax
  401700:       4c 39 f0                cmp    %r14,%rax
  401703:       72 aa                   jb     4016af <rio_readlineb+0x2d>
  401705:       41 c6 04 24 00          movb   $0x0,(%r12)
  40170a:       49 63 c5                movslq %r13d,%rax
  40170d:       5b                      pop    %rbx
  40170e:       5d                      pop    %rbp
  40170f:       41 5c                   pop    %r12
  401711:       41 5d                   pop    %r13
  401713:       41 5e                   pop    %r14
  401715:       c3                      retq
  401716:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
  40171d:       eb 05                   jmp    401724 <rio_readlineb+0xa2>
  40171f:       b8 00 00 00 00          mov    $0x0,%eax
  401724:       85 c0                   test   %eax,%eax
  401726:       75 0d                   jne    401735 <rio_readlineb+0xb3>
  401728:       b8 00 00 00 00          mov    $0x0,%eax
  40172d:       41 83 fd 01             cmp    $0x1,%r13d
  401731:       75 d2                   jne    401705 <rio_readlineb+0x83>
  401733:       eb d8                   jmp    40170d <rio_readlineb+0x8b>
  401735:       48 c7 c0 ff ff ff ff    mov    $0xffffffffffffffff,%rax
  40173c:       eb cf                   jmp    40170d <rio_readlineb+0x8b>

000000000040173e <submitr>:
  40173e:       41 57                   push   %r15
  401740:       41 56                   push   %r14
  401742:       41 55                   push   %r13
  401744:       41 54                   push   %r12
  401746:       55                      push   %rbp
  401747:       53                      push   %rbx
  401748:       48 81 ec 68 a0 00 00    sub    $0xa068,%rsp
  40174f:       48 89 fd                mov    %rdi,%rbp
  401752:       41 89 f5                mov    %esi,%r13d
  401755:       48 89 14 24             mov    %rdx,(%rsp)
  401759:       48 89 4c 24 08          mov    %rcx,0x8(%rsp)
  40175e:       4c 89 44 24 18          mov    %r8,0x18(%rsp)
  401763:       4c 89 4c 24 10          mov    %r9,0x10(%rsp)
  401768:       48 8b 9c 24 a0 a0 00    mov    0xa0a0(%rsp),%rbx
  40176f:       00
  401770:       4c 8b bc 24 a8 a0 00    mov    0xa0a8(%rsp),%r15
  401777:       00
  401778:       c7 84 24 3c 20 00 00    movl   $0x0,0x203c(%rsp)
  40177f:       00 00 00 00
  401783:       ba 00 00 00 00          mov    $0x0,%edx
  401788:       be 01 00 00 00          mov    $0x1,%esi
  40178d:       bf 02 00 00 00          mov    $0x2,%edi
  401792:       e8 a9 f4 ff ff          callq  400c40 <socket@plt>
  401797:       85 c0                   test   %eax,%eax
  401799:       0f 88 22 01 00 00       js     4018c1 <submitr+0x183>
  40179f:       41 89 c4                mov    %eax,%r12d
  4017a2:       48 89 ef                mov    %rbp,%rdi
  4017a5:       e8 c6 f3 ff ff          callq  400b70 <gethostbyname@plt>
  4017aa:       48 85 c0                test   %rax,%rax
  4017ad:       0f 84 5e 01 00 00       je     401911 <submitr+0x1d3>
  4017b3:       48 c7 84 24 50 a0 00    movq   $0x0,0xa050(%rsp)
  4017ba:       00 00 00 00 00
  4017bf:       48 c7 84 24 58 a0 00    movq   $0x0,0xa058(%rsp)
  4017c6:       00 00 00 00 00
  4017cb:       66 c7 84 24 50 a0 00    movw   $0x2,0xa050(%rsp)
  4017d2:       00 02 00
  4017d5:       48 63 50 14             movslq 0x14(%rax),%rdx
  4017d9:       48 8d b4 24 54 a0 00    lea    0xa054(%rsp),%rsi
  4017e0:       00
  4017e1:       48 8b 40 18             mov    0x18(%rax),%rax
  4017e5:       48 8b 38                mov    (%rax),%rdi
  4017e8:       e8 e3 f3 ff ff          callq  400bd0 <bcopy@plt>
  4017ed:       66 41 c1 cd 08          ror    $0x8,%r13w
  4017f2:       66 44 89 ac 24 52 a0    mov    %r13w,0xa052(%rsp)
  4017f9:       00 00
  4017fb:       ba 10 00 00 00          mov    $0x10,%edx
  401800:       48 8d b4 24 50 a0 00    lea    0xa050(%rsp),%rsi
  401807:       00
  401808:       44 89 e7                mov    %r12d,%edi
  40180b:       e8 00 f4 ff ff          callq  400c10 <connect@plt>
  401810:       85 c0                   test   %eax,%eax
  401812:       0f 88 64 01 00 00       js     40197c <submitr+0x23e>
  401818:       49 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%r9
  40181f:       b8 00 00 00 00          mov    $0x0,%eax
  401824:       4c 89 c9                mov    %r9,%rcx
  401827:       48 89 df                mov    %rbx,%rdi
  40182a:       f2 ae                   repnz scas %es:(%rdi),%al
  40182c:       48 f7 d1                not    %rcx
  40182f:       48 89 ce                mov    %rcx,%rsi
  401832:       4c 89 c9                mov    %r9,%rcx
  401835:       48 8b 3c 24             mov    (%rsp),%rdi
  401839:       f2 ae                   repnz scas %es:(%rdi),%al
  40183b:       49 89 c8                mov    %rcx,%r8
  40183e:       4c 89 c9                mov    %r9,%rcx
  401841:       48 8b 7c 24 08          mov    0x8(%rsp),%rdi
  401846:       f2 ae                   repnz scas %es:(%rdi),%al
  401848:       48 f7 d1                not    %rcx
  40184b:       48 89 ca                mov    %rcx,%rdx
  40184e:       4c 89 c9                mov    %r9,%rcx
  401851:       48 8b 7c 24 10          mov    0x10(%rsp),%rdi
  401856:       f2 ae                   repnz scas %es:(%rdi),%al
  401858:       4c 29 c2                sub    %r8,%rdx
  40185b:       48 29 ca                sub    %rcx,%rdx
  40185e:       48 8d 44 76 fd          lea    -0x3(%rsi,%rsi,2),%rax
  401863:       48 8d 44 02 7b          lea    0x7b(%rdx,%rax,1),%rax
  401868:       48 3d 00 20 00 00       cmp    $0x2000,%rax
  40186e:       0f 87 65 01 00 00       ja     4019d9 <submitr+0x29b>
  401874:       48 8d 94 24 40 40 00    lea    0x4040(%rsp),%rdx
  40187b:       00
  40187c:       b9 00 04 00 00          mov    $0x400,%ecx
  401881:       b8 00 00 00 00          mov    $0x0,%eax
  401886:       48 89 d7                mov    %rdx,%rdi
  401889:       f3 48 ab                rep stos %rax,%es:(%rdi)
  40188c:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
  401893:       48 89 df                mov    %rbx,%rdi
  401896:       f2 ae                   repnz scas %es:(%rdi),%al
  401898:       48 f7 d1                not    %rcx
  40189b:       48 83 e9 01             sub    $0x1,%rcx
  40189f:       85 c9                   test   %ecx,%ecx
  4018a1:       0f 84 f9 05 00 00       je     401ea0 <submitr+0x762>
  4018a7:       8d 41 ff                lea    -0x1(%rcx),%eax
  4018aa:       4c 8d 74 03 01          lea    0x1(%rbx,%rax,1),%r14
  4018af:       48 89 d5                mov    %rdx,%rbp
  4018b2:       49 bd d9 ff 00 00 00    movabs $0x2000000000ffd9,%r13
  4018b9:       00 20 00
  4018bc:       e9 a5 01 00 00          jmpq   401a66 <submitr+0x328>
  4018c1:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  4018c8:       3a 20 43
  4018cb:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  4018d2:       20 75 6e
  4018d5:       49 89 07                mov    %rax,(%r15)
  4018d8:       49 89 57 08             mov    %rdx,0x8(%r15)
  4018dc:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  4018e3:       74 6f 20
  4018e6:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
  4018ed:       65 20 73
  4018f0:       49 89 47 10             mov    %rax,0x10(%r15)
  4018f4:       49 89 57 18             mov    %rdx,0x18(%r15)
  4018f8:       41 c7 47 20 6f 63 6b    movl   $0x656b636f,0x20(%r15)
  4018ff:       65
  401900:       66 41 c7 47 24 74 00    movw   $0x74,0x24(%r15)
  401907:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  40190c:       e9 16 04 00 00          jmpq   401d27 <submitr+0x5e9>
  401911:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
  401918:       3a 20 44
  40191b:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
  401922:       20 75 6e
  401925:       49 89 07                mov    %rax,(%r15)
  401928:       49 89 57 08             mov    %rdx,0x8(%r15)
  40192c:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  401933:       74 6f 20
  401936:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
  40193d:       76 65 20
  401940:       49 89 47 10             mov    %rax,0x10(%r15)
  401944:       49 89 57 18             mov    %rdx,0x18(%r15)
  401948:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
  40194f:       72 20 61
  401952:       49 89 47 20             mov    %rax,0x20(%r15)
  401956:       41 c7 47 28 64 64 72    movl   $0x65726464,0x28(%r15)
  40195d:       65
  40195e:       66 41 c7 47 2c 73 73    movw   $0x7373,0x2c(%r15)
  401965:       41 c6 47 2e 00          movb   $0x0,0x2e(%r15)
  40196a:       44 89 e7                mov    %r12d,%edi
  40196d:       e8 ae f1 ff ff          callq  400b20 <close@plt>
  401972:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401977:       e9 ab 03 00 00          jmpq   401d27 <submitr+0x5e9>
  40197c:       48 b8 45 72 72 6f 72    movabs $0x55203a726f727245,%rax
  401983:       3a 20 55
  401986:       48 ba 6e 61 62 6c 65    movabs $0x6f7420656c62616e,%rdx
  40198d:       20 74 6f
  401990:       49 89 07                mov    %rax,(%r15)
  401993:       49 89 57 08             mov    %rdx,0x8(%r15)
  401997:       48 b8 20 63 6f 6e 6e    movabs $0x7463656e6e6f6320,%rax
  40199e:       65 63 74
  4019a1:       48 ba 20 74 6f 20 74    movabs $0x20656874206f7420,%rdx
  4019a8:       68 65 20
  4019ab:       49 89 47 10             mov    %rax,0x10(%r15)
  4019af:       49 89 57 18             mov    %rdx,0x18(%r15)
  4019b3:       41 c7 47 20 73 65 72    movl   $0x76726573,0x20(%r15)
  4019ba:       76
  4019bb:       66 41 c7 47 24 65 72    movw   $0x7265,0x24(%r15)
  4019c2:       41 c6 47 26 00          movb   $0x0,0x26(%r15)
  4019c7:       44 89 e7                mov    %r12d,%edi
  4019ca:       e8 51 f1 ff ff          callq  400b20 <close@plt>
  4019cf:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  4019d4:       e9 4e 03 00 00          jmpq   401d27 <submitr+0x5e9>
  4019d9:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
  4019e0:       3a 20 52
  4019e3:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
  4019ea:       20 73 74
  4019ed:       49 89 07                mov    %rax,(%r15)
  4019f0:       49 89 57 08             mov    %rdx,0x8(%r15)
  4019f4:       48 b8 72 69 6e 67 20    movabs $0x6f6f7420676e6972,%rax
  4019fb:       74 6f 6f
  4019fe:       48 ba 20 6c 61 72 67    movabs $0x202e656772616c20,%rdx
  401a05:       65 2e 20
  401a08:       49 89 47 10             mov    %rax,0x10(%r15)
  401a0c:       49 89 57 18             mov    %rdx,0x18(%r15)
  401a10:       48 b8 49 6e 63 72 65    movabs $0x6573616572636e49,%rax
  401a17:       61 73 65
  401a1a:       48 ba 20 53 55 42 4d    movabs $0x5254494d42555320,%rdx
  401a21:       49 54 52
  401a24:       49 89 47 20             mov    %rax,0x20(%r15)
  401a28:       49 89 57 28             mov    %rdx,0x28(%r15)
  401a2c:       48 b8 5f 4d 41 58 42    movabs $0x46554258414d5f,%rax
  401a33:       55 46 00
  401a36:       49 89 47 30             mov    %rax,0x30(%r15)
  401a3a:       44 89 e7                mov    %r12d,%edi
  401a3d:       e8 de f0 ff ff          callq  400b20 <close@plt>
  401a42:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401a47:       e9 db 02 00 00          jmpq   401d27 <submitr+0x5e9>
  401a4c:       49 0f a3 d5             bt     %rdx,%r13
  401a50:       73 1f                   jae    401a71 <submitr+0x333>
  401a52:       88 45 00                mov    %al,0x0(%rbp)
  401a55:       48 8d 6d 01             lea    0x1(%rbp),%rbp
  401a59:       48 83 c3 01             add    $0x1,%rbx
  401a5d:       49 39 de                cmp    %rbx,%r14
  401a60:       0f 84 3a 04 00 00       je     401ea0 <submitr+0x762>
  401a66:       0f b6 03                movzbl (%rbx),%eax
  401a69:       8d 50 d6                lea    -0x2a(%rax),%edx
  401a6c:       80 fa 35                cmp    $0x35,%dl
  401a6f:       76 db                   jbe    401a4c <submitr+0x30e>
  401a71:       89 c2                   mov    %eax,%edx
  401a73:       83 e2 df                and    $0xffffffdf,%edx
  401a76:       83 ea 41                sub    $0x41,%edx
  401a79:       80 fa 19                cmp    $0x19,%dl
  401a7c:       76 d4                   jbe    401a52 <submitr+0x314>
  401a7e:       3c 20                   cmp    $0x20,%al
  401a80:       74 45                   je     401ac7 <submitr+0x389>
  401a82:       8d 50 e0                lea    -0x20(%rax),%edx
  401a85:       80 fa 5f                cmp    $0x5f,%dl
  401a88:       76 08                   jbe    401a92 <submitr+0x354>
  401a8a:       3c 09                   cmp    $0x9,%al
  401a8c:       0f 85 81 03 00 00       jne    401e13 <submitr+0x6d5>
  401a92:       0f b6 d0                movzbl %al,%edx
  401a95:       be 88 26 40 00          mov    $0x402688,%esi
  401a9a:       48 8d 7c 24 28          lea    0x28(%rsp),%rdi
  401a9f:       b8 00 00 00 00          mov    $0x0,%eax
  401aa4:       e8 47 f1 ff ff          callq  400bf0 <sprintf@plt>
  401aa9:       0f b6 44 24 28          movzbl 0x28(%rsp),%eax
  401aae:       88 45 00                mov    %al,0x0(%rbp)
  401ab1:       0f b6 44 24 29          movzbl 0x29(%rsp),%eax
  401ab6:       88 45 01                mov    %al,0x1(%rbp)
  401ab9:       0f b6 44 24 2a          movzbl 0x2a(%rsp),%eax
  401abe:       88 45 02                mov    %al,0x2(%rbp)
  401ac1:       48 8d 6d 03             lea    0x3(%rbp),%rbp
  401ac5:       eb 92                   jmp    401a59 <submitr+0x31b>
  401ac7:       c6 45 00 2b             movb   $0x2b,0x0(%rbp)
  401acb:       48 8d 6d 01             lea    0x1(%rbp),%rbp
  401acf:       eb 88                   jmp    401a59 <submitr+0x31b>
  401ad1:       49 01 c5                add    %rax,%r13
  401ad4:       48 29 c5                sub    %rax,%rbp
  401ad7:       74 26                   je     401aff <submitr+0x3c1>
  401ad9:       48 89 ea                mov    %rbp,%rdx
  401adc:       4c 89 ee                mov    %r13,%rsi
  401adf:       44 89 e7                mov    %r12d,%edi
  401ae2:       e8 09 f0 ff ff          callq  400af0 <write@plt>
  401ae7:       48 85 c0                test   %rax,%rax
  401aea:       7f e5                   jg     401ad1 <submitr+0x393>
  401aec:       e8 cf ef ff ff          callq  400ac0 <__errno_location@plt>
  401af1:       83 38 04                cmpl   $0x4,(%rax)
  401af4:       0f 85 bc 00 00 00       jne    401bb6 <submitr+0x478>
  401afa:       4c 89 f0                mov    %r14,%rax
  401afd:       eb d2                   jmp    401ad1 <submitr+0x393>
  401aff:       48 85 db                test   %rbx,%rbx
  401b02:       0f 88 ae 00 00 00       js     401bb6 <submitr+0x478>
  401b08:       44 89 a4 24 40 80 00    mov    %r12d,0x8040(%rsp)
  401b0f:       00
  401b10:       c7 84 24 44 80 00 00    movl   $0x0,0x8044(%rsp)
  401b17:       00 00 00 00
  401b1b:       48 8d 84 24 50 80 00    lea    0x8050(%rsp),%rax
  401b22:       00
  401b23:       48 89 84 24 48 80 00    mov    %rax,0x8048(%rsp)
  401b2a:       00
  401b2b:       ba 00 20 00 00          mov    $0x2000,%edx
  401b30:       48 8d b4 24 40 60 00    lea    0x6040(%rsp),%rsi
  401b37:       00
  401b38:       48 8d bc 24 40 80 00    lea    0x8040(%rsp),%rdi
  401b3f:       00
  401b40:       e8 3d fb ff ff          callq  401682 <rio_readlineb>
  401b45:       48 85 c0                test   %rax,%rax
  401b48:       0f 8e c7 00 00 00       jle    401c15 <submitr+0x4d7>
  401b4e:       4c 8d 44 24 30          lea    0x30(%rsp),%r8
  401b53:       48 8d 8c 24 3c 20 00    lea    0x203c(%rsp),%rcx
  401b5a:       00
  401b5b:       48 8d 94 24 40 20 00    lea    0x2040(%rsp),%rdx
  401b62:       00
  401b63:       be 8f 26 40 00          mov    $0x40268f,%esi
  401b68:       48 8d bc 24 40 60 00    lea    0x6040(%rsp),%rdi
  401b6f:       00
  401b70:       b8 00 00 00 00          mov    $0x0,%eax
  401b75:       e8 46 f0 ff ff          callq  400bc0 <__isoc99_sscanf@plt>
  401b7a:       8b 94 24 3c 20 00 00    mov    0x203c(%rsp),%edx
  401b81:       81 fa c8 00 00 00       cmp    $0xc8,%edx
  401b87:       0f 84 1f 01 00 00       je     401cac <submitr+0x56e>
  401b8d:       48 8d 4c 24 30          lea    0x30(%rsp),%rcx
  401b92:       be d8 25 40 00          mov    $0x4025d8,%esi
  401b97:       4c 89 ff                mov    %r15,%rdi
  401b9a:       b8 00 00 00 00          mov    $0x0,%eax
  401b9f:       e8 4c f0 ff ff          callq  400bf0 <sprintf@plt>
  401ba4:       44 89 e7                mov    %r12d,%edi
  401ba7:       e8 74 ef ff ff          callq  400b20 <close@plt>
  401bac:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401bb1:       e9 71 01 00 00          jmpq   401d27 <submitr+0x5e9>
  401bb6:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  401bbd:       3a 20 43
  401bc0:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  401bc7:       20 75 6e
  401bca:       49 89 07                mov    %rax,(%r15)
  401bcd:       49 89 57 08             mov    %rdx,0x8(%r15)
  401bd1:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  401bd8:       74 6f 20
  401bdb:       48 ba 77 72 69 74 65    movabs $0x6f74206574697277,%rdx
  401be2:       20 74 6f
  401be5:       49 89 47 10             mov    %rax,0x10(%r15)
  401be9:       49 89 57 18             mov    %rdx,0x18(%r15)
  401bed:       48 b8 20 74 68 65 20    movabs $0x7265732065687420,%rax
  401bf4:       73 65 72
  401bf7:       49 89 47 20             mov    %rax,0x20(%r15)
  401bfb:       41 c7 47 28 76 65 72    movl   $0x726576,0x28(%r15)
  401c02:       00
  401c03:       44 89 e7                mov    %r12d,%edi
  401c06:       e8 15 ef ff ff          callq  400b20 <close@plt>
  401c0b:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401c10:       e9 12 01 00 00          jmpq   401d27 <submitr+0x5e9>
  401c15:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  401c1c:       3a 20 43
  401c1f:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  401c26:       20 75 6e
  401c29:       49 89 07                mov    %rax,(%r15)
  401c2c:       49 89 57 08             mov    %rdx,0x8(%r15)
  401c30:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  401c37:       74 6f 20
  401c3a:       48 ba 72 65 61 64 20    movabs $0x7269662064616572,%rdx
  401c41:       66 69 72
  401c44:       49 89 47 10             mov    %rax,0x10(%r15)
  401c48:       49 89 57 18             mov    %rdx,0x18(%r15)
  401c4c:       48 b8 73 74 20 68 65    movabs $0x6564616568207473,%rax
  401c53:       61 64 65
  401c56:       48 ba 72 20 66 72 6f    movabs $0x73206d6f72662072,%rdx
  401c5d:       6d 20 73
  401c60:       49 89 47 20             mov    %rax,0x20(%r15)
  401c64:       49 89 57 28             mov    %rdx,0x28(%r15)
  401c68:       41 c7 47 30 65 72 76    movl   $0x65767265,0x30(%r15)
  401c6f:       65
  401c70:       66 41 c7 47 34 72 00    movw   $0x72,0x34(%r15)
  401c77:       44 89 e7                mov    %r12d,%edi
  401c7a:       e8 a1 ee ff ff          callq  400b20 <close@plt>
  401c7f:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401c84:       e9 9e 00 00 00          jmpq   401d27 <submitr+0x5e9>
  401c89:       ba 00 20 00 00          mov    $0x2000,%edx
  401c8e:       48 8d b4 24 40 60 00    lea    0x6040(%rsp),%rsi
  401c95:       00
  401c96:       48 8d bc 24 40 80 00    lea    0x8040(%rsp),%rdi
  401c9d:       00
  401c9e:       e8 df f9 ff ff          callq  401682 <rio_readlineb>
  401ca3:       48 85 c0                test   %rax,%rax
  401ca6:       0f 8e 8d 00 00 00       jle    401d39 <submitr+0x5fb>
  401cac:       80 bc 24 40 60 00 00    cmpb   $0xd,0x6040(%rsp)
  401cb3:       0d
  401cb4:       75 d3                   jne    401c89 <submitr+0x54b>
  401cb6:       80 bc 24 41 60 00 00    cmpb   $0xa,0x6041(%rsp)
  401cbd:       0a
  401cbe:       75 c9                   jne    401c89 <submitr+0x54b>
  401cc0:       80 bc 24 42 60 00 00    cmpb   $0x0,0x6042(%rsp)
  401cc7:       00
  401cc8:       75 bf                   jne    401c89 <submitr+0x54b>
  401cca:       ba 00 20 00 00          mov    $0x2000,%edx
  401ccf:       48 8d b4 24 40 60 00    lea    0x6040(%rsp),%rsi
  401cd6:       00
  401cd7:       48 8d bc 24 40 80 00    lea    0x8040(%rsp),%rdi
  401cde:       00
  401cdf:       e8 9e f9 ff ff          callq  401682 <rio_readlineb>
  401ce4:       48 85 c0                test   %rax,%rax
  401ce7:       0f 8e b3 00 00 00       jle    401da0 <submitr+0x662>
  401ced:       48 8d b4 24 40 60 00    lea    0x6040(%rsp),%rsi
  401cf4:       00
  401cf5:       4c 89 ff                mov    %r15,%rdi
  401cf8:       e8 d3 ed ff ff          callq  400ad0 <strcpy@plt>
  401cfd:       44 89 e7                mov    %r12d,%edi
  401d00:       e8 1b ee ff ff          callq  400b20 <close@plt>
  401d05:       41 0f b6 07             movzbl (%r15),%eax
  401d09:       83 e8 4f                sub    $0x4f,%eax
  401d0c:       75 0f                   jne    401d1d <submitr+0x5df>
  401d0e:       41 0f b6 47 01          movzbl 0x1(%r15),%eax
  401d13:       83 e8 4b                sub    $0x4b,%eax
  401d16:       75 05                   jne    401d1d <submitr+0x5df>
  401d18:       41 0f b6 47 02          movzbl 0x2(%r15),%eax
  401d1d:       85 c0                   test   %eax,%eax
  401d1f:       0f 95 c0                setne  %al
  401d22:       0f b6 c0                movzbl %al,%eax
  401d25:       f7 d8                   neg    %eax
  401d27:       48 81 c4 68 a0 00 00    add    $0xa068,%rsp
  401d2e:       5b                      pop    %rbx
  401d2f:       5d                      pop    %rbp
  401d30:       41 5c                   pop    %r12
  401d32:       41 5d                   pop    %r13
  401d34:       41 5e                   pop    %r14
  401d36:       41 5f                   pop    %r15
  401d38:       c3                      retq
  401d39:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  401d40:       3a 20 43
  401d43:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  401d4a:       20 75 6e
  401d4d:       49 89 07                mov    %rax,(%r15)
  401d50:       49 89 57 08             mov    %rdx,0x8(%r15)
  401d54:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  401d5b:       74 6f 20
  401d5e:       48 ba 72 65 61 64 20    movabs $0x6165682064616572,%rdx
  401d65:       68 65 61
  401d68:       49 89 47 10             mov    %rax,0x10(%r15)
  401d6c:       49 89 57 18             mov    %rdx,0x18(%r15)
  401d70:       48 b8 64 65 72 73 20    movabs $0x6f72662073726564,%rax
  401d77:       66 72 6f
  401d7a:       48 ba 6d 20 73 65 72    movabs $0x726576726573206d,%rdx
  401d81:       76 65 72
  401d84:       49 89 47 20             mov    %rax,0x20(%r15)
  401d88:       49 89 57 28             mov    %rdx,0x28(%r15)
  401d8c:       41 c6 47 30 00          movb   $0x0,0x30(%r15)
  401d91:       44 89 e7                mov    %r12d,%edi
  401d94:       e8 87 ed ff ff          callq  400b20 <close@plt>
  401d99:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401d9e:       eb 87                   jmp    401d27 <submitr+0x5e9>
  401da0:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  401da7:       3a 20 43
  401daa:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  401db1:       20 75 6e
  401db4:       49 89 07                mov    %rax,(%r15)
  401db7:       49 89 57 08             mov    %rdx,0x8(%r15)
  401dbb:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  401dc2:       74 6f 20
  401dc5:       48 ba 72 65 61 64 20    movabs $0x6174732064616572,%rdx
  401dcc:       73 74 61
  401dcf:       49 89 47 10             mov    %rax,0x10(%r15)
  401dd3:       49 89 57 18             mov    %rdx,0x18(%r15)
  401dd7:       48 b8 74 75 73 20 6d    movabs $0x7373656d20737574,%rax
  401dde:       65 73 73
  401de1:       48 ba 61 67 65 20 66    movabs $0x6d6f726620656761,%rdx
  401de8:       72 6f 6d
  401deb:       49 89 47 20             mov    %rax,0x20(%r15)
  401def:       49 89 57 28             mov    %rdx,0x28(%r15)
  401df3:       48 b8 20 73 65 72 76    movabs $0x72657672657320,%rax
  401dfa:       65 72 00
  401dfd:       49 89 47 30             mov    %rax,0x30(%r15)
  401e01:       44 89 e7                mov    %r12d,%edi
  401e04:       e8 17 ed ff ff          callq  400b20 <close@plt>
  401e09:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401e0e:       e9 14 ff ff ff          jmpq   401d27 <submitr+0x5e9>
  401e13:       48 b8 45 72 72 6f 72    movabs $0x52203a726f727245,%rax
  401e1a:       3a 20 52
  401e1d:       48 ba 65 73 75 6c 74    movabs $0x747320746c757365,%rdx
  401e24:       20 73 74
  401e27:       49 89 07                mov    %rax,(%r15)
  401e2a:       49 89 57 08             mov    %rdx,0x8(%r15)
  401e2e:       48 b8 72 69 6e 67 20    movabs $0x6e6f6320676e6972,%rax
  401e35:       63 6f 6e
  401e38:       48 ba 74 61 69 6e 73    movabs $0x6e6120736e696174,%rdx
  401e3f:       20 61 6e
  401e42:       49 89 47 10             mov    %rax,0x10(%r15)
  401e46:       49 89 57 18             mov    %rdx,0x18(%r15)
  401e4a:       48 b8 20 69 6c 6c 65    movabs $0x6c6167656c6c6920,%rax
  401e51:       67 61 6c
  401e54:       48 ba 20 6f 72 20 75    movabs $0x72706e7520726f20,%rdx
  401e5b:       6e 70 72
  401e5e:       49 89 47 20             mov    %rax,0x20(%r15)
  401e62:       49 89 57 28             mov    %rdx,0x28(%r15)
  401e66:       48 b8 69 6e 74 61 62    movabs $0x20656c6261746e69,%rax
  401e6d:       6c 65 20
  401e70:       48 ba 63 68 61 72 61    movabs $0x6574636172616863,%rdx
  401e77:       63 74 65
  401e7a:       49 89 47 30             mov    %rax,0x30(%r15)
  401e7e:       49 89 57 38             mov    %rdx,0x38(%r15)
  401e82:       66 41 c7 47 40 72 2e    movw   $0x2e72,0x40(%r15)
  401e89:       41 c6 47 42 00          movb   $0x0,0x42(%r15)
  401e8e:       44 89 e7                mov    %r12d,%edi
  401e91:       e8 8a ec ff ff          callq  400b20 <close@plt>
  401e96:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  401e9b:       e9 87 fe ff ff          jmpq   401d27 <submitr+0x5e9>
  401ea0:       48 8d 9c 24 40 60 00    lea    0x6040(%rsp),%rbx
  401ea7:       00
  401ea8:       48 83 ec 08             sub    $0x8,%rsp
  401eac:       48 8d 84 24 48 40 00    lea    0x4048(%rsp),%rax
  401eb3:       00
  401eb4:       50                      push   %rax
  401eb5:       4c 8b 4c 24 20          mov    0x20(%rsp),%r9
  401eba:       4c 8b 44 24 28          mov    0x28(%rsp),%r8
  401ebf:       48 8b 4c 24 18          mov    0x18(%rsp),%rcx
  401ec4:       48 8b 54 24 10          mov    0x10(%rsp),%rdx
  401ec9:       be 08 26 40 00          mov    $0x402608,%esi
  401ece:       48 89 df                mov    %rbx,%rdi
  401ed1:       b8 00 00 00 00          mov    $0x0,%eax
  401ed6:       e8 15 ed ff ff          callq  400bf0 <sprintf@plt>
  401edb:       48 c7 c1 ff ff ff ff    mov    $0xffffffffffffffff,%rcx
  401ee2:       b8 00 00 00 00          mov    $0x0,%eax
  401ee7:       48 89 df                mov    %rbx,%rdi
  401eea:       f2 ae                   repnz scas %es:(%rdi),%al
  401eec:       48 f7 d1                not    %rcx
  401eef:       48 89 cb                mov    %rcx,%rbx
  401ef2:       48 83 eb 01             sub    $0x1,%rbx
  401ef6:       48 83 c4 10             add    $0x10,%rsp
  401efa:       48 89 dd                mov    %rbx,%rbp
  401efd:       4c 8d ac 24 40 60 00    lea    0x6040(%rsp),%r13
  401f04:       00
  401f05:       41 be 00 00 00 00       mov    $0x0,%r14d
  401f0b:       48 85 db                test   %rbx,%rbx
  401f0e:       0f 85 c5 fb ff ff       jne    401ad9 <submitr+0x39b>
  401f14:       e9 ef fb ff ff          jmpq   401b08 <submitr+0x3ca>

0000000000401f19 <init_timeout>:
  401f19:       85 ff                   test   %edi,%edi
  401f1b:       74 23                   je     401f40 <init_timeout+0x27>
  401f1d:       53                      push   %rbx
  401f1e:       89 fb                   mov    %edi,%ebx
  401f20:       be 59 16 40 00          mov    $0x401659,%esi
  401f25:       bf 0e 00 00 00          mov    $0xe,%edi
  401f2a:       e8 31 ec ff ff          callq  400b60 <signal@plt>
  401f2f:       85 db                   test   %ebx,%ebx
  401f31:       bf 00 00 00 00          mov    $0x0,%edi
  401f36:       0f 49 fb                cmovns %ebx,%edi
  401f39:       e8 d2 eb ff ff          callq  400b10 <alarm@plt>
  401f3e:       5b                      pop    %rbx
  401f3f:       c3                      retq
  401f40:       f3 c3                   repz retq

0000000000401f42 <init_driver>:
  401f42:       55                      push   %rbp
  401f43:       53                      push   %rbx
  401f44:       48 83 ec 18             sub    $0x18,%rsp
  401f48:       48 89 fd                mov    %rdi,%rbp
  401f4b:       be 01 00 00 00          mov    $0x1,%esi
  401f50:       bf 0d 00 00 00          mov    $0xd,%edi
  401f55:       e8 06 ec ff ff          callq  400b60 <signal@plt>
  401f5a:       be 01 00 00 00          mov    $0x1,%esi
  401f5f:       bf 1d 00 00 00          mov    $0x1d,%edi
  401f64:       e8 f7 eb ff ff          callq  400b60 <signal@plt>
  401f69:       be 01 00 00 00          mov    $0x1,%esi
  401f6e:       bf 1d 00 00 00          mov    $0x1d,%edi
  401f73:       e8 e8 eb ff ff          callq  400b60 <signal@plt>
  401f78:       ba 00 00 00 00          mov    $0x0,%edx
  401f7d:       be 01 00 00 00          mov    $0x1,%esi
  401f82:       bf 02 00 00 00          mov    $0x2,%edi
  401f87:       e8 b4 ec ff ff          callq  400c40 <socket@plt>
  401f8c:       85 c0                   test   %eax,%eax
  401f8e:       78 7c                   js     40200c <init_driver+0xca>
  401f90:       89 c3                   mov    %eax,%ebx
  401f92:       bf 89 25 40 00          mov    $0x402589,%edi
  401f97:       e8 d4 eb ff ff          callq  400b70 <gethostbyname@plt>
  401f9c:       48 85 c0                test   %rax,%rax
  401f9f:       0f 84 b3 00 00 00       je     402058 <init_driver+0x116>
  401fa5:       48 c7 04 24 00 00 00    movq   $0x0,(%rsp)
  401fac:       00
  401fad:       48 c7 44 24 08 00 00    movq   $0x0,0x8(%rsp)
  401fb4:       00 00
  401fb6:       66 c7 04 24 02 00       movw   $0x2,(%rsp)
  401fbc:       48 63 50 14             movslq 0x14(%rax),%rdx
  401fc0:       48 8d 74 24 04          lea    0x4(%rsp),%rsi
  401fc5:       48 8b 40 18             mov    0x18(%rax),%rax
  401fc9:       48 8b 38                mov    (%rax),%rdi
  401fcc:       e8 ff eb ff ff          callq  400bd0 <bcopy@plt>
  401fd1:       66 c7 44 24 02 1f 91    movw   $0x911f,0x2(%rsp)
  401fd8:       ba 10 00 00 00          mov    $0x10,%edx
  401fdd:       48 89 e6                mov    %rsp,%rsi
  401fe0:       89 df                   mov    %ebx,%edi
  401fe2:       e8 29 ec ff ff          callq  400c10 <connect@plt>
  401fe7:       85 c0                   test   %eax,%eax
  401fe9:       0f 88 d1 00 00 00       js     4020c0 <init_driver+0x17e>
  401fef:       89 df                   mov    %ebx,%edi
  401ff1:       e8 2a eb ff ff          callq  400b20 <close@plt>
  401ff6:       66 c7 45 00 4f 4b       movw   $0x4b4f,0x0(%rbp)
  401ffc:       c6 45 02 00             movb   $0x0,0x2(%rbp)
  402000:       b8 00 00 00 00          mov    $0x0,%eax
  402005:       48 83 c4 18             add    $0x18,%rsp
  402009:       5b                      pop    %rbx
  40200a:       5d                      pop    %rbp
  40200b:       c3                      retq
  40200c:       48 b8 45 72 72 6f 72    movabs $0x43203a726f727245,%rax
  402013:       3a 20 43
  402016:       48 ba 6c 69 65 6e 74    movabs $0x6e7520746e65696c,%rdx
  40201d:       20 75 6e
  402020:       48 89 45 00             mov    %rax,0x0(%rbp)
  402024:       48 89 55 08             mov    %rdx,0x8(%rbp)
  402028:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  40202f:       74 6f 20
  402032:       48 ba 63 72 65 61 74    movabs $0x7320657461657263,%rdx
  402039:       65 20 73
  40203c:       48 89 45 10             mov    %rax,0x10(%rbp)
  402040:       48 89 55 18             mov    %rdx,0x18(%rbp)
  402044:       c7 45 20 6f 63 6b 65    movl   $0x656b636f,0x20(%rbp)
  40204b:       66 c7 45 24 74 00       movw   $0x74,0x24(%rbp)
  402051:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  402056:       eb ad                   jmp    402005 <init_driver+0xc3>
  402058:       48 b8 45 72 72 6f 72    movabs $0x44203a726f727245,%rax
  40205f:       3a 20 44
  402062:       48 ba 4e 53 20 69 73    movabs $0x6e7520736920534e,%rdx
  402069:       20 75 6e
  40206c:       48 89 45 00             mov    %rax,0x0(%rbp)
  402070:       48 89 55 08             mov    %rdx,0x8(%rbp)
  402074:       48 b8 61 62 6c 65 20    movabs $0x206f7420656c6261,%rax
  40207b:       74 6f 20
  40207e:       48 ba 72 65 73 6f 6c    movabs $0x2065766c6f736572,%rdx
  402085:       76 65 20
  402088:       48 89 45 10             mov    %rax,0x10(%rbp)
  40208c:       48 89 55 18             mov    %rdx,0x18(%rbp)
  402090:       48 b8 73 65 72 76 65    movabs $0x6120726576726573,%rax
  402097:       72 20 61
  40209a:       48 89 45 20             mov    %rax,0x20(%rbp)
  40209e:       c7 45 28 64 64 72 65    movl   $0x65726464,0x28(%rbp)
  4020a5:       66 c7 45 2c 73 73       movw   $0x7373,0x2c(%rbp)
  4020ab:       c6 45 2e 00             movb   $0x0,0x2e(%rbp)
  4020af:       89 df                   mov    %ebx,%edi
  4020b1:       e8 6a ea ff ff          callq  400b20 <close@plt>
  4020b6:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  4020bb:       e9 45 ff ff ff          jmpq   402005 <init_driver+0xc3>
  4020c0:       ba 89 25 40 00          mov    $0x402589,%edx
  4020c5:       be 60 26 40 00          mov    $0x402660,%esi
  4020ca:       48 89 ef                mov    %rbp,%rdi
  4020cd:       b8 00 00 00 00          mov    $0x0,%eax
  4020d2:       e8 19 eb ff ff          callq  400bf0 <sprintf@plt>
  4020d7:       89 df                   mov    %ebx,%edi
  4020d9:       e8 42 ea ff ff          callq  400b20 <close@plt>
  4020de:       b8 ff ff ff ff          mov    $0xffffffff,%eax
  4020e3:       e9 1d ff ff ff          jmpq   402005 <init_driver+0xc3>

00000000004020e8 <driver_post>:
  4020e8:       53                      push   %rbx
  4020e9:       4c 89 c3                mov    %r8,%rbx
  4020ec:       85 c9                   test   %ecx,%ecx
  4020ee:       75 17                   jne    402107 <driver_post+0x1f>
  4020f0:       48 85 ff                test   %rdi,%rdi
  4020f3:       74 05                   je     4020fa <driver_post+0x12>
  4020f5:       80 3f 00                cmpb   $0x0,(%rdi)
  4020f8:       75 2f                   jne    402129 <driver_post+0x41>
  4020fa:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
  4020ff:       c6 43 02 00             movb   $0x0,0x2(%rbx)
  402103:       89 c8                   mov    %ecx,%eax
  402105:       5b                      pop    %rbx
  402106:       c3                      retq
  402107:       48 89 d6                mov    %rdx,%rsi
  40210a:       bf a0 26 40 00          mov    $0x4026a0,%edi
  40210f:       b8 00 00 00 00          mov    $0x0,%eax
  402114:       e8 e7 e9 ff ff          callq  400b00 <printf@plt>
  402119:       66 c7 03 4f 4b          movw   $0x4b4f,(%rbx)
  40211e:       c6 43 02 00             movb   $0x0,0x2(%rbx)
  402122:       b8 00 00 00 00          mov    $0x0,%eax
  402127:       eb dc                   jmp    402105 <driver_post+0x1d>
  402129:       41 50                   push   %r8
  40212b:       52                      push   %rdx
  40212c:       41 b9 b7 26 40 00       mov    $0x4026b7,%r9d
  402132:       49 89 f0                mov    %rsi,%r8
  402135:       48 89 f9                mov    %rdi,%rcx
  402138:       ba bf 26 40 00          mov    $0x4026bf,%edx
  40213d:       be 91 1f 00 00          mov    $0x1f91,%esi
  402142:       bf 89 25 40 00          mov    $0x402589,%edi
  402147:       e8 f2 f5 ff ff          callq  40173e <submitr>
  40214c:       48 83 c4 10             add    $0x10,%rsp
  402150:       eb b3                   jmp    402105 <driver_post+0x1d>
  402152:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  402159:       00 00 00
  40215c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000402160 <__libc_csu_init>:
  402160:       41 57                   push   %r15
  402162:       41 89 ff                mov    %edi,%r15d
  402165:       41 56                   push   %r14
  402167:       49 89 f6                mov    %rsi,%r14
  40216a:       41 55                   push   %r13
  40216c:       49 89 d5                mov    %rdx,%r13
  40216f:       41 54                   push   %r12
  402171:       4c 8d 25 a0 0c 20 00    lea    0x200ca0(%rip),%r12        # 602e18 <__frame_dummy_init_array_entry>
  402178:       55                      push   %rbp
  402179:       48 8d 2d a0 0c 20 00    lea    0x200ca0(%rip),%rbp        # 602e20 <__init_array_end>
  402180:       53                      push   %rbx
  402181:       4c 29 e5                sub    %r12,%rbp
  402184:       31 db                   xor    %ebx,%ebx
  402186:       48 c1 fd 03             sar    $0x3,%rbp
  40218a:       48 83 ec 08             sub    $0x8,%rsp
  40218e:       e8 e5 e8 ff ff          callq  400a78 <_init>
  402193:       48 85 ed                test   %rbp,%rbp
  402196:       74 1e                   je     4021b6 <__libc_csu_init+0x56>
  402198:       0f 1f 84 00 00 00 00    nopl   0x0(%rax,%rax,1)
  40219f:       00
  4021a0:       4c 89 ea                mov    %r13,%rdx
  4021a3:       4c 89 f6                mov    %r14,%rsi
  4021a6:       44 89 ff                mov    %r15d,%edi
  4021a9:       41 ff 14 dc             callq  *(%r12,%rbx,8)
  4021ad:       48 83 c3 01             add    $0x1,%rbx
  4021b1:       48 39 eb                cmp    %rbp,%rbx
  4021b4:       75 ea                   jne    4021a0 <__libc_csu_init+0x40>
  4021b6:       48 83 c4 08             add    $0x8,%rsp
  4021ba:       5b                      pop    %rbx
  4021bb:       5d                      pop    %rbp
  4021bc:       41 5c                   pop    %r12
  4021be:       41 5d                   pop    %r13
  4021c0:       41 5e                   pop    %r14
  4021c2:       41 5f                   pop    %r15
  4021c4:       c3                      retq
  4021c5:       90                      nop
  4021c6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  4021cd:       00 00 00

00000000004021d0 <__libc_csu_fini>:
  4021d0:       f3 c3                   repz retq

Disassembly of section .fini:

00000000004021d4 <_fini>:
  4021d4:       48 83 ec 08             sub    $0x8,%rsp
  4021d8:       48 83 c4 08             add    $0x8,%rsp
  4021dc:       c3                      retq
