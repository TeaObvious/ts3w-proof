# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; existing FUN_00aeaef0, complete owned listing.
Envelope [00aeaef0,00aeb0a6), 438 owned bytes/139 instructions; 438 envelope bytes; nonowned gaps [].
Explicit /TS3W.exe serial readonly MCP; pristine PE/independent objdump checked; no DB mutation/save.

ORIGINAL ENVELOPE BYTES
00aeaef0: 8b 44 24 04 f3 0f 10 44 24 0c 83 ec 2c 53 55 56
00aeaf00: 8b 74 24 40 57 8b f9 8b 8f c8 00 00 00 8b 51 08
00aeaf10: 8b 49 0c 0f af d0 03 d6 f3 0f 11 04 91 8b 4f 08
00aeaf20: 8b 59 18 2b 59 10 8b 51 24 0f af 5a 04 03 d8 0f
00aeaf30: af 5a 08 8b 52 10 03 de 0f 2f 04 9a 76 23 8b 97
00aeaf40: cc 00 00 00 8b 4a 08 8b 52 0c 0f af c8 03 ce 8b
00aeaf50: d9 c1 fb 03 8d 2c 13 83 e1 07 b2 01 d2 e2 08 55
00aeaf60: 00 8b 4f 04 33 db 39 99 d0 02 00 00 0f 84 2a 01
00aeaf70: 00 00 6a 01 6a 05 53 8d 50 ff 53 83 c0 01 53 89
00aeaf80: 54 24 40 89 44 24 48 8d 56 ff 8d 44 24 30 50 89
00aeaf90: 54 24 48 53 8d 54 24 48 83 c6 01 52 89 5c 24 3c
00aeafa0: 89 5c 24 40 89 5c 24 44 c7 44 24 48 14 a5 06 01
00aeafb0: 89 74 24 58 e8 17 d6 fd ff 8b 6c 24 20 8b 44 24
00aeafc0: 1c 2b e8 c1 fd 02 89 5c 24 40 0f 84 bf 00 00 00
00aeafd0: 8b 34 98 85 f6 0f 84 a1 00 00 00 56 e8 af 60 01
00aeafe0: 00 83 c4 04 84 c0 75 11 56 e8 d2 60 01 00 83 c4
00aeaff0: 04 84 c0 0f 84 83 00 00 00 a1 08 df 1e 01 50 8b
00aeb000: ce e8 5a 92 e4 ff f3 0f 10 05 18 b2 fa 00 8d 4c
00aeb010: 24 18 51 8b d8 8d 54 24 18 52 8d 44 24 18 50 8b
00aeb020: cb f3 0f 11 44 24 1c f3 0f 11 44 24 20 c7 44 24
00aeb030: 24 00 00 00 00 e8 a6 e4 19 00 8b 57 04 8d 4c 24
00aeb040: 10 51 52 e8 c8 d6 01 00 d9 5c 24 4c 83 c4 08 6a
00aeb050: 00 8b cb e8 e8 e8 19 00 8b 4f 04 83 ec 08 d9 5c
00aeb060: 24 04 8d 44 24 1c d9 44 24 50 d9 1c 24 50 51 56
00aeb070: e8 8b ea 01 00 8b 5c 24 58 83 c4 18 8b 44 24 1c
00aeb080: 83 c3 01 3b dd 89 5c 24 40 0f 82 41 ff ff ff 85
00aeb090: c0 74 09 50 e8 47 94 9f ff 83 c4 04 5f 5e 5d 5b
00aeb0a0: 83 c4 2c c2 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00aeaef0
Entry Point: 00aeaef0

00aeaef0: MOV EAX, dword ptr [ESP + 0x4]
00aeaef4: MOVSS XMM0, dword ptr [ESP + 0xc]
00aeaefa: SUB ESP, 0x2c
00aeaefd: PUSH EBX
00aeaefe: PUSH EBP
00aeaeff: PUSH ESI
00aeaf00: MOV ESI, dword ptr [ESP + 0x40]
00aeaf04: PUSH EDI
00aeaf05: MOV EDI, ECX
00aeaf07: MOV ECX, dword ptr [EDI + 0xc8]
00aeaf0d: MOV EDX, dword ptr [ECX + 0x8]
00aeaf10: MOV ECX, dword ptr [ECX + 0xc]
00aeaf13: IMUL EDX, EAX
00aeaf16: ADD EDX, ESI
00aeaf18: MOVSS dword ptr [ECX + EDX*0x4], XMM0
00aeaf1d: MOV ECX, dword ptr [EDI + 0x8]
00aeaf20: MOV EBX, dword ptr [ECX + 0x18]
00aeaf23: SUB EBX, dword ptr [ECX + 0x10]
00aeaf26: MOV EDX, dword ptr [ECX + 0x24]
00aeaf29: IMUL EBX, dword ptr [EDX + 0x4]
00aeaf2d: ADD EBX, EAX
00aeaf2f: IMUL EBX, dword ptr [EDX + 0x8]
00aeaf33: MOV EDX, dword ptr [EDX + 0x10]
00aeaf36: ADD EBX, ESI
00aeaf38: COMISS XMM0, dword ptr [EDX + EBX*0x4]
00aeaf3c: JBE 0x00aeaf61
00aeaf3e: MOV EDX, dword ptr [EDI + 0xcc]
00aeaf44: MOV ECX, dword ptr [EDX + 0x8]
00aeaf47: MOV EDX, dword ptr [EDX + 0xc]
00aeaf4a: IMUL ECX, EAX
00aeaf4d: ADD ECX, ESI
00aeaf4f: MOV EBX, ECX
00aeaf51: SAR EBX, 0x3
00aeaf54: LEA EBP, [EBX + EDX*0x1]
00aeaf57: AND ECX, 0x7
00aeaf5a: MOV DL, 0x1
00aeaf5c: SHL DL, CL
00aeaf5e: OR byte ptr [EBP], DL
00aeaf61: MOV ECX, dword ptr [EDI + 0x4]
00aeaf64: XOR EBX, EBX
00aeaf66: CMP dword ptr [ECX + 0x2d0], EBX
00aeaf6c: JZ 0x00aeb09c
00aeaf72: PUSH 0x1
00aeaf74: PUSH 0x5
00aeaf76: PUSH EBX
00aeaf77: LEA EDX, [EAX + -0x1]
00aeaf7a: PUSH EBX
00aeaf7b: ADD EAX, 0x1
00aeaf7e: PUSH EBX
00aeaf7f: MOV dword ptr [ESP + 0x40], EDX
00aeaf83: MOV dword ptr [ESP + 0x48], EAX
00aeaf87: LEA EDX, [ESI + -0x1]
00aeaf8a: LEA EAX, [ESP + 0x30]
00aeaf8e: PUSH EAX
00aeaf8f: MOV dword ptr [ESP + 0x48], EDX
00aeaf93: PUSH EBX
00aeaf94: LEA EDX, [ESP + 0x48]
00aeaf98: ADD ESI, 0x1
00aeaf9b: PUSH EDX
00aeaf9c: MOV dword ptr [ESP + 0x3c], EBX
00aeafa0: MOV dword ptr [ESP + 0x40], EBX
00aeafa4: MOV dword ptr [ESP + 0x44], EBX
00aeafa8: MOV dword ptr [ESP + 0x48], 0x106a514
00aeafb0: MOV dword ptr [ESP + 0x58], ESI
00aeafb4: CALL 0x00ac85d0
00aeafb9: MOV EBP, dword ptr [ESP + 0x20]
00aeafbd: MOV EAX, dword ptr [ESP + 0x1c]
00aeafc1: SUB EBP, EAX
00aeafc3: SAR EBP, 0x2
00aeafc6: MOV dword ptr [ESP + 0x40], EBX
00aeafca: JZ 0x00aeb08f
00aeafd0: MOV ESI, dword ptr [EAX + EBX*0x4]
00aeafd3: TEST ESI, ESI
00aeafd5: JZ 0x00aeb07c
00aeafdb: PUSH ESI
00aeafdc: CALL 0x00b01090
00aeafe1: ADD ESP, 0x4
00aeafe4: TEST AL, AL
00aeafe6: JNZ 0x00aeaff9
00aeafe8: PUSH ESI
00aeafe9: CALL 0x00b010c0
00aeafee: ADD ESP, 0x4
00aeaff1: TEST AL, AL
00aeaff3: JZ 0x00aeb07c
00aeaff9: MOV EAX, [0x011edf08]
00aeaffe: PUSH EAX
00aeafff: MOV ECX, ESI
00aeb001: CALL 0x00934260
00aeb006: MOVSS XMM0, dword ptr [0x00fab218]
00aeb00e: LEA ECX, [ESP + 0x18]
00aeb012: PUSH ECX
00aeb013: MOV EBX, EAX
00aeb015: LEA EDX, [ESP + 0x18]
00aeb019: PUSH EDX
00aeb01a: LEA EAX, [ESP + 0x18]
00aeb01e: PUSH EAX
00aeb01f: MOV ECX, EBX
00aeb021: MOVSS dword ptr [ESP + 0x1c], XMM0
00aeb027: MOVSS dword ptr [ESP + 0x20], XMM0
00aeb02d: MOV dword ptr [ESP + 0x24], 0x0
00aeb035: CALL 0x00c894e0
00aeb03a: MOV EDX, dword ptr [EDI + 0x4]
00aeb03d: LEA ECX, [ESP + 0x10]
00aeb041: PUSH ECX
00aeb042: PUSH EDX
00aeb043: CALL 0x00b08710
00aeb048: FSTP float ptr [ESP + 0x4c]
00aeb04c: ADD ESP, 0x8
00aeb04f: PUSH 0x0
00aeb051: MOV ECX, EBX
00aeb053: CALL 0x00c89940
00aeb058: MOV ECX, dword ptr [EDI + 0x4]
00aeb05b: SUB ESP, 0x8
00aeb05e: FSTP float ptr [ESP + 0x4]
00aeb062: LEA EAX, [ESP + 0x1c]
00aeb066: FLD float ptr [ESP + 0x50]
00aeb06a: FSTP float ptr [ESP]
00aeb06d: PUSH EAX
00aeb06e: PUSH ECX
00aeb06f: PUSH ESI
00aeb070: CALL 0x00b09b00
00aeb075: MOV EBX, dword ptr [ESP + 0x58]
00aeb079: ADD ESP, 0x18
00aeb07c: MOV EAX, dword ptr [ESP + 0x1c]
00aeb080: ADD EBX, 0x1
00aeb083: CMP EBX, EBP
00aeb085: MOV dword ptr [ESP + 0x40], EBX
00aeb089: JC 0x00aeafd0
00aeb08f: TEST EAX, EAX
00aeb091: JZ 0x00aeb09c
00aeb093: PUSH EAX
00aeb094: CALL 0x004e44e0
00aeb099: ADD ESP, 0x4
00aeb09c: POP EDI
00aeb09d: POP ESI
00aeb09e: POP EBP
00aeb09f: POP EBX
00aeb0a0: ADD ESP, 0x2c
00aeb0a3: RET 0xc

Total instructions: 139
