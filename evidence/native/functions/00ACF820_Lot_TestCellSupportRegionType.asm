# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe, complete existing Ghidra owned ranges: [00acf820,00acf8d0]. 177owned bytes/59instructions; 0nonowned envelope bytes excluded. Readonly GhidrAssist metadata/Listing and independent original-PE byte/start comparison. No DB/body/prototype repair, analysis, save or original-byte mutation.

cdecl lot/packedcell/allowtype6/optionaloutbyte, ALBool/plainRET. Signedbounds check; fullmask0F AB67D0strict, type3 first then optionaltype6, successful out0/1 only. Failure leaves out untouched; upperEAX not certified by stored undefined4.

ORIGINAL OWNED BYTES
00acf820: 8b 44 24 08
00acf824: 0f be 10
00acf827: 85 d2
00acf829: 56
00acf82a: 0f be 70 01
00acf82e: 0f 8c 99 00 00 00
00acf834: 8b 4c 24 08
00acf838: 3b 91 74 01 00 00
00acf83e: 0f 8d 89 00 00 00
00acf844: 85 f6
00acf846: 0f 8c 81 00 00 00
00acf84c: 3b b1 78 01 00 00
00acf852: 7d 79
00acf854: 0f be 50 02
00acf858: 3b 91 7c 01 00 00
00acf85e: 7c 6d
00acf860: 3b 91 80 01 00 00
00acf866: 7f 65
00acf868: 66 8b 10
00acf86b: 8a 40 02
00acf86e: 66 89 54 24 0c
00acf873: 6a 00
00acf875: 8d 54 24 10
00acf879: 52
00acf87a: 88 44 24 16
00acf87e: c6 44 24 17 0f
00acf883: e8 48 6f fe ff
00acf888: 8b f0
00acf88a: 6a 03
00acf88c: 56
00acf88d: e8 6e ea 02 00
00acf892: 83 c4 08
00acf895: 84 c0
00acf897: 74 0f
00acf899: 8b 44 24 14
00acf89d: 85 c0
00acf89f: 74 03
00acf8a1: c6 00 00
00acf8a4: b0 01
00acf8a6: 5e
00acf8a7: c3
00acf8a8: 80 7c 24 10 00
00acf8ad: 74 1e
00acf8af: 6a 06
00acf8b1: 56
00acf8b2: e8 49 ea 02 00
00acf8b7: 83 c4 08
00acf8ba: 84 c0
00acf8bc: 74 0f
00acf8be: 8b 44 24 14
00acf8c2: 85 c0
00acf8c4: 74 03
00acf8c6: c6 00 01
00acf8c9: b0 01
00acf8cb: 5e
00acf8cc: c3
00acf8cd: 32 c0
00acf8cf: 5e
00acf8d0: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: Lot_TestCellSupportRegionType
Entry Point: 00acf820

00acf820: MOV EAX, dword ptr [ESP + 0x8]
00acf824: MOVSX EDX, byte ptr [EAX]
00acf827: TEST EDX, EDX
00acf829: PUSH ESI
00acf82a: MOVSX ESI, byte ptr [EAX + 0x1]
00acf82e: JL 0x00acf8cd
00acf834: MOV ECX, dword ptr [ESP + 0x8]
00acf838: CMP EDX, dword ptr [ECX + 0x174]
00acf83e: JGE 0x00acf8cd
00acf844: TEST ESI, ESI
00acf846: JL 0x00acf8cd
00acf84c: CMP ESI, dword ptr [ECX + 0x178]
00acf852: JGE 0x00acf8cd
00acf854: MOVSX EDX, byte ptr [EAX + 0x2]
00acf858: CMP EDX, dword ptr [ECX + 0x17c]
00acf85e: JL 0x00acf8cd
00acf860: CMP EDX, dword ptr [ECX + 0x180]
00acf866: JG 0x00acf8cd
00acf868: MOV DX, word ptr [EAX]
00acf86b: MOV AL, byte ptr [EAX + 0x2]
00acf86e: MOV word ptr [ESP + 0xc], DX
00acf873: PUSH 0x0
00acf875: LEA EDX, [ESP + 0x10]
00acf879: PUSH EDX
00acf87a: MOV byte ptr [ESP + 0x16], AL
00acf87e: MOV byte ptr [ESP + 0x17], 0xf
00acf883: CALL 0x00ab67d0
00acf888: MOV ESI, EAX
00acf88a: PUSH 0x3
00acf88c: PUSH ESI
00acf88d: CALL 0x00afe300
00acf892: ADD ESP, 0x8
00acf895: TEST AL, AL
00acf897: JZ 0x00acf8a8
00acf899: MOV EAX, dword ptr [ESP + 0x14]
00acf89d: TEST EAX, EAX
00acf89f: JZ 0x00acf8a4
00acf8a1: MOV byte ptr [EAX], 0x0
00acf8a4: MOV AL, 0x1
00acf8a6: POP ESI
00acf8a7: RET
00acf8a8: CMP byte ptr [ESP + 0x10], 0x0
00acf8ad: JZ 0x00acf8cd
00acf8af: PUSH 0x6
00acf8b1: PUSH ESI
00acf8b2: CALL 0x00afe300
00acf8b7: ADD ESP, 0x8
00acf8ba: TEST AL, AL
00acf8bc: JZ 0x00acf8cd
00acf8be: MOV EAX, dword ptr [ESP + 0x14]
00acf8c2: TEST EAX, EAX
00acf8c4: JZ 0x00acf8c9
00acf8c6: MOV byte ptr [EAX], 0x1
00acf8c9: MOV AL, 0x1
00acf8cb: POP ESI
00acf8cc: RET
00acf8cd: XOR AL, AL
00acf8cf: POP ESI
00acf8d0: RET

Total instructions: 59