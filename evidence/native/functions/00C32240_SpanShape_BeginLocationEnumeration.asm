# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: SpanShape_BeginLocationEnumeration
Paired actual annotated Ghidra pseudocode: 00C32240_SpanShape_BeginLocationEnumeration.c
Owned ranges: [[00c32240, 00c322ac] [00c322b0, 00c32393]]
Envelope bytes=340

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c32240  83ec14  SUB ESP,0x14
00c32243  56  PUSH ESI
00c32244  8bf1  MOV ESI,ECX
00c32246  807e3400  CMP byte ptr [ESI + 0x34],0x0
00c3224a  7410  JZ 0x00c3225c
00c3224c  e82ffdffff  CALL 0x00c31f80
00c32251  8bce  MOV ECX,ESI
00c32253  e828f3ffff  CALL 0x00c31580
00c32258  c6463400  MOV byte ptr [ESI + 0x34],0x0
00c3225c  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c3225f  3b461c  CMP EAX,dword ptr [ESI + 0x1c]
00c32262  7512  JNZ 0x00c32276
00c32264  8a4e01  MOV CL,byte ptr [ESI + 0x1]
00c32267  80c101  ADD CL,0x1
00c3226a  884e3e  MOV byte ptr [ESI + 0x3e],CL
00c3226d  32c0  XOR AL,AL
00c3226f  5e  POP ESI
00c32270  83c414  ADD ESP,0x14
00c32273  c20400  RET 0x4
00c32276  8a16  MOV DL,byte ptr [ESI]
00c32278  53  PUSH EBX
00c32279  88563e  MOV byte ptr [ESI + 0x3e],DL
00c3227c  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00c3227f  8b5614  MOV EDX,dword ptr [ESI + 0x14]
00c32282  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00c32285  55  PUSH EBP
00c32286  57  PUSH EDI
00c32287  8b7e18  MOV EDI,dword ptr [ESI + 0x18]
00c3228a  894654  MOV dword ptr [ESI + 0x54],EAX
00c3228d  894e58  MOV dword ptr [ESI + 0x58],ECX
00c32290  89565c  MOV dword ptr [ESI + 0x5c],EDX
00c32293  897e60  MOV dword ptr [ESI + 0x60],EDI
00c32296  8b561c  MOV EDX,dword ptr [ESI + 0x1c]
00c32299  395654  CMP dword ptr [ESI + 0x54],EDX
00c3229c  89542414  MOV dword ptr [ESP + 0x14],EDX
00c322a0  0f84a8000000  JZ 0x00c3234e
00c322a6  b804000000  MOV EAX,0x4
00c322ab  eb03  JMP 0x00c322b0
00c322ad  8d  .byte nonowned gap
00c322ae  49  .byte nonowned gap
00c322af  00  .byte nonowned gap
00c322b0  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00c322b3  8b7908  MOV EDI,dword ptr [ECX + 0x8]
00c322b6  3b7918  CMP EDI,dword ptr [ECX + 0x18]
00c322b9  7460  JZ 0x00c3231b
00c322bb  8b5910  MOV EBX,dword ptr [ECX + 0x10]
00c322be  8b6914  MOV EBP,dword ptr [ECX + 0x14]
00c322c1  8bd7  MOV EDX,EDI
00c322c3  8b790c  MOV EDI,dword ptr [ECX + 0xc]
00c322c6  895644  MOV dword ptr [ESI + 0x44],EDX
00c322c9  897e48  MOV dword ptr [ESI + 0x48],EDI
00c322cc  895e4c  MOV dword ptr [ESI + 0x4c],EBX
00c322cf  896e50  MOV dword ptr [ESI + 0x50],EBP
00c322d2  8a512c  MOV DL,byte ptr [ECX + 0x2c]
00c322d5  88563d  MOV byte ptr [ESI + 0x3d],DL
00c322d8  8b4918  MOV ECX,dword ptr [ECX + 0x18]
00c322db  394e44  CMP dword ptr [ESI + 0x44],ECX
00c322de  7437  JZ 0x00c32317
00c322e0  8b5644  MOV EDX,dword ptr [ESI + 0x44]
00c322e3  833a00  CMP dword ptr [EDX],0x0
00c322e6  7572  JNZ 0x00c3235a
00c322e8  83464408  ADD dword ptr [ESI + 0x44],0x8
00c322ec  8b5644  MOV EDX,dword ptr [ESI + 0x44]
00c322ef  3b564c  CMP EDX,dword ptr [ESI + 0x4c]
00c322f2  751a  JNZ 0x00c3230e
00c322f4  014650  ADD dword ptr [ESI + 0x50],EAX
00c322f7  8b5650  MOV EDX,dword ptr [ESI + 0x50]
00c322fa  8b12  MOV EDX,dword ptr [EDX]
00c322fc  895648  MOV dword ptr [ESI + 0x48],EDX
00c322ff  81c200010000  ADD EDX,0x100
00c32305  89564c  MOV dword ptr [ESI + 0x4c],EDX
00c32308  8b5648  MOV EDX,dword ptr [ESI + 0x48]
00c3230b  895644  MOV dword ptr [ESI + 0x44],EDX
00c3230e  80463d01  ADD byte ptr [ESI + 0x3d],0x1
00c32312  394e44  CMP dword ptr [ESI + 0x44],ECX
00c32315  75c9  JNZ 0x00c322e0
00c32317  8b542414  MOV EDX,dword ptr [ESP + 0x14]
00c3231b  83465430  ADD dword ptr [ESI + 0x54],0x30
00c3231f  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00c32322  3b4e5c  CMP ECX,dword ptr [ESI + 0x5c]
00c32325  751a  JNZ 0x00c32341
00c32327  014660  ADD dword ptr [ESI + 0x60],EAX
00c3232a  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00c3232d  8b09  MOV ECX,dword ptr [ECX]
00c3232f  894e58  MOV dword ptr [ESI + 0x58],ECX
00c32332  81c1c0000000  ADD ECX,0xc0
00c32338  894e5c  MOV dword ptr [ESI + 0x5c],ECX
00c3233b  8b4e58  MOV ECX,dword ptr [ESI + 0x58]
00c3233e  894e54  MOV dword ptr [ESI + 0x54],ECX
00c32341  80463e01  ADD byte ptr [ESI + 0x3e],0x1
00c32345  395654  CMP dword ptr [ESI + 0x54],EDX
00c32348  0f8562ffffff  JNZ 0x00c322b0
00c3234e  5f  POP EDI
00c3234f  5d  POP EBP
00c32350  5b  POP EBX
00c32351  32c0  XOR AL,AL
00c32353  5e  POP ESI
00c32354  83c414  ADD ESP,0x14
00c32357  c20400  RET 0x4
00c3235a  8b0a  MOV ECX,dword ptr [EDX]
00c3235c  0fbe563d  MOVSX EDX,byte ptr [ESI + 0x3d]
00c32360  0fbe463e  MOVSX EAX,byte ptr [ESI + 0x3e]
00c32364  894e40  MOV dword ptr [ESI + 0x40],ECX
00c32367  8a5904  MOV BL,byte ptr [ECX + 0x4]
00c3236a  885e3c  MOV byte ptr [ESI + 0x3c],BL
00c3236d  8a4906  MOV CL,byte ptr [ECX + 0x6]
00c32370  89542410  MOV dword ptr [ESP + 0x10],EDX
00c32374  8b542428  MOV EDX,dword ptr [ESP + 0x28]
00c32378  881a  MOV byte ptr [EDX],BL
00c3237a  0fb65c2410  MOVZX EBX,byte ptr [ESP + 0x10]
00c3237f  5f  POP EDI
00c32380  5d  POP EBP
00c32381  885a01  MOV byte ptr [EDX + 0x1],BL
00c32384  5b  POP EBX
00c32385  884202  MOV byte ptr [EDX + 0x2],AL
00c32388  884a03  MOV byte ptr [EDX + 0x3],CL
00c3238b  b001  MOV AL,0x1
00c3238d  5e  POP ESI
00c3238e  83c414  ADD ESP,0x14
00c32391  c20400  RET 0x4
Owned instructions=117 owned bytes=337 nonowned bytes=3
