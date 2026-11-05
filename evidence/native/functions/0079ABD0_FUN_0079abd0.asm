# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing ownedbody[0079abd0,0079abf3] 36bytes/14instructions. Readonly metadata/Listing; all starts/bytes PEchecked. No new function, reanalysis, type/body/prototype repair, annotation mutation, DBsave or originalbytechange.

ECXsamplerdatabase; unsigned onebased ordinal stackwordRET4/EAXpointer or0. Ordinal0 returns0; compare ordinal-1 unsigned toSAR2(end-begin), outofrange0; otherwise vector[ordinal-1]. Not zero-based/pass-name/key lookup.

ORIGINAL BYTES
0079abd0: 8b 44 24 04 85 c0 75 05 33 c0 c2 04 00 8b 11 8b
0079abe0: 49 04 2b ca 83 e8 01 c1 f9 02 3b c1 73 ea 8b 04
0079abf0: 82 c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0079abd0
Entry Point: 0079abd0

0079abd0: MOV EAX, dword ptr [ESP + 0x4]
0079abd4: TEST EAX, EAX
0079abd6: JNZ 0x0079abdd
0079abd8: XOR EAX, EAX
0079abda: RET 0x4
0079abdd: MOV EDX, dword ptr [ECX]
0079abdf: MOV ECX, dword ptr [ECX + 0x4]
0079abe2: SUB ECX, EDX
0079abe4: SUB EAX, 0x1
0079abe7: SAR ECX, 0x2
0079abea: CMP EAX, ECX
0079abec: JNC 0x0079abd8
0079abee: MOV EAX, dword ptr [EDX + EAX*0x4]
0079abf1: RET 0x4

Total instructions: 14