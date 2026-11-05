# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing ownedbody[0079a590,0079a5ab] 28bytes/11instructions. Readonly metadata/Listing; all starts/bytes PEchecked. No new function, reanalysis, type/body/prototype repair, annotation mutation, DBsave or originalbytechange.

ECXsamplerpreset with pairpointer0,count4; stackdevice,stage RET8 void. Nonzero count forwards allpairs to60F0A0. Applied by79E7E0 only on passidentitychange; dynamic samplertriples are earlier/everydraw. Selected Phongpreset1 omitsstate9, so cannot overwriteSpecStyle9.

ORIGINAL BYTES
0079a590: 8b 41 04 85 c0 74 12 50 8b 01 8b 4c 24 0c 50 51
0079a5a0: 8b 4c 24 10 e8 f7 4a e7 ff c2 08 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_0079a590
Entry Point: 0079a590

0079a590: MOV EAX, dword ptr [ECX + 0x4]
0079a593: TEST EAX, EAX
0079a595: JZ 0x0079a5a9
0079a597: PUSH EAX
0079a598: MOV EAX, dword ptr [ECX]
0079a59a: MOV ECX, dword ptr [ESP + 0xc]
0079a59e: PUSH EAX
0079a59f: PUSH ECX
0079a5a0: MOV ECX, dword ptr [ESP + 0x10]
0079a5a4: CALL 0x0060f0a0
0079a5a9: RET 0x8

Total instructions: 11