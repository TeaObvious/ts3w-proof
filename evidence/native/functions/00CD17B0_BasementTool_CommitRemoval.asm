# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void BasementTool_CommitRemoval(void * this)
Owned ranges: [[00cd17b0, 00cd1845]]

00cd17b0  81ec80000000  SUB ESP,0x80
00cd17b6  56  PUSH ESI
00cd17b7  8bf1  MOV ESI,ECX
00cd17b9  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd17bf  6a01  PUSH 0x1
00cd17c1  e83aac0400  CALL 0x00d1c400
00cd17c6  8d4c2404  LEA ECX,[ESP + 0x4]
00cd17ca  e8715fe0ff  CALL 0x00ad7740
00cd17cf  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd17d5  807e5e00  CMP byte ptr [ESI + 0x5e],0x0
00cd17d9  8d442404  LEA EAX,[ESP + 0x4]
00cd17dd  50  PUSH EAX
00cd17de  51  PUSH ECX
00cd17df  6a00  PUSH 0x0
00cd17e1  0f94c1  SETZ CL
00cd17e4  8d567f  LEA EDX,[ESI + 0x7f]
00cd17e7  52  PUSH EDX
00cd17e8  8b560c  MOV EDX,dword ptr [ESI + 0xc]
00cd17eb  8d467c  LEA EAX,[ESI + 0x7c]
00cd17ee  50  PUSH EAX
00cd17ef  51  PUSH ECX
00cd17f0  52  PUSH EDX
00cd17f1  e8cadffcff  CALL 0x00c9f7c0
00cd17f6  8b8e94000000  MOV ECX,dword ptr [ESI + 0x94]
00cd17fc  83c41c  ADD ESP,0x1c
00cd17ff  6a01  PUSH 0x1
00cd1801  e84aac0400  CALL 0x00d1c450
00cd1806  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00cd180a  50  PUSH EAX
00cd180b  8d4c245c  LEA ECX,[ESP + 0x5c]
00cd180f  e8ac0fd8ff  CALL 0x00a527c0
00cd1814  8b4c2448  MOV ECX,dword ptr [ESP + 0x48]
00cd1818  51  PUSH ECX
00cd1819  8d4c2440  LEA ECX,[ESP + 0x40]
00cd181d  e89e0fd8ff  CALL 0x00a527c0
00cd1822  8b54242c  MOV EDX,dword ptr [ESP + 0x2c]
00cd1826  52  PUSH EDX
00cd1827  8d4c2424  LEA ECX,[ESP + 0x24]
00cd182b  e8900fd8ff  CALL 0x00a527c0
00cd1830  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00cd1834  50  PUSH EAX
00cd1835  8d4c2408  LEA ECX,[ESP + 0x8]
00cd1839  e8420fd8ff  CALL 0x00a52780
00cd183e  5e  POP ESI
00cd183f  81c480000000  ADD ESP,0x80
00cd1845  c3  RET
