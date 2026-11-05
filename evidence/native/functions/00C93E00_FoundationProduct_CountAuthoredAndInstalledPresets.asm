# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra owned Listing.
Paired actual annotated Ghidra pseudocode: 00C93E00_FoundationProduct_CountAuthoredAndInstalledPresets.c
Function FoundationProduct_CountAuthoredAndInstalledPresets [[00c93e00, 00c93e5e]]
00c93e00 51 PUSH ECX
00c93e01 56 PUSH ESI
00c93e02 8bb1f0000000 MOV ESI,dword ptr [ECX + 0xf0]
00c93e08 2bb1ec000000 SUB ESI,dword ptr [ECX + 0xec]
00c93e0e 6a00 PUSH 0x0
00c93e10 8d442408 LEA EAX,[ESP + 0x8]
00c93e14 50 PUSH EAX
00c93e15 83c108 ADD ECX,0x8
00c93e18 51 PUSH ECX
00c93e19 c1fe03 SAR ESI,0x3
00c93e1c c744241000000000 MOV dword ptr [ESP + 0x10],0x0
00c93e24 e877c4e9ff CALL 0x00b302a0
00c93e29 8bc8 MOV ECX,EAX
00c93e2b e800dae9ff CALL 0x00b31830
00c93e30 8b4c2404 MOV ECX,dword ptr [ESP + 0x4]
00c93e34 85c9 TEST ECX,ECX
00c93e36 7420 JZ 0x00c93e58
00c93e38 57 PUSH EDI
00c93e39 6a07 PUSH 0x7
00c93e3b e8206497ff CALL 0x0060a260
00c93e40 8b4c2408 MOV ECX,dword ptr [ESP + 0x8]
00c93e44 85c9 TEST ECX,ECX
00c93e46 8bf8 MOV EDI,EAX
00c93e48 7407 JZ 0x00c93e51
00c93e4a 8b11 MOV EDX,dword ptr [ECX]
00c93e4c 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c93e4f ffd0 CALL EAX
00c93e51 8d0437 LEA EAX,[EDI + ESI*0x1]
00c93e54 5f POP EDI
00c93e55 5e POP ESI
00c93e56 59 POP ECX
00c93e57 c3 RET
00c93e58 33c0 XOR EAX,EAX
00c93e5a 8bc6 MOV EAX,ESI
00c93e5c 5e POP ESI
00c93e5d 59 POP ECX
00c93e5e c3 RET
