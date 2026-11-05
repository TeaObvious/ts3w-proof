# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: pointer ToolUndoable_Initialize(void * this)
Owned ranges: [[00d1af00, 00d1af94]]

00d1af00  0f57c0  XORPS XMM0,XMM0
00d1af03  56  PUSH ESI
00d1af04  8bf1  MOV ESI,ECX
00d1af06  57  PUSH EDI
00d1af07  33ff  XOR EDI,EDI
00d1af09  897e04  MOV dword ptr [ESI + 0x4],EDI
00d1af0c  c7460894d2ff00  MOV dword ptr [ESI + 0x8],0xffd294
00d1af13  c706005e0801  MOV dword ptr [ESI],0x1085e00
00d1af19  c746088c700801  MOV dword ptr [ESI + 0x8],0x108708c
00d1af20  897e10  MOV dword ptr [ESI + 0x10],EDI
00d1af23  b001  MOV AL,0x1
00d1af25  884614  MOV byte ptr [ESI + 0x14],AL
00d1af28  897e18  MOV dword ptr [ESI + 0x18],EDI
00d1af2b  897e1c  MOV dword ptr [ESI + 0x1c],EDI
00d1af2e  897e20  MOV dword ptr [ESI + 0x20],EDI
00d1af31  c74624d05d0801  MOV dword ptr [ESI + 0x24],0x1085dd0
00d1af38  897e28  MOV dword ptr [ESI + 0x28],EDI
00d1af3b  897e2c  MOV dword ptr [ESI + 0x2c],EDI
00d1af3e  897e30  MOV dword ptr [ESI + 0x30],EDI
00d1af41  c74634a45d0801  MOV dword ptr [ESI + 0x34],0x1085da4
00d1af48  897e38  MOV dword ptr [ESI + 0x38],EDI
00d1af4b  897e3c  MOV dword ptr [ESI + 0x3c],EDI
00d1af4e  897e40  MOV dword ptr [ESI + 0x40],EDI
00d1af51  c74644705d0801  MOV dword ptr [ESI + 0x44],0x1085d70
00d1af58  f30f114648  MOVSS dword ptr [ESI + 0x48],XMM0
00d1af5d  88464c  MOV byte ptr [ESI + 0x4c],AL
00d1af60  88464d  MOV byte ptr [ESI + 0x4d],AL
00d1af63  e89845fdff  CALL 0x00cef500
00d1af68  3bc7  CMP EAX,EDI
00d1af6a  7408  JZ 0x00d1af74
00d1af6c  8b4028  MOV EAX,dword ptr [EAX + 0x28]
00d1af6f  89460c  MOV dword ptr [ESI + 0xc],EAX
00d1af72  eb03  JMP 0x00d1af77
00d1af74  897e0c  MOV dword ptr [ESI + 0xc],EDI
00d1af77  a1c4db1e01  MOV EAX,[0x011edbc4]
00d1af7c  3bc7  CMP EAX,EDI
00d1af7e  7410  JZ 0x00d1af90
00d1af80  81b854010000cc000000  CMP dword ptr [EAX + 0x154],0xcc
00d1af8a  0f94c1  SETZ CL
00d1af8d  884e4e  MOV byte ptr [ESI + 0x4e],CL
00d1af90  5f  POP EDI
00d1af91  8bc6  MOV EAX,ESI
00d1af93  5e  POP ESI
00d1af94  c3  RET
