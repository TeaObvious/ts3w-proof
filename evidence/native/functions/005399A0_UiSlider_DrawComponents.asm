# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body.
Actual annotated Ghidra pseudocode: 005399A0_UiSlider_DrawComponents.c
Owned ranges: [[005399a0, 005399f2]]

005399a0  56  PUSH ESI
005399a1  8bf1  MOV ESI,ECX
005399a3  83be0402000000  CMP dword ptr [ESI + 0x204],0x0
005399aa  7437  JZ 0x005399e3
005399ac  8b06  MOV EAX,dword ptr [ESI]
005399ae  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
005399b4  57  PUSH EDI
005399b5  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
005399b9  6a00  PUSH 0x0
005399bb  57  PUSH EDI
005399bc  ffd2  CALL EDX
005399be  8b06  MOV EAX,dword ptr [ESI]
005399c0  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
005399c6  6a02  PUSH 0x2
005399c8  57  PUSH EDI
005399c9  8bce  MOV ECX,ESI
005399cb  ffd2  CALL EDX
005399cd  8b06  MOV EAX,dword ptr [ESI]
005399cf  8b90a4000000  MOV EDX,dword ptr [EAX + 0xa4]
005399d5  6a01  PUSH 0x1
005399d7  57  PUSH EDI
005399d8  8bce  MOV ECX,ESI
005399da  ffd2  CALL EDX
005399dc  5f  POP EDI
005399dd  b001  MOV AL,0x1
005399df  5e  POP ESI
005399e0  c20400  RET 0x4
005399e3  8b442408  MOV EAX,dword ptr [ESP + 0x8]
005399e7  50  PUSH EAX
005399e8  e853acfdff  CALL 0x00514640
005399ed  b001  MOV AL,0x1
005399ef  5e  POP ESI
005399f0  c20400  RET 0x4
