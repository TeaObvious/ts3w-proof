# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: RoutingPolygonFootprint_ReadPayload
Paired actual annotated Ghidra pseudocode: 0080F080_RoutingPolygonFootprint_ReadPayload.c
Owned ranges: [[0080f080, 0080f12d]]
Envelope bytes=174

GHIDRA LISTING (original bytes; nonowned gaps explicit)
0080f080  51  PUSH ECX
0080f081  53  PUSH EBX
0080f082  57  PUSH EDI
0080f083  8bf9  MOV EDI,ECX
0080f085  e8f6feffff  CALL 0x0080ef80
0080f08a  8b44241c  MOV EAX,dword ptr [ESP + 0x1c]
0080f08e  8b4c2418  MOV ECX,dword ptr [ESP + 0x18]
0080f092  8b542414  MOV EDX,dword ptr [ESP + 0x14]
0080f096  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
0080f09a  50  PUSH EAX
0080f09b  51  PUSH ECX
0080f09c  52  PUSH EDX
0080f09d  53  PUSH EBX
0080f09e  8bcf  MOV ECX,EDI
0080f0a0  e83b82ffff  CALL 0x008072e0
0080f0a5  84c0  TEST AL,AL
0080f0a7  7506  JNZ 0x0080f0af
0080f0a9  5f  POP EDI
0080f0aa  5b  POP EBX
0080f0ab  59  POP ECX
0080f0ac  c21000  RET 0x10
0080f0af  8b4310  MOV EAX,dword ptr [EBX + 0x10]
0080f0b2  8b5308  MOV EDX,dword ptr [EBX + 0x8]
0080f0b5  55  PUSH EBP
0080f0b6  50  PUSH EAX
0080f0b7  8d4c2410  LEA ECX,[ESP + 0x10]
0080f0bb  51  PUSH ECX
0080f0bc  33ed  XOR EBP,EBP
0080f0be  52  PUSH EDX
0080f0bf  896c2418  MOV dword ptr [ESP + 0x18],EBP
0080f0c3  e8b8e8ccff  CALL 0x004dd980
0080f0c8  83c40c  ADD ESP,0xc
0080f0cb  8bcb  MOV ECX,EBX
0080f0cd  50  PUSH EAX
0080f0ce  e81d89fcff  CALL 0x007d79f0
0080f0d3  8b44240c  MOV EAX,dword ptr [ESP + 0xc]
0080f0d7  50  PUSH EAX
0080f0d8  8bcf  MOV ECX,EDI
0080f0da  e861f9ffff  CALL 0x0080ea40
0080f0df  84c0  TEST AL,AL
0080f0e1  7507  JNZ 0x0080f0ea
0080f0e3  5d  POP EBP
0080f0e4  5f  POP EDI
0080f0e5  5b  POP EBX
0080f0e6  59  POP ECX
0080f0e7  c21000  RET 0x10
0080f0ea  396c240c  CMP dword ptr [ESP + 0xc],EBP
0080f0ee  56  PUSH ESI
0080f0ef  7629  JBE 0x0080f11a
0080f0f1  33f6  XOR ESI,ESI
0080f0f3  8b4f38  MOV ECX,dword ptr [EDI + 0x38]
0080f0f6  8b542424  MOV EDX,dword ptr [ESP + 0x24]
0080f0fa  52  PUSH EDX
0080f0fb  03ce  ADD ECX,ESI
0080f0fd  53  PUSH EBX
0080f0fe  c7410cd41a0201  MOV dword ptr [ECX + 0xc],0x1021ad4
0080f105  e8469e0000  CALL 0x00818f50
0080f10a  84c0  TEST AL,AL
0080f10c  7416  JZ 0x0080f124
0080f10e  83c501  ADD EBP,0x1
0080f111  83c624  ADD ESI,0x24
0080f114  3b6c2410  CMP EBP,dword ptr [ESP + 0x10]
0080f118  72d9  JC 0x0080f0f3
0080f11a  5e  POP ESI
0080f11b  5d  POP EBP
0080f11c  5f  POP EDI
0080f11d  b001  MOV AL,0x1
0080f11f  5b  POP EBX
0080f120  59  POP ECX
0080f121  c21000  RET 0x10
0080f124  5e  POP ESI
0080f125  5d  POP EBP
0080f126  5f  POP EDI
0080f127  32c0  XOR AL,AL
0080f129  5b  POP EBX
0080f12a  59  POP ECX
0080f12b  c21000  RET 0x10
Owned instructions=77 owned bytes=174 nonowned bytes=0
