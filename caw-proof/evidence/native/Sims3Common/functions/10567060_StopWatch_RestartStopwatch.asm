# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567060 (StopWatch_RestartStopwatch)
Paired Ghidra pseudocode: 10567060_StopWatch_RestartStopwatch.c
Window: [0x10567060, 0x105670a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105670a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567060: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10567070: 10 75 1e e8 a8 40 ff ff 8b 10 8b c8 8b 82 cc 00
10567080: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 bf 52 aa
10567090: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567060 <.text+0x566060>:
10567060:	56                                              	push   esi
10567061:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567065:	8b c6                                           	mov    eax,esi
10567067:	25 00 00 00 ff                                  	and    eax,0xff000000
1056706c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10567071:	75 1e                                           	jne    0x10567091
10567073:	e8 a8 40 ff ff                                  	call   0x1055b120
10567078:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056707a:	8b c8                                           	mov    ecx,eax
1056707c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567082:	56                                              	push   esi
10567083:	ff d0                                           	call   eax
10567085:	85 c0                                           	test   eax,eax
10567087:	74 08                                           	je     0x10567091
10567089:	8b c8                                           	mov    ecx,eax
1056708b:	5e                                              	pop    esi
1056708c:	e9 bf 52 aa ff                                  	jmp    0x1000c350
10567091:	5e                                              	pop    esi
10567092:	c3                                              	ret
10567093:	cc                                              	int3
10567094:	cc                                              	int3
10567095:	cc                                              	int3
10567096:	cc                                              	int3
10567097:	cc                                              	int3
10567098:	cc                                              	int3
10567099:	cc                                              	int3
1056709a:	cc                                              	int3
1056709b:	cc                                              	int3
1056709c:	cc                                              	int3
1056709d:	cc                                              	int3
1056709e:	cc                                              	int3
1056709f:	cc                                              	int3
