# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra owned Listing.
Paired actual annotated Ghidra pseudocode: 00C93BE0_FoundationProduct_GetPresetIdentifier.c
Function FoundationProduct_GetPresetIdentifier [[00c93be0, 00c93c72]]
00c93be0 8b81f0000000 MOV EAX,dword ptr [ECX + 0xf0]
00c93be6 2b81ec000000 SUB EAX,dword ptr [ECX + 0xec]
00c93bec 56 PUSH ESI
00c93bed 8b742408 MOV ESI,dword ptr [ESP + 0x8]
00c93bf1 c1f803 SAR EAX,0x3
00c93bf4 3bf0 CMP ESI,EAX
00c93bf6 730e JNC 0x00c93c06
00c93bf8 8b89ec000000 MOV ECX,dword ptr [ECX + 0xec]
00c93bfe 8b44f104 MOV EAX,dword ptr [ECX + ESI*0x8 + 0x4]
00c93c02 5e POP ESI
00c93c03 c20400 RET 0x4
00c93c06 8b91f0000000 MOV EDX,dword ptr [ECX + 0xf0]
00c93c0c 2b91ec000000 SUB EDX,dword ptr [ECX + 0xec]
00c93c12 6a00 PUSH 0x0
00c93c14 8d44240c LEA EAX,[ESP + 0xc]
00c93c18 50 PUSH EAX
00c93c19 83c108 ADD ECX,0x8
00c93c1c c1fa03 SAR EDX,0x3
00c93c1f 51 PUSH ECX
00c93c20 2bf2 SUB ESI,EDX
00c93c22 c744241400000000 MOV dword ptr [ESP + 0x14],0x0
00c93c2a e871c6e9ff CALL 0x00b302a0
00c93c2f 8bc8 MOV ECX,EAX
00c93c31 e8fadbe9ff CALL 0x00b31830
00c93c36 8b4c2408 MOV ECX,dword ptr [ESP + 0x8]
00c93c3a 85c9 TEST ECX,ECX
00c93c3c 742f JZ 0x00c93c6d
00c93c3e 56 PUSH ESI
00c93c3f 6a07 PUSH 0x7
00c93c41 e8aa6697ff CALL 0x0060a2f0
00c93c46 85c0 TEST EAX,EAX
00c93c48 8b4c2408 MOV ECX,dword ptr [ESP + 0x8]
00c93c4c 7414 JZ 0x00c93c62
00c93c4e 85c9 TEST ECX,ECX
00c93c50 8b7010 MOV ESI,dword ptr [EAX + 0x10]
00c93c53 7407 JZ 0x00c93c5c
00c93c55 8b11 MOV EDX,dword ptr [ECX]
00c93c57 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c93c5a ffd0 CALL EAX
00c93c5c 8bc6 MOV EAX,ESI
00c93c5e 5e POP ESI
00c93c5f c20400 RET 0x4
00c93c62 85c9 TEST ECX,ECX
00c93c64 7407 JZ 0x00c93c6d
00c93c66 8b11 MOV EDX,dword ptr [ECX]
00c93c68 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c93c6b ffd0 CALL EAX
00c93c6d 33c0 XOR EAX,EAX
00c93c6f 5e POP ESI
00c93c70 c20400 RET 0x4
