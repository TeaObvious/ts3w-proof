# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorLighting_UpdateTileRoomAndDefaultColors
; Owned ranges: [[006a88d0, 006a8a4d]]
; Actual entry PLATE: PC1.67 ECX owner, X/Z DWORD stack slots, low-byte part slot and room DWORD slot, RET16. Compute room classification low byte, update14-byte physical descriptor, preserve actual room0/missingtile early gate and current/new room-map remap branches. For a present tile call6A98C0/6A99A0, then write literalFFFFFFFF with selector9 andC0C0C0C0 with selector10 through6A9800 using signed part byte and zero extra flags. This proves conditional literal initialization, not a universal host storage0/default-product rule or complete floor-removal behavior. Child room-map/resource and setter semantics remain separate.

006a88d0  83ec1c  SUB ESP,0x1c
006a88d3  53  PUSH EBX
006a88d4  55  PUSH EBP
006a88d5  56  PUSH ESI
006a88d6  8bf1  MOV ESI,ECX
006a88d8  57  PUSH EDI
006a88d9  8d4c241c  LEA ECX,[ESP + 0x1c]
006a88dd  e86e1a0000  CALL 0x006aa350
006a88e2  6a01  PUSH 0x1
006a88e4  8d4c2420  LEA ECX,[ESP + 0x20]
006a88e8  e8530d0000  CALL 0x006a9640
006a88ed  8b6c243c  MOV EBP,dword ptr [ESP + 0x3c]
006a88f1  55  PUSH EBP
006a88f2  8bce  MOV ECX,ESI
006a88f4  33ff  XOR EDI,EDI
006a88f6  e8f5daffff  CALL 0x006a63f0
006a88fb  84c0  TEST AL,AL
006a88fd  88442418  MOV byte ptr [ESP + 0x18],AL
006a8901  7505  JNZ 0x006a8908
006a8903  bf00060000  MOV EDI,0x600
006a8908  8b5c2430  MOV EBX,dword ptr [ESP + 0x30]
006a890c  0fb7c7  MOVZX EAX,DI
006a890f  8b7c2434  MOV EDI,dword ptr [ESP + 0x34]
006a8913  89442410  MOV dword ptr [ESP + 0x10],EAX
006a8917  8b8664020000  MOV EAX,dword ptr [ESI + 0x264]
006a891d  0fafc7  IMUL EAX,EDI
006a8920  8d4c241c  LEA ECX,[ESP + 0x1c]
006a8924  51  PUSH ECX
006a8925  03c3  ADD EAX,EBX
006a8927  8d542414  LEA EDX,[ESP + 0x14]
006a892b  8d0cc500000000  LEA ECX,[EAX*0x8 + 0x0]
006a8932  52  PUSH EDX
006a8933  8b5604  MOV EDX,dword ptr [ESI + 0x4]
006a8936  2bc8  SUB ECX,EAX
006a8938  8d0c4a  LEA ECX,[EDX + ECX*0x2]
006a893b  e8a00d0000  CALL 0x006a96e0
006a8940  85ed  TEST EBP,EBP
006a8942  7526  JNZ 0x006a896a
006a8944  55  PUSH EBP
006a8945  8bce  MOV ECX,ESI
006a8947  e8d4dcffff  CALL 0x006a6620
006a894c  85c0  TEST EAX,EAX
006a894e  741a  JZ 0x006a896a
006a8950  8b8664020000  MOV EAX,dword ptr [ESI + 0x264]
006a8956  8b8e60020000  MOV ECX,dword ptr [ESI + 0x260]
006a895c  0fafc7  IMUL EAX,EDI
006a895f  03c3  ADD EAX,EBX
006a8961  392c81  CMP dword ptr [ECX + EAX*0x4],EBP
006a8964  0f84da000000  JZ 0x006a8a44
006a896a  57  PUSH EDI
006a896b  53  PUSH EBX
006a896c  8bce  MOV ECX,ESI
006a896e  e87db9ffff  CALL 0x006a42f0
006a8973  8bd8  MOV EBX,EAX
006a8975  85db  TEST EBX,EBX
006a8977  0f84c7000000  JZ 0x006a8a44
006a897d  0fbe442438  MOVSX EAX,byte ptr [ESP + 0x38]
006a8982  50  PUSH EAX
006a8983  8bcb  MOV ECX,EBX
006a8985  e8760f0000  CALL 0x006a9900
006a898a  3be8  CMP EBP,EAX
006a898c  89442434  MOV dword ptr [ESP + 0x34],EAX
006a8990  7474  JZ 0x006a8a06
006a8992  85c0  TEST EAX,EAX
006a8994  7470  JZ 0x006a8a06
006a8996  8b9638020000  MOV EDX,dword ptr [ESI + 0x238]
006a899c  8b8634020000  MOV EAX,dword ptr [ESI + 0x234]
006a89a2  8b0c90  MOV ECX,dword ptr [EAX + EDX*0x4]
006a89a5  8dbe30020000  LEA EDI,[ESI + 0x230]
006a89ab  8d54243c  LEA EDX,[ESP + 0x3c]
006a89af  52  PUSH EDX
006a89b0  8d442428  LEA EAX,[ESP + 0x28]
006a89b4  894c2414  MOV dword ptr [ESP + 0x14],ECX
006a89b8  50  PUSH EAX
006a89b9  8bcf  MOV ECX,EDI
006a89bb  e890d6ffff  CALL 0x006a6050
006a89c0  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
006a89c4  3908  CMP dword ptr [EAX],ECX
006a89c6  753e  JNZ 0x006a8a06
006a89c8  8b5708  MOV EDX,dword ptr [EDI + 0x8]
006a89cb  8b4704  MOV EAX,dword ptr [EDI + 0x4]
006a89ce  8b0c90  MOV ECX,dword ptr [EAX + EDX*0x4]
006a89d1  8d542434  LEA EDX,[ESP + 0x34]
006a89d5  52  PUSH EDX
006a89d6  8d442428  LEA EAX,[ESP + 0x28]
006a89da  894c2414  MOV dword ptr [ESP + 0x14],ECX
006a89de  50  PUSH EAX
006a89df  8bcf  MOV ECX,EDI
006a89e1  e86ad6ffff  CALL 0x006a6050
006a89e6  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
006a89ea  3908  CMP dword ptr [EAX],ECX
006a89ec  7418  JZ 0x006a8a06
006a89ee  8d542434  LEA EDX,[ESP + 0x34]
006a89f2  52  PUSH EDX
006a89f3  8bcf  MOV ECX,EDI
006a89f5  e826faffff  CALL 0x006a8420
006a89fa  83c010  ADD EAX,0x10
006a89fd  50  PUSH EAX
006a89fe  55  PUSH EBP
006a89ff  8bce  MOV ECX,ESI
006a8a01  e8baf1ffff  CALL 0x006a7bc0
006a8a06  0fbe742438  MOVSX ESI,byte ptr [ESP + 0x38]
006a8a0b  56  PUSH ESI
006a8a0c  55  PUSH EBP
006a8a0d  8bcb  MOV ECX,EBX
006a8a0f  e8ac0e0000  CALL 0x006a98c0
006a8a14  8b442418  MOV EAX,dword ptr [ESP + 0x18]
006a8a18  50  PUSH EAX
006a8a19  55  PUSH EBP
006a8a1a  8bcb  MOV ECX,EBX
006a8a1c  e87f0f0000  CALL 0x006a99a0
006a8a21  6a00  PUSH 0x0
006a8a23  6a00  PUSH 0x0
006a8a25  56  PUSH ESI
006a8a26  6aff  PUSH -0x1
006a8a28  6a09  PUSH 0x9
006a8a2a  8bcb  MOV ECX,EBX
006a8a2c  e8cf0d0000  CALL 0x006a9800
006a8a31  6a00  PUSH 0x0
006a8a33  6a00  PUSH 0x0
006a8a35  56  PUSH ESI
006a8a36  68c0c0c0c0  PUSH 0xc0c0c0c0
006a8a3b  6a0a  PUSH 0xa
006a8a3d  8bcb  MOV ECX,EBX
006a8a3f  e8bc0d0000  CALL 0x006a9800
006a8a44  5f  POP EDI
006a8a45  5e  POP ESI
006a8a46  5d  POP EBP
006a8a47  5b  POP EBX
006a8a48  83c41c  ADD ESP,0x1c
006a8a4b  c21000  RET 0x10
