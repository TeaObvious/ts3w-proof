# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra owned Listing.
Paired actual annotated Ghidra pseudocode: 00C93B30_FoundationProduct_ResolveFullPresetIdToOrdinal.c
Function FoundationProduct_ResolveFullPresetIdToOrdinal [[00c93b30, 00c93bbc] [00c93bc0, 00c93bd5]]
00c93b30 56 PUSH ESI
00c93b31 8bb1f0000000 MOV ESI,dword ptr [ECX + 0xf0]
00c93b37 2bb1ec000000 SUB ESI,dword ptr [ECX + 0xec]
00c93b3d 57 PUSH EDI
00c93b3e 8b7c240c MOV EDI,dword ptr [ESP + 0xc]
00c93b42 c1fe03 SAR ESI,0x3
00c93b45 f7c700008000 TEST EDI,0x800000
00c93b4b 745f JZ 0x00c93bac
00c93b4d 6a00 PUSH 0x0
00c93b4f 8d442410 LEA EAX,[ESP + 0x10]
00c93b53 50 PUSH EAX
00c93b54 83c108 ADD ECX,0x8
00c93b57 51 PUSH ECX
00c93b58 c744241800000000 MOV dword ptr [ESP + 0x18],0x0
00c93b60 e83bc7e9ff CALL 0x00b302a0
00c93b65 8bc8 MOV ECX,EAX
00c93b67 e8c4dce9ff CALL 0x00b31830
00c93b6c 8b4c240c MOV ECX,dword ptr [ESP + 0xc]
00c93b70 85c9 TEST ECX,ECX
00c93b72 745a JZ 0x00c93bce
00c93b74 57 PUSH EDI
00c93b75 6a07 PUSH 0x7
00c93b77 e8146797ff CALL 0x0060a290
00c93b7c 83f8ff CMP EAX,-0x1
00c93b7f 8b4c240c MOV ECX,dword ptr [ESP + 0xc]
00c93b83 7414 JZ 0x00c93b99
00c93b85 03f0 ADD ESI,EAX
00c93b87 85c9 TEST ECX,ECX
00c93b89 7407 JZ 0x00c93b92
00c93b8b 8b11 MOV EDX,dword ptr [ECX]
00c93b8d 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c93b90 ffd0 CALL EAX
00c93b92 5f POP EDI
00c93b93 8bc6 MOV EAX,ESI
00c93b95 5e POP ESI
00c93b96 c20400 RET 0x4
00c93b99 85c9 TEST ECX,ECX
00c93b9b 7431 JZ 0x00c93bce
00c93b9d 8b11 MOV EDX,dword ptr [ECX]
00c93b9f 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c93ba2 ffd0 CALL EAX
00c93ba4 5f POP EDI
00c93ba5 83c8ff OR EAX,0xffffffff
00c93ba8 5e POP ESI
00c93ba9 c20400 RET 0x4
00c93bac 33c0 XOR EAX,EAX
00c93bae 85f6 TEST ESI,ESI
00c93bb0 761c JBE 0x00c93bce
00c93bb2 8b89ec000000 MOV ECX,dword ptr [ECX + 0xec]
00c93bb8 83c104 ADD ECX,0x4
00c93bbb eb03 JMP 0x00c93bc0
00c93bc0 3939 CMP dword ptr [ECX],EDI
00c93bc2 740d JZ 0x00c93bd1
00c93bc4 83c001 ADD EAX,0x1
00c93bc7 83c108 ADD ECX,0x8
00c93bca 3bc6 CMP EAX,ESI
00c93bcc 72f2 JC 0x00c93bc0
00c93bce 83c8ff OR EAX,0xffffffff
00c93bd1 5f POP EDI
00c93bd2 5e POP ESI
00c93bd3 c20400 RET 0x4
