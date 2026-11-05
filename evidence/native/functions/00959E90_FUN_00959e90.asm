# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[00959e90,00959f0e]; 127bytes/56instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

ECXchildTransform four stackwords parentObject, rawSlotName, localOffsetPointer, occupancyBYTE RET10; actual C omits a word/mislabels name as offset. Null parent/noSlots returns3; slot readiness9500F0 false, firstName950950 missing or point virtual+8(1) absent returns4. Passes seven words parent,point,offset,0,occupancy,0,0 into958D90. Ordinary76E650 uses THIS frontend, not959F10. No generalized rollback/status equivalence inferred.

ORIGINAL BYTES
00959e90: 53 56 57 8b 7c 24 10 85 ff 8b d9 74 13 a1 14 a1
00959ea0: 1e 01 50 8b cf e8 b6 a3 fd ff 8b f0 85 f6 75 0b
00959eb0: 5f 5e b8 03 00 00 00 5b c2 10 00 8b ce e8 2e 62
00959ec0: ff ff 85 c0 75 0b 5f 5e b8 04 00 00 00 5b c2 10
00959ed0: 00 8b 4c 24 14 51 8b ce e8 73 6a ff ff 85 c0 74
00959ee0: e5 8b 10 8b c8 8b 42 08 6a 01 ff d0 85 c0 74 d6
00959ef0: 8b 4c 24 1c 8b 54 24 18 6a 00 6a 00 51 6a 00 52
00959f00: 50 57 8b cb e8 87 ee ff ff 5f 5e 5b c2 10 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00959e90
Entry Point: 00959e90

00959e90: PUSH EBX
00959e91: PUSH ESI
00959e92: PUSH EDI
00959e93: MOV EDI, dword ptr [ESP + 0x10]
00959e97: TEST EDI, EDI
00959e99: MOV EBX, ECX
00959e9b: JZ 0x00959eb0
00959e9d: MOV EAX, [0x011ea114]
00959ea2: PUSH EAX
00959ea3: MOV ECX, EDI
00959ea5: CALL 0x00934260
00959eaa: MOV ESI, EAX
00959eac: TEST ESI, ESI
00959eae: JNZ 0x00959ebb
00959eb0: POP EDI
00959eb1: POP ESI
00959eb2: MOV EAX, 0x3
00959eb7: POP EBX
00959eb8: RET 0x10
00959ebb: MOV ECX, ESI
00959ebd: CALL 0x009500f0
00959ec2: TEST EAX, EAX
00959ec4: JNZ 0x00959ed1
00959ec6: POP EDI
00959ec7: POP ESI
00959ec8: MOV EAX, 0x4
00959ecd: POP EBX
00959ece: RET 0x10
00959ed1: MOV ECX, dword ptr [ESP + 0x14]
00959ed5: PUSH ECX
00959ed6: MOV ECX, ESI
00959ed8: CALL 0x00950950
00959edd: TEST EAX, EAX
00959edf: JZ 0x00959ec6
00959ee1: MOV EDX, dword ptr [EAX]
00959ee3: MOV ECX, EAX
00959ee5: MOV EAX, dword ptr [EDX + 0x8]
00959ee8: PUSH 0x1
00959eea: CALL EAX
00959eec: TEST EAX, EAX
00959eee: JZ 0x00959ec6
00959ef0: MOV ECX, dword ptr [ESP + 0x1c]
00959ef4: MOV EDX, dword ptr [ESP + 0x18]
00959ef8: PUSH 0x0
00959efa: PUSH 0x0
00959efc: PUSH ECX
00959efd: PUSH 0x0
00959eff: PUSH EDX
00959f00: PUSH EAX
00959f01: PUSH EDI
00959f02: MOV ECX, EBX
00959f04: CALL 0x00958d90
00959f09: POP EDI
00959f0a: POP ESI
00959f0b: POP EBX
00959f0c: RET 0x10

Total instructions: 56