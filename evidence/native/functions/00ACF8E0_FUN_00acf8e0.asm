# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00acf8e0,00acf951]. 114owned bytes/38instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

cdecl lot/packedcell, ALBool/plainRET. Signedbounds/fullmask0F AB67D0strict, then exact kind6. Not a general water-height or room-partition producer.

ORIGINAL OWNED BYTES
00acf8e0: 8b 44 24 08
00acf8e4: 0f be 10
00acf8e7: 85 d2
00acf8e9: 56
00acf8ea: 0f be 70 01
00acf8ee: 7c 2c
00acf8f0: 8b 4c 24 08
00acf8f4: 3b 91 74 01 00 00
00acf8fa: 7d 20
00acf8fc: 85 f6
00acf8fe: 7c 1c
00acf900: 3b b1 78 01 00 00
00acf906: 7d 14
00acf908: 0f be 50 02
00acf90c: 3b 91 7c 01 00 00
00acf912: 7c 08
00acf914: 3b 91 80 01 00 00
00acf91a: 7e 04
00acf91c: 32 c0
00acf91e: 5e
00acf91f: c3
00acf920: 66 8b 10
00acf923: 8a 40 02
00acf926: 66 89 54 24 0c
00acf92b: 6a 00
00acf92d: 8d 54 24 10
00acf931: 52
00acf932: 88 44 24 16
00acf936: c6 44 24 17 0f
00acf93b: e8 90 6e fe ff
00acf940: 6a 06
00acf942: 50
00acf943: e8 b8 e9 02 00
00acf948: 83 c4 08
00acf94b: 84 c0
00acf94d: 0f 95 c0
00acf950: 5e
00acf951: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00acf8e0
Entry Point: 00acf8e0

00acf8e0: MOV EAX, dword ptr [ESP + 0x8]
00acf8e4: MOVSX EDX, byte ptr [EAX]
00acf8e7: TEST EDX, EDX
00acf8e9: PUSH ESI
00acf8ea: MOVSX ESI, byte ptr [EAX + 0x1]
00acf8ee: JL 0x00acf91c
00acf8f0: MOV ECX, dword ptr [ESP + 0x8]
00acf8f4: CMP EDX, dword ptr [ECX + 0x174]
00acf8fa: JGE 0x00acf91c
00acf8fc: TEST ESI, ESI
00acf8fe: JL 0x00acf91c
00acf900: CMP ESI, dword ptr [ECX + 0x178]
00acf906: JGE 0x00acf91c
00acf908: MOVSX EDX, byte ptr [EAX + 0x2]
00acf90c: CMP EDX, dword ptr [ECX + 0x17c]
00acf912: JL 0x00acf91c
00acf914: CMP EDX, dword ptr [ECX + 0x180]
00acf91a: JLE 0x00acf920
00acf91c: XOR AL, AL
00acf91e: POP ESI
00acf91f: RET
00acf920: MOV DX, word ptr [EAX]
00acf923: MOV AL, byte ptr [EAX + 0x2]
00acf926: MOV word ptr [ESP + 0xc], DX
00acf92b: PUSH 0x0
00acf92d: LEA EDX, [ESP + 0x10]
00acf931: PUSH EDX
00acf932: MOV byte ptr [ESP + 0x16], AL
00acf936: MOV byte ptr [ESP + 0x17], 0xf
00acf93b: CALL 0x00ab67d0
00acf940: PUSH 0x6
00acf942: PUSH EAX
00acf943: CALL 0x00afe300
00acf948: ADD ESP, 0x8
00acf94b: TEST AL, AL
00acf94d: SETNZ AL
00acf950: POP ESI
00acf951: RET

Total instructions: 38