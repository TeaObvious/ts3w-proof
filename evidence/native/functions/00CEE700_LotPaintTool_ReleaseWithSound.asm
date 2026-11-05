# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 full owned Ghidra Listing
# Entry 00cee700 LotPaintTool_ReleaseWithSound
# Body [[00cee700, 00cee7c5]]; owned bytes=198
00cee700  53  PUSH EBX
00cee701  56  PUSH ESI
00cee702  8bf1  MOV ESI,ECX
00cee704  33db  XOR EBX,EBX
00cee706  385e64  CMP byte ptr [ESI + 0x64],BL
00cee709  0f8481000000  JZ 0x00cee790
00cee70f  e8fc50feff  CALL 0x00cd3810
00cee714  8b8e88010000  MOV ECX,dword ptr [ESI + 0x188]
00cee71a  3bcb  CMP ECX,EBX
00cee71c  742e  JZ 0x00cee74c
00cee71e  8b01  MOV EAX,dword ptr [ECX]
00cee720  8b5024  MOV EDX,dword ptr [EAX + 0x24]
00cee723  ffd2  CALL EDX
00cee725  84c0  TEST AL,AL
00cee727  8b8e88010000  MOV ECX,dword ptr [ESI + 0x188]
00cee72d  7416  JZ 0x00cee745
00cee72f  e8cc5b0300  CALL 0x00d24300
00cee734  8b8688010000  MOV EAX,dword ptr [ESI + 0x188]
00cee73a  53  PUSH EBX
00cee73b  50  PUSH EAX
00cee73c  8bce  MOV ECX,ESI
00cee73e  e8dd52feff  CALL 0x00cd3a20
00cee743  eb07  JMP 0x00cee74c
00cee745  8b11  MOV EDX,dword ptr [ECX]
00cee747  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00cee74a  ffd0  CALL EAX
00cee74c  8b8e88010000  MOV ECX,dword ptr [ESI + 0x188]
00cee752  3bcb  CMP ECX,EBX
00cee754  7422  JZ 0x00cee778
00cee756  899e88010000  MOV dword ptr [ESI + 0x188],EBX
00cee75c  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00cee75f  83c0ff  ADD EAX,-0x1
00cee762  3bc3  CMP EAX,EBX
00cee764  894104  MOV dword ptr [ECX + 0x4],EAX
00cee767  750f  JNZ 0x00cee778
00cee769  c7410401000000  MOV dword ptr [ECX + 0x4],0x1
00cee770  8b11  MOV EDX,dword ptr [ECX]
00cee772  8b02  MOV EAX,dword ptr [EDX]
00cee774  6a01  PUSH 0x1
00cee776  ffd0  CALL EAX
00cee778  8bce  MOV ECX,ESI
00cee77a  885e64  MOV byte ptr [ESI + 0x64],BL
00cee77d  889ec9000000  MOV byte ptr [ESI + 0xc9],BL
00cee783  e838efffff  CALL 0x00ced6c0
00cee788  8d4ed8  LEA ECX,[ESI + -0x28]
00cee78b  e810feffff  CALL 0x00cee5a0
00cee790  8bce  MOV ECX,ESI
00cee792  e8c902feff  CALL 0x00ccea60
00cee797  399e7c010000  CMP dword ptr [ESI + 0x17c],EBX
00cee79d  7420  JZ 0x00cee7bf
00cee79f  8b867c010000  MOV EAX,dword ptr [ESI + 0x17c]
00cee7a5  3bc3  CMP EAX,EBX
00cee7a7  7410  JZ 0x00cee7b9
00cee7a9  53  PUSH EBX
00cee7aa  50  PUSH EAX
00cee7ab  e83021b7ff  CALL 0x008608e0
00cee7b0  83c408  ADD ESP,0x8
00cee7b3  899e7c010000  MOV dword ptr [ESI + 0x17c],EBX
00cee7b9  899e7c010000  MOV dword ptr [ESI + 0x17c],EBX
00cee7bf  5e  POP ESI
00cee7c0  b001  MOV AL,0x1
00cee7c2  5b  POP EBX
00cee7c3  c20800  RET 0x8
