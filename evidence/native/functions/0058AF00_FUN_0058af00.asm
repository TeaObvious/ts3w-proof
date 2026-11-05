# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete contiguous owned Ghidra function body.
Entry 0058af00; current database symbol FUN_0058af00; envelope [0058af00,0058af48), 72 bytes.
Analyst descriptive alias: Config_ReadIntegerOrFallback (not a recovered symbol and not a database rename). EC0FC0 calls with section,key,existing UInt32-ref value. Missing service or false AL from58C5E0 returns third stackword at58AF40; found text passes through wide integer conversion then58ADE0. No claim about the unexpanded conversion/override/parser or case semantics.
Paired pseudocode: 0058AF00_FUN_0058af00.c

ORIGINAL BYTES
0058af00: 51 56 57 e8 c8 0c 00 00 85 c0 74 34 8b 74 24 14 
0058af10: 8b 7c 24 10 8d 4c 24 08 51 56 57 8b c8 e8 be 16 
0058af20: 00 00 84 c0 74 1a 8b 54 24 08 52 ff 15 b8 64 f9 
0058af30: 00 50 56 57 e8 a7 fe ff ff 83 c4 10 5f 5e 59 c3 
0058af40: 8b 44 24 18 5f 5e 59 c3 

OWNED GHIDRA LISTING
0058af00: PUSH ECX
0058af01: PUSH ESI
0058af02: PUSH EDI
0058af03: CALL 0x0058bbd0
0058af08: TEST EAX,EAX
0058af0a: JZ 0x0058af40
0058af0c: MOV ESI,dword ptr [ESP + 0x14]
0058af10: MOV EDI,dword ptr [ESP + 0x10]
0058af14: LEA ECX,[ESP + 0x8]
0058af18: PUSH ECX
0058af19: PUSH ESI
0058af1a: PUSH EDI
0058af1b: MOV ECX,EAX
0058af1d: CALL 0x0058c5e0
0058af22: TEST AL,AL
0058af24: JZ 0x0058af40
0058af26: MOV EDX,dword ptr [ESP + 0x8]
0058af2a: PUSH EDX
0058af2b: CALL dword ptr [0x00f964b8]
0058af31: PUSH EAX
0058af32: PUSH ESI
0058af33: PUSH EDI
0058af34: CALL 0x0058ade0
0058af39: ADD ESP,0x10
0058af3c: POP EDI
0058af3d: POP ESI
0058af3e: POP ECX
0058af3f: RET
0058af40: MOV EAX,dword ptr [ESP + 0x18]
0058af44: POP EDI
0058af45: POP ESI
0058af46: POP ECX
0058af47: RET

Owned instructions: 33
