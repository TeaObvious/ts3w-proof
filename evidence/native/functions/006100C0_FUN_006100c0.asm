# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe complete existing ownedbody[006100c0,006100e8] 41bytes/13instructions. Readonly metadata/Listing; all starts/bytes PEchecked. No new function, reanalysis, type/body/prototype repair, annotation mutation, DBsave or originalbytechange.

ECXrenderDevice; stage/state/rawDWORD three stackwordsRET0C void. Packs one pair(state,value), passes stage,pairptr,count1 to60F0A0. No float conversion, valueclamp, returnstatus or drawreadiness here.

ORIGINAL BYTES
006100c0: 83 ec 08 8b 44 24 10 8b 54 24 14 89 04 24 6a 01
006100d0: 8d 44 24 04 89 54 24 08 8b 54 24 10 50 52 e8 bd
006100e0: ef ff ff 83 c4 08 c2 0c 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_006100c0
Entry Point: 006100c0

006100c0: SUB ESP, 0x8
006100c3: MOV EAX, dword ptr [ESP + 0x10]
006100c7: MOV EDX, dword ptr [ESP + 0x14]
006100cb: MOV dword ptr [ESP], EAX
006100ce: PUSH 0x1
006100d0: LEA EAX, [ESP + 0x4]
006100d4: MOV dword ptr [ESP + 0x8], EDX
006100d8: MOV EDX, dword ptr [ESP + 0x10]
006100dc: PUSH EAX
006100dd: PUSH EDX
006100de: CALL 0x0060f0a0
006100e3: ADD ESP, 0x8
006100e6: RET 0xc

Total instructions: 13