# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing Ghidra ownedbody[0080d610,0080d64f]; 64bytes/24instructions. Readonly metadata/Listing and all starts/bytes PEchecked. No new function/prototype/body repair, analysis, annotation mutation, save or original-byte change.

Physical ECXpoint, parentObject stackword/RET4; invalid parent/Animation/binding returnsFFFFFFFF. Gets parent Animation via11DD484 and component+8 virtual+20, then tail575C80(binding+28, point+10). Moves point+10 into the stack argument. Return is resolved model bone index; current C/stdcall omits pointECX and its identifier input. No DB prototype repair.

ORIGINAL BYTES
0080d610: 56 8b f1 8b 4c 24 08 85 c9 74 2e a1 84 d4 1d 01
0080d620: 50 e8 3a 6c 12 00 85 c0 74 1f 8b 50 08 8d 48 08
0080d630: 8b 42 20 ff d0 85 c0 74 10 8b 4e 10 5e 89 4c 24
0080d640: 04 8d 48 28 e9 37 86 d6 ff 83 c8 ff 5e c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0080d610
Entry Point: 0080d610

0080d610: PUSH ESI
0080d611: MOV ESI, ECX
0080d613: MOV ECX, dword ptr [ESP + 0x8]
0080d617: TEST ECX, ECX
0080d619: JZ 0x0080d649
0080d61b: MOV EAX, [0x011dd484]
0080d620: PUSH EAX
0080d621: CALL 0x00934260
0080d626: TEST EAX, EAX
0080d628: JZ 0x0080d649
0080d62a: MOV EDX, dword ptr [EAX + 0x8]
0080d62d: LEA ECX, [EAX + 0x8]
0080d630: MOV EAX, dword ptr [EDX + 0x20]
0080d633: CALL EAX
0080d635: TEST EAX, EAX
0080d637: JZ 0x0080d649
0080d639: MOV ECX, dword ptr [ESI + 0x10]
0080d63c: POP ESI
0080d63d: MOV dword ptr [ESP + 0x4], ECX
0080d641: LEA ECX, [EAX + 0x28]
0080d644: JMP 0x00575c80
0080d649: OR EAX, 0xffffffff
0080d64c: POP ESI
0080d64d: RET 0x4

Total instructions: 24