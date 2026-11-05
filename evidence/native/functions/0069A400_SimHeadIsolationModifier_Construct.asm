# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: SimHeadIsolationModifier_Construct
; Owned ranges: [[0069a400, 0069a44d]]
; Actual entry PLATE: Static PC1.67: ECX newly allocated12-byte modifier, one stack model pointer, EAX=this, RET4. Stores transient basevptr00FF0FDC, atomically zeros refcount+4, stores actual vptr00FF409C and initializes retainedmodel+8. For a different nonnull input calls its virtual+0 before assignment, then releases a nonnull previous pointer through virtual+4; same-pointer/null branches remain literal. Direct caller006E6550 stage at006E6605 supplies model query result minus28, attaches via object virtual+80 then releases its local modifier reference. 00FDF6BC is the attachment argument, not this stored vptr. No geometry, scale or pose calculation in this constructor.

0069a400  53  PUSH EBX
0069a401  56  PUSH ESI
0069a402  8bf1  MOV ESI,ECX
0069a404  57  PUSH EDI
0069a405  c706dc0fff00  MOV dword ptr [ESI],0xff0fdc
0069a40b  33c0  XOR EAX,EAX
0069a40d  8d4e04  LEA ECX,[ESI + 0x4]
0069a410  8701  XCHG dword ptr [ECX],EAX
0069a412  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
0069a416  c7069c40ff00  MOV dword ptr [ESI],0xff409c
0069a41c  c7460800000000  MOV dword ptr [ESI + 0x8],0x0
0069a423  8b7e08  MOV EDI,dword ptr [ESI + 0x8]
0069a426  3bdf  CMP EBX,EDI
0069a428  741c  JZ 0x0069a446
0069a42a  85db  TEST EBX,EBX
0069a42c  7408  JZ 0x0069a436
0069a42e  8b13  MOV EDX,dword ptr [EBX]
0069a430  8b02  MOV EAX,dword ptr [EDX]
0069a432  8bcb  MOV ECX,EBX
0069a434  ffd0  CALL EAX
0069a436  85ff  TEST EDI,EDI
0069a438  895e08  MOV dword ptr [ESI + 0x8],EBX
0069a43b  7409  JZ 0x0069a446
0069a43d  8b17  MOV EDX,dword ptr [EDI]
0069a43f  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0069a442  8bcf  MOV ECX,EDI
0069a444  ffd0  CALL EAX
0069a446  5f  POP EDI
0069a447  8bc6  MOV EAX,ESI
0069a449  5e  POP ESI
0069a44a  5b  POP EBX
0069a44b  c20400  RET 0x4
