# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[00959f10,00959f9e]; 143bytes/66instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXchildTransform four stackwords parentObject, rawBoneIdentifier, localOffsetPointer, occupancyBYTE RET10. Parent/Slots missing3; find950960(tail950200), append951BC0 only if absent; failed append8, point virtual+8(1) null2003. Calls958D90 with explicitbone sixthword1 (ordinary959E90 passes0). C prototype conflates rawidentifier andoffset/missesword; physical PUSHasm authoritative.

ORIGINAL BYTES
00959f10: 53 8b 5c 24 08 85 db 55 56 8b e9 74 13 a1 14 a1
00959f20: 1e 01 50 8b cb e8 36 a3 fd ff 8b f0 85 f6 75 0b
00959f30: 5e 5d b8 03 00 00 00 5b c2 10 00 57 8b 7c 24 18
00959f40: 57 8b ce e8 18 6a ff ff 85 c0 75 18 57 8b ce e8
00959f50: 6c 7c ff ff 85 c0 75 0c 5f 5e 5d b8 08 00 00 00
00959f60: 5b c2 10 00 8b 10 8b c8 8b 42 08 6a 01 ff d0 85
00959f70: c0 75 0c 5f 5e 5d b8 d3 07 00 00 5b c2 10 00 8b
00959f80: 4c 24 20 8b 54 24 1c 6a 00 6a 01 51 6a 00 52 50
00959f90: 53 8b cd e8 f8 ed ff ff 5f 5e 5d 5b c2 10 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00959f10
Entry Point: 00959f10

00959f10: PUSH EBX
00959f11: MOV EBX, dword ptr [ESP + 0x8]
00959f15: TEST EBX, EBX
00959f17: PUSH EBP
00959f18: PUSH ESI
00959f19: MOV EBP, ECX
00959f1b: JZ 0x00959f30
00959f1d: MOV EAX, [0x011ea114]
00959f22: PUSH EAX
00959f23: MOV ECX, EBX
00959f25: CALL 0x00934260
00959f2a: MOV ESI, EAX
00959f2c: TEST ESI, ESI
00959f2e: JNZ 0x00959f3b
00959f30: POP ESI
00959f31: POP EBP
00959f32: MOV EAX, 0x3
00959f37: POP EBX
00959f38: RET 0x10
00959f3b: PUSH EDI
00959f3c: MOV EDI, dword ptr [ESP + 0x18]
00959f40: PUSH EDI
00959f41: MOV ECX, ESI
00959f43: CALL 0x00950960
00959f48: TEST EAX, EAX
00959f4a: JNZ 0x00959f64
00959f4c: PUSH EDI
00959f4d: MOV ECX, ESI
00959f4f: CALL 0x00951bc0
00959f54: TEST EAX, EAX
00959f56: JNZ 0x00959f64
00959f58: POP EDI
00959f59: POP ESI
00959f5a: POP EBP
00959f5b: MOV EAX, 0x8
00959f60: POP EBX
00959f61: RET 0x10
00959f64: MOV EDX, dword ptr [EAX]
00959f66: MOV ECX, EAX
00959f68: MOV EAX, dword ptr [EDX + 0x8]
00959f6b: PUSH 0x1
00959f6d: CALL EAX
00959f6f: TEST EAX, EAX
00959f71: JNZ 0x00959f7f
00959f73: POP EDI
00959f74: POP ESI
00959f75: POP EBP
00959f76: MOV EAX, 0x7d3
00959f7b: POP EBX
00959f7c: RET 0x10
00959f7f: MOV ECX, dword ptr [ESP + 0x20]
00959f83: MOV EDX, dword ptr [ESP + 0x1c]
00959f87: PUSH 0x0
00959f89: PUSH 0x1
00959f8b: PUSH ECX
00959f8c: PUSH 0x0
00959f8e: PUSH EDX
00959f8f: PUSH EAX
00959f90: PUSH EBX
00959f91: MOV ECX, EBP
00959f93: CALL 0x00958d90
00959f98: POP EDI
00959f99: POP ESI
00959f9a: POP EBP
00959f9b: POP EBX
00959f9c: RET 0x10

Total instructions: 66