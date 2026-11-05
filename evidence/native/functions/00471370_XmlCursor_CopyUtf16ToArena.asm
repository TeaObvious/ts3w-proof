# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 actual Ghidra-owned Listing; analyst-assigned name XmlCursor_CopyUtf16ToArena
Owned ranges: [[00471370, 004713d9]]
Signature: ushort * __thiscall XmlCursor_CopyUtf16ToArena(ushort * source)
Physical ABI: ECX cursor; stack+4 NUL-ended UTF16 source; EAX arena-copy pointer; RET4. Current undefined return is wrong.

00471370  53  PUSH EBX
00471371  8b5c2408  MOV EBX,dword ptr [ESP + 0x8]
00471375  56  PUSH ESI
00471376  8bc3  MOV EAX,EBX
00471378  57  PUSH EDI
00471379  8d7002  LEA ESI,[EAX + 0x2]
0047137c  8d642400  LEA ESP,[ESP]
00471380  668b10  MOV DX,word ptr [EAX] ; Count complete UTF16 units until NUL; no colon, prefix or namespace processing occurs.
00471383  83c002  ADD EAX,0x2
00471386  6685d2  TEST DX,DX
00471389  75f5  JNZ 0x00471380
0047138b  2bc6  SUB EAX,ESI
0047138d  d1f8  SAR EAX,0x1
0047138f  8d7c0009  LEA EDI,[EAX + EAX*0x1 + 0x9] ; Round storage including terminator to an eight-byte arena allocation.
00471393  8b4120  MOV EAX,dword ptr [ECX + 0x20]
00471396  8d7118  LEA ESI,[ECX + 0x18]
00471399  83e7f8  AND EDI,0xfffffff8
0047139c  2bc7  SUB EAX,EDI
0047139e  2b460c  SUB EAX,dword ptr [ESI + 0xc]
004713a1  7910  JNS 0x004713b3
004713a3  57  PUSH EDI
004713a4  8bce  MOV ECX,ESI
004713a6  e8d5770700  CALL 0x004e8b80
004713ab  84c0  TEST AL,AL
004713ad  7504  JNZ 0x004713b3
004713af  33c0  XOR EAX,EAX
004713b1  eb0c  JMP 0x004713bf
004713b3  8b460c  MOV EAX,dword ptr [ESI + 0xc]
004713b6  8d0c38  LEA ECX,[EAX + EDI*0x1]
004713b9  894e0c  MOV dword ptr [ESI + 0xc],ECX
004713bc  894e10  MOV dword ptr [ESI + 0x10],ECX
004713bf  8bf0  MOV ESI,EAX
004713c1  8bcb  MOV ECX,EBX
004713c3  2bf3  SUB ESI,EBX
004713c5  0fb711  MOVZX EDX,word ptr [ECX] ; Copy the entire source including NUL; EAX remains the returned destination pointer. Native allocation failure is not safely contained here.
004713c8  6689140e  MOV word ptr [ESI + ECX*0x1],DX
004713cc  83c102  ADD ECX,0x2
004713cf  6685d2  TEST DX,DX
004713d2  75f1  JNZ 0x004713c5
004713d4  5f  POP EDI
004713d5  5e  POP ESI
004713d6  5b  POP EBX
004713d7  c20400  RET 0x4
