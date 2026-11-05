# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra function body envelope.
Actual Ghidra function: ObjectProduct_CountAuthoredAndExtraPresets
Paired actual annotated Ghidra pseudocode: 00C983E0_ObjectProduct_CountAuthoredAndExtraPresets.c
Owned ranges: [[00c983e0, 00c9843e]]
Envelope bytes=95

GHIDRA LISTING (original bytes; nonowned gaps/data explicit)
00c983e0  51  PUSH ECX
00c983e1  56  PUSH ESI
00c983e2  8bb108010000  MOV ESI,dword ptr [ECX + 0x108]
00c983e8  2bb104010000  SUB ESI,dword ptr [ECX + 0x104]
00c983ee  6a00  PUSH 0x0
00c983f0  8d442408  LEA EAX,[ESP + 0x8]
00c983f4  50  PUSH EAX
00c983f5  83c108  ADD ECX,0x8
00c983f8  51  PUSH ECX
00c983f9  c1fe03  SAR ESI,0x3
00c983fc  c744241000000000  MOV dword ptr [ESP + 0x10],0x0
00c98404  e8977ee9ff  CALL 0x00b302a0
00c98409  8bc8  MOV ECX,EAX
00c9840b  e82094e9ff  CALL 0x00b31830
00c98410  8b4c2404  MOV ECX,dword ptr [ESP + 0x4]
00c98414  85c9  TEST ECX,ECX
00c98416  7420  JZ 0x00c98438
00c98418  57  PUSH EDI
00c98419  6a01  PUSH 0x1
00c9841b  e8401e97ff  CALL 0x0060a260
00c98420  8b4c2408  MOV ECX,dword ptr [ESP + 0x8]
00c98424  85c9  TEST ECX,ECX
00c98426  8bf8  MOV EDI,EAX
00c98428  7407  JZ 0x00c98431
00c9842a  8b11  MOV EDX,dword ptr [ECX]
00c9842c  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00c9842f  ffd0  CALL EAX
00c98431  8d0437  LEA EAX,[EDI + ESI*0x1]
00c98434  5f  POP EDI
00c98435  5e  POP ESI
00c98436  59  POP ECX
00c98437  c3  RET
00c98438  33c0  XOR EAX,EAX
00c9843a  8bc6  MOV EAX,ESI
00c9843c  5e  POP ESI
00c9843d  59  POP ECX
00c9843e  c3  RET
Owned instructions=37 owned bytes=95 nonowned bytes=0
