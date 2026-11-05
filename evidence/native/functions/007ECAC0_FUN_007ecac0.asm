# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing owned body[007ecac0,007ecaee], 47bytes/12instructions. Readonly GhidrAssist Listing/metadata plus original PE byte/start check. No database/body/prototype repair, analysis, annotation save or original-byte mutation.

ECX receiver, two raw settings stackwords, RET8; EAX returns receiver. Stores primary vtable101E600, secondary101E5E8, reference field8=0, byteC=0, settings10/14. Callback primary+18 points to undefined entry7ECAF0; constructor does not itself attach or refresh a window.

ORIGINAL BYTES
007ecac0: 8b 54 24 08 8b c1 c7 40 04 fc b1 fb 00 33 c9 89
007ecad0: 48 08 88 48 0c 8b 4c 24 04 c7 00 00 e6 01 01 c7
007ecae0: 40 04 e8 e5 01 01 89 48 10 89 50 14 c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_007ecac0
Entry Point: 007ecac0

007ecac0: MOV EDX, dword ptr [ESP + 0x8]
007ecac4: MOV EAX, ECX
007ecac6: MOV dword ptr [EAX + 0x4], 0xfbb1fc
007ecacd: XOR ECX, ECX
007ecacf: MOV dword ptr [EAX + 0x8], ECX
007ecad2: MOV byte ptr [EAX + 0xc], CL
007ecad5: MOV ECX, dword ptr [ESP + 0x4]
007ecad9: MOV dword ptr [EAX], 0x101e600
007ecadf: MOV dword ptr [EAX + 0x4], 0x101e5e8
007ecae6: MOV dword ptr [EAX + 0x10], ECX
007ecae9: MOV dword ptr [EAX + 0x14], EDX
007ecaec: RET 0x8

Total instructions: 12