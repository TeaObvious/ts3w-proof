# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

PC1.67 original; explicitly selected /TS3W.exe. Existing Ghidra owned body [00a62630,00a626e5], 182 bytes/65 instructions. Pristine PE and independent decode match all owned instruction starts. No body/prototype repair, annotation, mutator, reanalysis or save.

cdecl type/point/outPreset three stack words/plainRET, AL only. Real table A626E8 maps2 floor mode1,3 wall; wall call physically forwards output pointer omitted by stored wall C. Other type dispatches are distinct.

ORIGINAL BYTES
00a62630: 8b 44 24 04 83 c0 fe 83 f8 07 0f 87 a3 00 00 00
00a62640: ff 24 85 e8 26 a6 00 8b 44 24 0c 8b 4c 24 08 50
00a62650: 6a 01 51 e8 38 f2 ff ff 83 c4 0c c3 8b 54 24 0c
00a62660: 8b 44 24 08 52 50 e8 75 f3 ff ff 83 c4 08 c3 8b
00a62670: 4c 24 0c 8b 54 24 08 51 52 e8 72 f4 ff ff 83 c4
00a62680: 08 c3 8b 44 24 0c 8b 4c 24 08 50 51 e8 bf f5 ff
00a62690: ff 83 c4 08 c3 8b 54 24 0c 8b 44 24 08 52 50 e8
00a626a0: bc f6 ff ff 83 c4 08 c3 8b 4c 24 0c 8b 54 24 08
00a626b0: 51 52 e8 49 f7 ff ff 83 c4 08 c3 8b 44 24 0c 8b
00a626c0: 4c 24 08 50 51 e8 56 fe ff ff 83 c4 08 c3 8b 54
00a626d0: 24 0c 8b 44 24 08 52 6a 00 50 e8 b1 f1 ff ff 83
00a626e0: c4 0c c3 32 c0 c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00a62630
Entry Point: 00a62630

00a62630: MOV EAX, dword ptr [ESP + 0x4]
00a62634: ADD EAX, -0x2
00a62637: CMP EAX, 0x7
00a6263a: JA 0x00a626e3
00a62640: JMP dword ptr [EAX*0x4 + 0xa626e8]
00a62647: MOV EAX, dword ptr [ESP + 0xc]
00a6264b: MOV ECX, dword ptr [ESP + 0x8]
00a6264f: PUSH EAX
00a62650: PUSH 0x1
00a62652: PUSH ECX
00a62653: CALL 0x00a61890
00a62658: ADD ESP, 0xc
00a6265b: RET
00a6265c: MOV EDX, dword ptr [ESP + 0xc]
00a62660: MOV EAX, dword ptr [ESP + 0x8]
00a62664: PUSH EDX
00a62665: PUSH EAX
00a62666: CALL 0x00a619e0
00a6266b: ADD ESP, 0x8
00a6266e: RET
00a6266f: MOV ECX, dword ptr [ESP + 0xc]
00a62673: MOV EDX, dword ptr [ESP + 0x8]
00a62677: PUSH ECX
00a62678: PUSH EDX
00a62679: CALL 0x00a61af0
00a6267e: ADD ESP, 0x8
00a62681: RET
00a62682: MOV EAX, dword ptr [ESP + 0xc]
00a62686: MOV ECX, dword ptr [ESP + 0x8]
00a6268a: PUSH EAX
00a6268b: PUSH ECX
00a6268c: CALL 0x00a61c50
00a62691: ADD ESP, 0x8
00a62694: RET
00a62695: MOV EDX, dword ptr [ESP + 0xc]
00a62699: MOV EAX, dword ptr [ESP + 0x8]
00a6269d: PUSH EDX
00a6269e: PUSH EAX
00a6269f: CALL 0x00a61d60
00a626a4: ADD ESP, 0x8
00a626a7: RET
00a626a8: MOV ECX, dword ptr [ESP + 0xc]
00a626ac: MOV EDX, dword ptr [ESP + 0x8]
00a626b0: PUSH ECX
00a626b1: PUSH EDX
00a626b2: CALL 0x00a61e00
00a626b7: ADD ESP, 0x8
00a626ba: RET
00a626bb: MOV EAX, dword ptr [ESP + 0xc]
00a626bf: MOV ECX, dword ptr [ESP + 0x8]
00a626c3: PUSH EAX
00a626c4: PUSH ECX
00a626c5: CALL 0x00a62520
00a626ca: ADD ESP, 0x8
00a626cd: RET
00a626ce: MOV EDX, dword ptr [ESP + 0xc]
00a626d2: MOV EAX, dword ptr [ESP + 0x8]
00a626d6: PUSH EDX
00a626d7: PUSH 0x0
00a626d9: PUSH EAX
00a626da: CALL 0x00a61890
00a626df: ADD ESP, 0xc
00a626e2: RET
00a626e3: XOR AL, AL
00a626e5: RET

Total instructions: 65