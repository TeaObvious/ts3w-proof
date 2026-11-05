# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[006fe2a0,006fe351]; 178bytes/70instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXrenderWorld, childGUIDlow/high,parentGUIDlow/high,descriptorPointer five stackwordsRET14. Child map entry absent/sentinel =>AL0. Parent absent/sentinel passesnull to6FC5F0, elseentry-8. AL1 reports childhandler invocation even parentabsent; not renderer/GPU readiness. Lookup target6FDD60 existingcanonical.

ORIGINAL BYTES
006fe2a0: 83 ec 08 8b 44 24 0c 53 56 57 8b f1 8b 4c 24 1c
006fe2b0: 8d 54 24 0c 89 44 24 0c 52 8d 44 24 1c 89 4c 24
006fe2c0: 14 8d 7e 04 50 8b cf e8 94 fa ff ff 8b b6 28 10
006fe2d0: 00 00 8b 44 24 18 3b c6 74 6d 85 c0 74 69 8d 58
006fe2e0: f8 85 db 74 62 8b 4c 24 20 8b 54 24 24 89 4c 24
006fe2f0: 18 8d 44 24 18 50 8d 4c 24 24 51 8b cf 89 54 24
006fe300: 24 e8 5a fa ff ff 8b 44 24 20 3b c6 74 1f 85 c0
006fe310: 74 1b 8b 54 24 28 83 c0 f8 52 50 8b cb e8 ce e2
006fe320: ff ff 5f 5e b0 01 5b 83 c4 08 c2 14 00 8b 54 24
006fe330: 28 33 c0 52 50 8b cb e8 b4 e2 ff ff 5f 5e b0 01
006fe340: 5b 83 c4 08 c2 14 00 5f 5e 32 c0 5b 83 c4 08 c2
006fe350: 14 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_006fe2a0
Entry Point: 006fe2a0

006fe2a0: SUB ESP, 0x8
006fe2a3: MOV EAX, dword ptr [ESP + 0xc]
006fe2a7: PUSH EBX
006fe2a8: PUSH ESI
006fe2a9: PUSH EDI
006fe2aa: MOV ESI, ECX
006fe2ac: MOV ECX, dword ptr [ESP + 0x1c]
006fe2b0: LEA EDX, [ESP + 0xc]
006fe2b4: MOV dword ptr [ESP + 0xc], EAX
006fe2b8: PUSH EDX
006fe2b9: LEA EAX, [ESP + 0x1c]
006fe2bd: MOV dword ptr [ESP + 0x14], ECX
006fe2c1: LEA EDI, [ESI + 0x4]
006fe2c4: PUSH EAX
006fe2c5: MOV ECX, EDI
006fe2c7: CALL 0x006fdd60
006fe2cc: MOV ESI, dword ptr [ESI + 0x1028]
006fe2d2: MOV EAX, dword ptr [ESP + 0x18]
006fe2d6: CMP EAX, ESI
006fe2d8: JZ 0x006fe347
006fe2da: TEST EAX, EAX
006fe2dc: JZ 0x006fe347
006fe2de: LEA EBX, [EAX + -0x8]
006fe2e1: TEST EBX, EBX
006fe2e3: JZ 0x006fe347
006fe2e5: MOV ECX, dword ptr [ESP + 0x20]
006fe2e9: MOV EDX, dword ptr [ESP + 0x24]
006fe2ed: MOV dword ptr [ESP + 0x18], ECX
006fe2f1: LEA EAX, [ESP + 0x18]
006fe2f5: PUSH EAX
006fe2f6: LEA ECX, [ESP + 0x24]
006fe2fa: PUSH ECX
006fe2fb: MOV ECX, EDI
006fe2fd: MOV dword ptr [ESP + 0x24], EDX
006fe301: CALL 0x006fdd60
006fe306: MOV EAX, dword ptr [ESP + 0x20]
006fe30a: CMP EAX, ESI
006fe30c: JZ 0x006fe32d
006fe30e: TEST EAX, EAX
006fe310: JZ 0x006fe32d
006fe312: MOV EDX, dword ptr [ESP + 0x28]
006fe316: ADD EAX, -0x8
006fe319: PUSH EDX
006fe31a: PUSH EAX
006fe31b: MOV ECX, EBX
006fe31d: CALL 0x006fc5f0
006fe322: POP EDI
006fe323: POP ESI
006fe324: MOV AL, 0x1
006fe326: POP EBX
006fe327: ADD ESP, 0x8
006fe32a: RET 0x14
006fe32d: MOV EDX, dword ptr [ESP + 0x28]
006fe331: XOR EAX, EAX
006fe333: PUSH EDX
006fe334: PUSH EAX
006fe335: MOV ECX, EBX
006fe337: CALL 0x006fc5f0
006fe33c: POP EDI
006fe33d: POP ESI
006fe33e: MOV AL, 0x1
006fe340: POP EBX
006fe341: ADD ESP, 0x8
006fe344: RET 0x14
006fe347: POP EDI
006fe348: POP ESI
006fe349: XOR AL, AL
006fe34b: POP EBX
006fe34c: ADD ESP, 0x8
006fe34f: RET 0x14

Total instructions: 70