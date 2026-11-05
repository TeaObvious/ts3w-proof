# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe; analyst display name FootprintQueryCell_SelectChild.
# Ghidra database name FUN_0066a310; no symbol/database edit.
# Bounding original-byte envelope [0066a310,0066a4ee); bytes independently matched against the central original PE.
# Complete existing Ghidra-owned Listing below; envelope gaps are bytes, not owned instructions.
# Owned ranges (exclusive ends): [0066a310,0066a4ee)
# Nonowned gap bytes: 0.

# Original bytes by virtual address:
0066a310: 55 56 8b f1 8b 46 0c 85 c0 57 0f 84 07 01 00 00
0066a320: 8b 40 04 24 03 3c 01 0f 85 b5 00 00 00 8b 56 18
0066a330: 8b 44 24 14 8b 4c 24 10 8b 3c cd bc fd fe 00 8d
0066a340: 14 57 33 50 18 81 e2 ff 0f 00 00 31 50 18 8b 2c
0066a350: cd c0 fd fe 00 0f b7 56 1a 8b 78 18 8d 54 55 00
0066a360: c1 e2 10 33 d7 81 e2 00 00 ff 0f 33 d7 89 50 18
0066a370: 8b 7e 18 33 fa 81 e7 00 f0 00 00 33 fa 89 78 18
0066a380: f3 0f 10 46 14 f3 0f 59 05 b4 b5 f9 00 f3 0f 11
0066a390: 40 14 8b 56 18 81 e2 00 00 00 f0 81 c2 00 00 00
0066a3a0: 10 81 e7 ff ff ff 0f 33 d7 89 50 18 8b 56 04 89
0066a3b0: 50 04 8b 56 0c 89 50 08 8b 56 0c 8b 54 8a 0c c1
0066a3c0: e1 08 33 48 20 5f 81 e1 00 03 00 00 31 48 20 5e
0066a3d0: c6 40 1c 00 81 60 1c ff 00 00 00 89 50 0c 5d c2
0066a3e0: 08 00 8b 7c 24 14 3b fe 74 08 56 8b cf e8 9e 1a
0066a3f0: fb ff 8b 4e 1c 8b 44 24 10 81 e1 ff 00 00 00 8d
0066a400: 14 88 8a 0c 95 98 f5 fe 00 c1 e0 08 33 47 20 88
0066a410: 4f 1c 25 00 03 00 00 31 47 20 81 67 1c ff 00 00
0066a420: 00 5f 5e 5d c2 08 00 8b 4e 18 8b 44 24 14 8b 54
0066a430: 24 10 8b 3c d5 bc fd fe 00 8d 0c 4f 33 48 18 81
0066a440: e1 ff 0f 00 00 31 48 18 0f b7 4e 1a 8b 2c d5 c0
0066a450: fd fe 00 8b 78 18 8d 4c 4d 00 c1 e1 10 33 cf 81
0066a460: e1 00 00 ff 0f 33 cf 89 48 18 8b 7e 18 33 f9 81
0066a470: e7 00 f0 00 00 33 f9 89 78 18 f3 0f 10 46 14 f3
0066a480: 0f 59 05 b4 b5 f9 00 f3 0f 11 40 14 8b 4e 18 81
0066a490: e1 00 00 00 f0 81 c1 00 00 00 10 81 e7 ff ff ff
0066a4a0: 0f 33 cf 89 48 18 8b 4e 04 89 48 04 8b ca c1 e1
0066a4b0: 08 33 48 20 c7 40 08 00 00 00 00 81 e1 00 03 00
0066a4c0: 00 31 48 20 c7 40 0c 00 00 00 00 8b 4e 1c 81 e1
0066a4d0: ff 00 00 00 8d 14 8a 8a 0c 95 98 f5 fe 00 5f 5e
0066a4e0: 88 48 1c 81 60 1c ff 00 00 00 5d c2 08 00

# Existing Ghidra-owned instruction Listing:
0066a310: PUSH EBP
0066a311: PUSH ESI
0066a312: MOV ESI, ECX
0066a314: MOV EAX, dword ptr [ESI + 0xc]
0066a317: TEST EAX, EAX
0066a319: PUSH EDI
0066a31a: JZ 0x0066a427
0066a320: MOV EAX, dword ptr [EAX + 0x4]
0066a323: AND AL, 0x3
0066a325: CMP AL, 0x1
0066a327: JNZ 0x0066a3e2
0066a32d: MOV EDX, dword ptr [ESI + 0x18]
0066a330: MOV EAX, dword ptr [ESP + 0x14]
0066a334: MOV ECX, dword ptr [ESP + 0x10]
0066a338: MOV EDI, dword ptr [ECX*0x8 + 0xfefdbc]
0066a33f: LEA EDX, [EDI + EDX*0x2]
0066a342: XOR EDX, dword ptr [EAX + 0x18]
0066a345: AND EDX, 0xfff
0066a34b: XOR dword ptr [EAX + 0x18], EDX
0066a34e: MOV EBP, dword ptr [ECX*0x8 + 0xfefdc0]
0066a355: MOVZX EDX, word ptr [ESI + 0x1a]
0066a359: MOV EDI, dword ptr [EAX + 0x18]
0066a35c: LEA EDX, [EBP + EDX*0x2]
0066a360: SHL EDX, 0x10
0066a363: XOR EDX, EDI
0066a365: AND EDX, 0xfff0000
0066a36b: XOR EDX, EDI
0066a36d: MOV dword ptr [EAX + 0x18], EDX
0066a370: MOV EDI, dword ptr [ESI + 0x18]
0066a373: XOR EDI, EDX
0066a375: AND EDI, 0xf000
0066a37b: XOR EDI, EDX
0066a37d: MOV dword ptr [EAX + 0x18], EDI
0066a380: MOVSS XMM0, dword ptr [ESI + 0x14]
0066a385: MULSS XMM0, dword ptr [0x00f9b5b4]
0066a38d: MOVSS dword ptr [EAX + 0x14], XMM0
0066a392: MOV EDX, dword ptr [ESI + 0x18]
0066a395: AND EDX, 0xf0000000
0066a39b: ADD EDX, 0x10000000
0066a3a1: AND EDI, 0xfffffff
0066a3a7: XOR EDX, EDI
0066a3a9: MOV dword ptr [EAX + 0x18], EDX
0066a3ac: MOV EDX, dword ptr [ESI + 0x4]
0066a3af: MOV dword ptr [EAX + 0x4], EDX
0066a3b2: MOV EDX, dword ptr [ESI + 0xc]
0066a3b5: MOV dword ptr [EAX + 0x8], EDX
0066a3b8: MOV EDX, dword ptr [ESI + 0xc]
0066a3bb: MOV EDX, dword ptr [EDX + ECX*0x4 + 0xc]
0066a3bf: SHL ECX, 0x8
0066a3c2: XOR ECX, dword ptr [EAX + 0x20]
0066a3c5: POP EDI
0066a3c6: AND ECX, 0x300
0066a3cc: XOR dword ptr [EAX + 0x20], ECX
0066a3cf: POP ESI
0066a3d0: MOV byte ptr [EAX + 0x1c], 0x0
0066a3d4: AND dword ptr [EAX + 0x1c], 0xff
0066a3db: MOV dword ptr [EAX + 0xc], EDX
0066a3de: POP EBP
0066a3df: RET 0x8
0066a3e2: MOV EDI, dword ptr [ESP + 0x14]
0066a3e6: CMP EDI, ESI
0066a3e8: JZ 0x0066a3f2
0066a3ea: PUSH ESI
0066a3eb: MOV ECX, EDI
0066a3ed: CALL 0x0061be90
0066a3f2: MOV ECX, dword ptr [ESI + 0x1c]
0066a3f5: MOV EAX, dword ptr [ESP + 0x10]
0066a3f9: AND ECX, 0xff
0066a3ff: LEA EDX, [EAX + ECX*0x4]
0066a402: MOV CL, byte ptr [EDX*0x4 + 0xfef598]
0066a409: SHL EAX, 0x8
0066a40c: XOR EAX, dword ptr [EDI + 0x20]
0066a40f: MOV byte ptr [EDI + 0x1c], CL
0066a412: AND EAX, 0x300
0066a417: XOR dword ptr [EDI + 0x20], EAX
0066a41a: AND dword ptr [EDI + 0x1c], 0xff
0066a421: POP EDI
0066a422: POP ESI
0066a423: POP EBP
0066a424: RET 0x8
0066a427: MOV ECX, dword ptr [ESI + 0x18]
0066a42a: MOV EAX, dword ptr [ESP + 0x14]
0066a42e: MOV EDX, dword ptr [ESP + 0x10]
0066a432: MOV EDI, dword ptr [EDX*0x8 + 0xfefdbc]
0066a439: LEA ECX, [EDI + ECX*0x2]
0066a43c: XOR ECX, dword ptr [EAX + 0x18]
0066a43f: AND ECX, 0xfff
0066a445: XOR dword ptr [EAX + 0x18], ECX
0066a448: MOVZX ECX, word ptr [ESI + 0x1a]
0066a44c: MOV EBP, dword ptr [EDX*0x8 + 0xfefdc0]
0066a453: MOV EDI, dword ptr [EAX + 0x18]
0066a456: LEA ECX, [EBP + ECX*0x2]
0066a45a: SHL ECX, 0x10
0066a45d: XOR ECX, EDI
0066a45f: AND ECX, 0xfff0000
0066a465: XOR ECX, EDI
0066a467: MOV dword ptr [EAX + 0x18], ECX
0066a46a: MOV EDI, dword ptr [ESI + 0x18]
0066a46d: XOR EDI, ECX
0066a46f: AND EDI, 0xf000
0066a475: XOR EDI, ECX
0066a477: MOV dword ptr [EAX + 0x18], EDI
0066a47a: MOVSS XMM0, dword ptr [ESI + 0x14]
0066a47f: MULSS XMM0, dword ptr [0x00f9b5b4]
0066a487: MOVSS dword ptr [EAX + 0x14], XMM0
0066a48c: MOV ECX, dword ptr [ESI + 0x18]
0066a48f: AND ECX, 0xf0000000
0066a495: ADD ECX, 0x10000000
0066a49b: AND EDI, 0xfffffff
0066a4a1: XOR ECX, EDI
0066a4a3: MOV dword ptr [EAX + 0x18], ECX
0066a4a6: MOV ECX, dword ptr [ESI + 0x4]
0066a4a9: MOV dword ptr [EAX + 0x4], ECX
0066a4ac: MOV ECX, EDX
0066a4ae: SHL ECX, 0x8
0066a4b1: XOR ECX, dword ptr [EAX + 0x20]
0066a4b4: MOV dword ptr [EAX + 0x8], 0x0
0066a4bb: AND ECX, 0x300
0066a4c1: XOR dword ptr [EAX + 0x20], ECX
0066a4c4: MOV dword ptr [EAX + 0xc], 0x0
0066a4cb: MOV ECX, dword ptr [ESI + 0x1c]
0066a4ce: AND ECX, 0xff
0066a4d4: LEA EDX, [EDX + ECX*0x4]
0066a4d7: MOV CL, byte ptr [EDX*0x4 + 0xfef598]
0066a4de: POP EDI
0066a4df: POP ESI
0066a4e0: MOV byte ptr [EAX + 0x1c], CL
0066a4e3: AND dword ptr [EAX + 0x1c], 0xff
0066a4ea: POP EBP
0066a4eb: RET 0x8
