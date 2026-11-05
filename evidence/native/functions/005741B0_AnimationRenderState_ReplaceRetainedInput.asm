# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Actual Ghidra function: AnimationRenderState_ReplaceRetainedInput
Paired annotated actual pseudocode: 005741B0_AnimationRenderState_ReplaceRetainedInput.c
Owned ranges: [[005741b0, 005741fe]]

GHIDRA LISTING (original bytes)
005741b0  51  PUSH ECX
005741b1  56  PUSH ESI
005741b2  8bf1  MOV ESI,ECX
005741b4  8b4e24  MOV ECX,dword ptr [ESI + 0x24]
005741b7  85c9  TEST ECX,ECX
005741b9  57  PUSH EDI
005741ba  8d7e24  LEA EDI,[ESI + 0x24]
005741bd  c70700000000  MOV dword ptr [EDI],0x0
005741c3  7420  JZ 0x005741e5
005741c5  8d4104  LEA EAX,[ECX + 0x4]
005741c8  55  PUSH EBP
005741c9  8bd0  MOV EDX,EAX
005741cb  83cdff  OR EBP,0xffffffff
005741ce  f00fc12a  XADD.LOCK dword ptr [EDX],EBP
005741d2  4d  DEC EBP
005741d3  5d  POP EBP
005741d4  750f  JNZ 0x005741e5
005741d6  ba01000000  MOV EDX,0x1
005741db  8710  XCHG dword ptr [EAX],EDX
005741dd  8b01  MOV EAX,dword ptr [ECX]
005741df  8b10  MOV EDX,dword ptr [EAX]
005741e1  6a01  PUSH 0x1
005741e3  ffd2  CALL EDX
005741e5  8b442410  MOV EAX,dword ptr [ESP + 0x10]
005741e9  85c0  TEST EAX,EAX
005741eb  7408  JZ 0x005741f5
005741ed  50  PUSH EAX
005741ee  8bcf  MOV ECX,EDI
005741f0  e8bb0d3000  CALL 0x00874fb0
005741f5  834e3401  OR dword ptr [ESI + 0x34],0x1
005741f9  5f  POP EDI
005741fa  5e  POP ESI
005741fb  59  POP ECX
005741fc  c20400  RET 0x4
Owned instructions=34 owned bytes=79 envelope bytes=79
