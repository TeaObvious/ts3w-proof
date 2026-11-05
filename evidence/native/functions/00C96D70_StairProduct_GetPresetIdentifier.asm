# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete actual Ghidra owned Listing.
Paired actual annotated Ghidra pseudocode: 00C96D70_StairProduct_GetPresetIdentifier.c
Function StairProduct_GetPresetIdentifier [[00c96d70, 00c96e02]]
00c96d70 8b81fc000000 MOV EAX,dword ptr [ECX + 0xfc]
00c96d76 2b81f8000000 SUB EAX,dword ptr [ECX + 0xf8]
00c96d7c 56 PUSH ESI
00c96d7d 8b742408 MOV ESI,dword ptr [ESP + 0x8]
00c96d81 c1f803 SAR EAX,0x3
00c96d84 3bf0 CMP ESI,EAX
00c96d86 730e JNC 0x00c96d96
00c96d88 8b89f8000000 MOV ECX,dword ptr [ECX + 0xf8]
00c96d8e 8b44f104 MOV EAX,dword ptr [ECX + ESI*0x8 + 0x4]
00c96d92 5e POP ESI
00c96d93 c20400 RET 0x4
00c96d96 8b91fc000000 MOV EDX,dword ptr [ECX + 0xfc]
00c96d9c 2b91f8000000 SUB EDX,dword ptr [ECX + 0xf8]
00c96da2 6a00 PUSH 0x0
00c96da4 8d44240c LEA EAX,[ESP + 0xc]
00c96da8 50 PUSH EAX
00c96da9 83c108 ADD ECX,0x8
00c96dac c1fa03 SAR EDX,0x3
00c96daf 51 PUSH ECX
00c96db0 2bf2 SUB ESI,EDX
00c96db2 c744241400000000 MOV dword ptr [ESP + 0x14],0x0
00c96dba e8e194e9ff CALL 0x00b302a0
00c96dbf 8bc8 MOV ECX,EAX
00c96dc1 e86aaae9ff CALL 0x00b31830
00c96dc6 8b4c2408 MOV ECX,dword ptr [ESP + 0x8]
00c96dca 85c9 TEST ECX,ECX
00c96dcc 742f JZ 0x00c96dfd
00c96dce 56 PUSH ESI
00c96dcf 6a05 PUSH 0x5
00c96dd1 e81a3597ff CALL 0x0060a2f0
00c96dd6 85c0 TEST EAX,EAX
00c96dd8 8b4c2408 MOV ECX,dword ptr [ESP + 0x8]
00c96ddc 7414 JZ 0x00c96df2
00c96dde 85c9 TEST ECX,ECX
00c96de0 8b7010 MOV ESI,dword ptr [EAX + 0x10]
00c96de3 7407 JZ 0x00c96dec
00c96de5 8b11 MOV EDX,dword ptr [ECX]
00c96de7 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c96dea ffd0 CALL EAX
00c96dec 8bc6 MOV EAX,ESI
00c96dee 5e POP ESI
00c96def c20400 RET 0x4
00c96df2 85c9 TEST ECX,ECX
00c96df4 7407 JZ 0x00c96dfd
00c96df6 8b11 MOV EDX,dword ptr [ECX]
00c96df8 8b4204 MOV EAX,dword ptr [EDX + 0x4]
00c96dfb ffd0 CALL EAX
00c96dfd 33c0 XOR EAX,EAX
00c96dff 5e POP ESI
00c96e00 c20400 RET 0x4
