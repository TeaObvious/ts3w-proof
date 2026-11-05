# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Complete actual Ghidra Listing /TS3W.exe; body=[[007e28e0, 007e2ab2]]
signature=undefined4 __stdcall ColorPickerSwatches_ReadResource(int * param_1, uint param_2)
PLATE
Analyst description; PC 1.67. Copy the source key header into the destination resource and branch on source type 0x2F7D0004. Image path consumes the existing decoded image service, caps each dimension at decimal 10, writes row-major 32-bit colors with stride decimal 10 and opaque alpha, and calls helper 0x00444160 for three component bytes; their precise channel meaning and codec/provider internals remain unverified. Other-type path obtains source virtual + 0x18 stream: null goes directly to final virtual + 0x20 and AL = 1, without the UInt32 read. A nonnull stream constructs reader with literal order 1, requests decimal 100 words at destination + 0x28 and returns AL = 0 on failed accumulated status. Source virtual + 0x20 is called on the local completion paths. Actual RET 0x10 consumes four stack DWORD slots, despite the inferred two-parameter prototype; AL is status, upper EAX unspecified. No current-host null-to-PNG/failure equivalence is claimed.

007e28e0  83ec28  SUB ESP,0x28
007e28e3  53  PUSH EBX
007e28e4  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
007e28e8  8b03  MOV EAX,dword ptr [EBX]
007e28ea  8b5010  MOV EDX,dword ptr [EAX + 0x10]
007e28ed  55  PUSH EBP
007e28ee  56  PUSH ESI
007e28ef  8be9  MOV EBP,ECX
007e28f1  57  PUSH EDI
007e28f2  8bcb  MOV ECX,EBX
007e28f4  ffd2  CALL EDX
007e28f6  8b08  MOV ECX,dword ptr [EAX]
007e28f8  8b7c2440  MOV EDI,dword ptr [ESP + 0x40]
007e28fc  894f08  MOV dword ptr [EDI + 0x8],ECX
007e28ff  8b5004  MOV EDX,dword ptr [EAX + 0x4]
007e2902  89570c  MOV dword ptr [EDI + 0xc],EDX
007e2905  8b4808  MOV ECX,dword ptr [EAX + 0x8]
007e2908  894f10  MOV dword ptr [EDI + 0x10],ECX
007e290b  8b500c  MOV EDX,dword ptr [EAX + 0xc]
007e290e  895714  MOV dword ptr [EDI + 0x14],EDX
007e2911  81780804007d2f  CMP dword ptr [EAX + 0x8],0x2f7d0004
007e2918  0f8517010000  JNZ 0x007e2a35
007e291e  6a30  PUSH 0x30
007e2920  e83b17c6ff  CALL 0x00444060
007e2925  83c404  ADD ESP,0x4
007e2928  85c0  TEST EAX,EAX
007e292a  740b  JZ 0x007e2937
007e292c  8bc8  MOV ECX,EAX
007e292e  e8bd1dc6ff  CALL 0x004446f0
007e2933  8bf0  MOV ESI,EAX
007e2935  eb02  JMP 0x007e2939
007e2937  33f6  XOR ESI,ESI
007e2939  8b03  MOV EAX,dword ptr [EBX]
007e293b  8b5018  MOV EDX,dword ptr [EAX + 0x18]
007e293e  6a0a  PUSH 0xa
007e2940  56  PUSH ESI
007e2941  6a32  PUSH 0x32
007e2943  8bcb  MOV ECX,EBX
007e2945  ffd2  CALL EDX
007e2947  50  PUSH EAX
007e2948  8d4d08  LEA ECX,[EBP + 0x8]
007e294b  e89037c6ff  CALL 0x004460e0
007e2950  84c0  TEST AL,AL
007e2952  7523  JNZ 0x007e2977
007e2954  85f6  TEST ESI,ESI
007e2956  740a  JZ 0x007e2962
007e2958  8b06  MOV EAX,dword ptr [ESI]
007e295a  8b10  MOV EDX,dword ptr [EAX]
007e295c  6a01  PUSH 0x1
007e295e  8bce  MOV ECX,ESI
007e2960  ffd2  CALL EDX
007e2962  8b03  MOV EAX,dword ptr [EBX]
007e2964  8b5020  MOV EDX,dword ptr [EAX + 0x20]
007e2967  8bcb  MOV ECX,EBX
007e2969  ffd2  CALL EDX
007e296b  5f  POP EDI
007e296c  5e  POP ESI
007e296d  5d  POP EBP
007e296e  32c0  XOR AL,AL
007e2970  5b  POP EBX
007e2971  83c428  ADD ESP,0x28
007e2974  c21000  RET 0x10
007e2977  8b5618  MOV EDX,dword ptr [ESI + 0x18]
007e297a  8b461c  MOV EAX,dword ptr [ESI + 0x1c]
007e297d  b90a000000  MOV ECX,0xa
007e2982  3bd1  CMP EDX,ECX
007e2984  89542414  MOV dword ptr [ESP + 0x14],EDX
007e2988  89442418  MOV dword ptr [ESP + 0x18],EAX
007e298c  7604  JBE 0x007e2992
007e298e  894c2414  MOV dword ptr [ESP + 0x14],ECX
007e2992  3bc1  CMP EAX,ECX
007e2994  7606  JBE 0x007e299c
007e2996  894c2418  MOV dword ptr [ESP + 0x18],ECX
007e299a  8bc1  MOV EAX,ECX
007e299c  33ed  XOR EBP,EBP
007e299e  85c0  TEST EAX,EAX
007e29a0  8d4f28  LEA ECX,[EDI + 0x28]
007e29a3  0f8680000000  JBE 0x007e2a29
007e29a9  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007e29ad  8d4900  LEA ECX,[ECX]
007e29b0  33ff  XOR EDI,EDI
007e29b2  397c2414  CMP dword ptr [ESP + 0x14],EDI
007e29b6  765f  JBE 0x007e2a17
007e29b8  8bd9  MOV EBX,ECX
007e29ba  8d9b00000000  LEA EBX,[EBX]
007e29c0  8b06  MOV EAX,dword ptr [ESI]
007e29c2  8b5030  MOV EDX,dword ptr [EAX + 0x30]
007e29c5  55  PUSH EBP
007e29c6  57  PUSH EDI
007e29c7  8bce  MOV ECX,ESI
007e29c9  ffd2  CALL EDX
007e29cb  8d4c2413  LEA ECX,[ESP + 0x13]
007e29cf  51  PUSH ECX
007e29d0  8d542416  LEA EDX,[ESP + 0x16]
007e29d4  52  PUSH EDX
007e29d5  8d4c2448  LEA ECX,[ESP + 0x48]
007e29d9  51  PUSH ECX
007e29da  50  PUSH EAX
007e29db  8bce  MOV ECX,ESI
007e29dd  e87e17c6ff  CALL 0x00444160
007e29e2  0fb6542440  MOVZX EDX,byte ptr [ESP + 0x40]
007e29e7  0fb6442412  MOVZX EAX,byte ptr [ESP + 0x12]
007e29ec  0fb64c2413  MOVZX ECX,byte ptr [ESP + 0x13]
007e29f1  81ca00ffffff  OR EDX,0xffffff00
007e29f7  c1e208  SHL EDX,0x8
007e29fa  0bd0  OR EDX,EAX
007e29fc  c1e208  SHL EDX,0x8
007e29ff  0bd1  OR EDX,ECX
007e2a01  8913  MOV dword ptr [EBX],EDX
007e2a03  83c701  ADD EDI,0x1
007e2a06  83c304  ADD EBX,0x4
007e2a09  3b7c2414  CMP EDI,dword ptr [ESP + 0x14]
007e2a0d  72b1  JC 0x007e29c0
007e2a0f  8b5c243c  MOV EBX,dword ptr [ESP + 0x3c]
007e2a13  8b442418  MOV EAX,dword ptr [ESP + 0x18]
007e2a17  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
007e2a1b  83c501  ADD EBP,0x1
007e2a1e  83c128  ADD ECX,0x28
007e2a21  3be8  CMP EBP,EAX
007e2a23  894c241c  MOV dword ptr [ESP + 0x1c],ECX
007e2a27  7287  JC 0x007e29b0
007e2a29  8b16  MOV EDX,dword ptr [ESI]
007e2a2b  8b02  MOV EAX,dword ptr [EDX]
007e2a2d  6a01  PUSH 0x1
007e2a2f  8bce  MOV ECX,ESI
007e2a31  ffd0  CALL EAX
007e2a33  eb69  JMP 0x007e2a9e
007e2a35  8b13  MOV EDX,dword ptr [EBX]
007e2a37  8b4218  MOV EAX,dword ptr [EDX + 0x18]
007e2a3a  8bcb  MOV ECX,EBX
007e2a3c  ffd0  CALL EAX
007e2a3e  85c0  TEST EAX,EAX
007e2a40  745c  JZ 0x007e2a9e
007e2a42  6a01  PUSH 0x1
007e2a44  50  PUSH EAX
007e2a45  8d4c2428  LEA ECX,[ESP + 0x28]
007e2a49  e89269ffff  CALL 0x007d93e0
007e2a4e  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
007e2a52  8b542428  MOV EDX,dword ptr [ESP + 0x28]
007e2a56  51  PUSH ECX
007e2a57  6a64  PUSH 0x64
007e2a59  83c728  ADD EDI,0x28
007e2a5c  57  PUSH EDI
007e2a5d  52  PUSH EDX
007e2a5e  e86dafcfff  CALL 0x004dd9d0
007e2a63  83c410  ADD ESP,0x10
007e2a66  8d4c2420  LEA ECX,[ESP + 0x20]
007e2a6a  50  PUSH EAX
007e2a6b  e8804fffff  CALL 0x007d79f0
007e2a70  807c243400  CMP byte ptr [ESP + 0x34],0x0
007e2a75  751e  JNZ 0x007e2a95
007e2a77  8b03  MOV EAX,dword ptr [EBX]
007e2a79  8b5020  MOV EDX,dword ptr [EAX + 0x20]
007e2a7c  8bcb  MOV ECX,EBX
007e2a7e  ffd2  CALL EDX
007e2a80  8d4c2420  LEA ECX,[ESP + 0x20]
007e2a84  e8074fffff  CALL 0x007d7990
007e2a89  5f  POP EDI
007e2a8a  5e  POP ESI
007e2a8b  5d  POP EBP
007e2a8c  32c0  XOR AL,AL
007e2a8e  5b  POP EBX
007e2a8f  83c428  ADD ESP,0x28
007e2a92  c21000  RET 0x10
007e2a95  8d4c2420  LEA ECX,[ESP + 0x20]
007e2a99  e8f24effff  CALL 0x007d7990
007e2a9e  8b03  MOV EAX,dword ptr [EBX]
007e2aa0  8b5020  MOV EDX,dword ptr [EAX + 0x20]
007e2aa3  8bcb  MOV ECX,EBX
007e2aa5  ffd2  CALL EDX
007e2aa7  5f  POP EDI
007e2aa8  5e  POP ESI
007e2aa9  5d  POP EBP
007e2aaa  b001  MOV AL,0x1
007e2aac  5b  POP EBX
007e2aad  83c428  ADD ESP,0x28
007e2ab0  c21000  RET 0x10
