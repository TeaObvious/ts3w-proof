# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function envelope.
Analyst name: ConstructionEventQueue_AppendRetainedRecord
Paired actual annotated Ghidra pseudocode: 00C51F10_ConstructionEventQueue_AppendRetainedRecord.c
Owned ranges: [[00c51f10, 00c51f51]]
Envelope bytes=66

GHIDRA LISTING (original bytes; nonowned gaps explicit)
00c51f10  8b4104  MOV EAX,dword ptr [ECX + 0x4]
00c51f13  3b4108  CMP EAX,dword ptr [ECX + 0x8]
00c51f16  732c  JNC 0x00c51f44
00c51f18  85c0  TEST EAX,EAX
00c51f1a  8d500c  LEA EDX,[EAX + 0xc]
00c51f1d  895104  MOV dword ptr [ECX + 0x4],EDX
00c51f20  742d  JZ 0x00c51f4f
00c51f22  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c51f26  8a11  MOV DL,byte ptr [ECX]
00c51f28  8810  MOV byte ptr [EAX],DL
00c51f2a  8b5104  MOV EDX,dword ptr [ECX + 0x4]
00c51f2d  895004  MOV dword ptr [EAX + 0x4],EDX
00c51f30  8b4908  MOV ECX,dword ptr [ECX + 0x8]
00c51f33  85c9  TEST ECX,ECX
00c51f35  894808  MOV dword ptr [EAX + 0x8],ECX
00c51f38  7415  JZ 0x00c51f4f
00c51f3a  8b01  MOV EAX,dword ptr [ECX]
00c51f3c  8b5004  MOV EDX,dword ptr [EAX + 0x4]
00c51f3f  ffd2  CALL EDX
00c51f41  c20400  RET 0x4
00c51f44  8b542404  MOV EDX,dword ptr [ESP + 0x4]
00c51f48  52  PUSH EDX
00c51f49  50  PUSH EAX
00c51f4a  e841f1ffff  CALL 0x00c51090
00c51f4f  c20400  RET 0x4
Owned instructions=25 owned bytes=66 nonowned bytes=0
