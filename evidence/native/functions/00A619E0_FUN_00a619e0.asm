# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a619e0,00a61ae3], 260 bytes/95 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

cdecl physically point plus output-pointer TWO WORDS/plainRET; stored C one formal omits second output at caller ESP+8 (entry, later+1C after SUB10/PUSHESI). B10B60 resolves current lot/locator; Partition manager lot+298, B47DF0/C5B860 can remap viaB47D40, B47D20 chooses B4ABD0 vsB49ED0. Only nonzero key lane+8 enters broker virtual0C. Queried interface05DE1935 pointer written to actual output, AL1. Broker ALfalse returns AL0 without release; successful broker followed by failed interface query releases virtual4 before AL0. A successful broker returning a null base enters the release branch without a further null guard, an unresolved broker invariant; decompiler ppiVar8/local_10 alias is not ABI evidence. Full manager/broker/ref failure boundaries remain open.

ORIGINAL BYTES
00a619e0: 83 ec 10 e8 b8 e8 0c 00 e8 a3 79 d0 ff 8b 54 24
00a619f0: 14 0c ff 88 44 24 08 88 44 24 09 88 44 24 0b 88
00a61a00: 44 24 0c 8d 44 24 08 50 8d 4c 24 08 51 52 c6 44
00a61a10: 24 16 00 c6 44 24 19 00 e8 43 f1 0a 00 83 c4 0c
00a61a20: 84 c0 75 04 83 c4 10 c3 8b 44 24 04 56 8b b0 98
00a61a30: 02 00 00 6a 00 8d 4c 24 10 51 8b ce e8 af 63 0e
00a61a40: 00 50 e8 19 9e 1f 00 83 c4 04 84 c0 74 0f 8d 54
00a61a50: 24 0c 52 8b c2 50 8b ce e8 e3 62 0e 00 8d 4c 24
00a61a60: 0c 51 8b ce e8 b7 62 0e 00 84 c0 8b ce 74 0c 8d
00a61a70: 54 24 0c 52 e8 57 91 0e 00 eb 0a 8d 44 24 0c 50
00a61a80: e8 4b 84 0e 00 8b f0 83 7e 08 00 74 43 e8 ee e3
00a61a90: a4 ff 8b 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d
00a61aa0: 4c 24 14 51 56 8b c8 ff d2 84 c0 74 23 8b 4c 24
00a61ab0: 04 85 c9 74 14 8b 01 8b 50 0c 68 35 19 de 05 ff
00a61ac0: d2 85 c0 75 12 8b 4c 24 04 8b 01 8b 50 04 ff d2
00a61ad0: 32 c0 5e 83 c4 10 c3 8b 4c 24 1c 89 01 b0 01 5e
00a61ae0: 83 c4 10 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a619e0
Entry Point: 00a619e0

00a619e0: SUB ESP, 0x10
00a619e3: CALL 0x00b302a0
00a619e8: CALL 0x00769390
00a619ed: MOV EDX, dword ptr [ESP + 0x14]
00a619f1: OR AL, 0xff
00a619f3: MOV byte ptr [ESP + 0x8], AL
00a619f7: MOV byte ptr [ESP + 0x9], AL
00a619fb: MOV byte ptr [ESP + 0xb], AL
00a619ff: MOV byte ptr [ESP + 0xc], AL
00a61a03: LEA EAX, [ESP + 0x8]
00a61a07: PUSH EAX
00a61a08: LEA ECX, [ESP + 0x8]
00a61a0c: PUSH ECX
00a61a0d: PUSH EDX
00a61a0e: MOV byte ptr [ESP + 0x16], 0x0
00a61a13: MOV byte ptr [ESP + 0x19], 0x0
00a61a18: CALL 0x00b10b60
00a61a1d: ADD ESP, 0xc
00a61a20: TEST AL, AL
00a61a22: JNZ 0x00a61a28
00a61a24: ADD ESP, 0x10
00a61a27: RET
00a61a28: MOV EAX, dword ptr [ESP + 0x4]
00a61a2c: PUSH ESI
00a61a2d: MOV ESI, dword ptr [EAX + 0x298]
00a61a33: PUSH 0x0
00a61a35: LEA ECX, [ESP + 0x10]
00a61a39: PUSH ECX
00a61a3a: MOV ECX, ESI
00a61a3c: CALL 0x00b47df0
00a61a41: PUSH EAX
00a61a42: CALL 0x00c5b860
00a61a47: ADD ESP, 0x4
00a61a4a: TEST AL, AL
00a61a4c: JZ 0x00a61a5d
00a61a4e: LEA EDX, [ESP + 0xc]
00a61a52: PUSH EDX
00a61a53: MOV EAX, EDX
00a61a55: PUSH EAX
00a61a56: MOV ECX, ESI
00a61a58: CALL 0x00b47d40
00a61a5d: LEA ECX, [ESP + 0xc]
00a61a61: PUSH ECX
00a61a62: MOV ECX, ESI
00a61a64: CALL 0x00b47d20
00a61a69: TEST AL, AL
00a61a6b: MOV ECX, ESI
00a61a6d: JZ 0x00a61a7b
00a61a6f: LEA EDX, [ESP + 0xc]
00a61a73: PUSH EDX
00a61a74: CALL 0x00b4abd0
00a61a79: JMP 0x00a61a85
00a61a7b: LEA EAX, [ESP + 0xc]
00a61a7f: PUSH EAX
00a61a80: CALL 0x00b49ed0
00a61a85: MOV ESI, EAX
00a61a87: CMP dword ptr [ESI + 0x8], 0x0
00a61a8b: JZ 0x00a61ad0
00a61a8d: CALL 0x004afe80
00a61a92: MOV EDX, dword ptr [EAX]
00a61a94: MOV EDX, dword ptr [EDX + 0xc]
00a61a97: PUSH 0x0
00a61a99: PUSH 0x0
00a61a9b: PUSH 0x0
00a61a9d: PUSH 0x0
00a61a9f: LEA ECX, [ESP + 0x14]
00a61aa3: PUSH ECX
00a61aa4: PUSH ESI
00a61aa5: MOV ECX, EAX
00a61aa7: CALL EDX
00a61aa9: TEST AL, AL
00a61aab: JZ 0x00a61ad0
00a61aad: MOV ECX, dword ptr [ESP + 0x4]
00a61ab1: TEST ECX, ECX
00a61ab3: JZ 0x00a61ac9
00a61ab5: MOV EAX, dword ptr [ECX]
00a61ab7: MOV EDX, dword ptr [EAX + 0xc]
00a61aba: PUSH 0x5de1935
00a61abf: CALL EDX
00a61ac1: TEST EAX, EAX
00a61ac3: JNZ 0x00a61ad7
00a61ac5: MOV ECX, dword ptr [ESP + 0x4]
00a61ac9: MOV EAX, dword ptr [ECX]
00a61acb: MOV EDX, dword ptr [EAX + 0x4]
00a61ace: CALL EDX
00a61ad0: XOR AL, AL
00a61ad2: POP ESI
00a61ad3: ADD ESP, 0x10
00a61ad6: RET
00a61ad7: MOV ECX, dword ptr [ESP + 0x1c]
00a61adb: MOV dword ptr [ECX], EAX
00a61add: MOV AL, 0x1
00a61adf: POP ESI
00a61ae0: ADD ESP, 0x10
00a61ae3: RET

Total instructions: 95