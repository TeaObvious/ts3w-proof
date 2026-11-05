# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00abd080 (DirectTargetOf_World_World_SetTestingCheatsEnabledImpl)
Paired Ghidra pseudocode: 00ABD080_DirectTargetOf_World_World_SetTestingCheatsEnabledImpl.c
Window: [0x00abd080, 0x00abd0c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00abd0c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00abd080: 8a 44 24 04 38 05 9b c4 1e 01 74 2f 56 8b 35 c4
00abd090: db 1e 01 85 f6 a2 9b c4 1e 01 74 1e 6a 00 8b ce
00abd0a0: e8 bb 24 1a 00 52 50 8b ce e8 62 57 1a 00 85 c0
00abd0b0: 74 08 8b c8 5e e9 a6 f0 ff ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00abd080 <.text+0x6bc080>:
  abd080:	8a 44 24 04                                     	mov    al,BYTE PTR [esp+0x4]
  abd084:	38 05 9b c4 1e 01                               	cmp    BYTE PTR ds:0x11ec49b,al
  abd08a:	74 2f                                           	je     0xabd0bb
  abd08c:	56                                              	push   esi
  abd08d:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  abd093:	85 f6                                           	test   esi,esi
  abd095:	a2 9b c4 1e 01                                  	mov    ds:0x11ec49b,al
  abd09a:	74 1e                                           	je     0xabd0ba
  abd09c:	6a 00                                           	push   0x0
  abd09e:	8b ce                                           	mov    ecx,esi
  abd0a0:	e8 bb 24 1a 00                                  	call   0xc5f560
  abd0a5:	52                                              	push   edx
  abd0a6:	50                                              	push   eax
  abd0a7:	8b ce                                           	mov    ecx,esi
  abd0a9:	e8 62 57 1a 00                                  	call   0xc62810
  abd0ae:	85 c0                                           	test   eax,eax
  abd0b0:	74 08                                           	je     0xabd0ba
  abd0b2:	8b c8                                           	mov    ecx,eax
  abd0b4:	5e                                              	pop    esi
  abd0b5:	e9 a6 f0 ff ff                                  	jmp    0xabc160
  abd0ba:	5e                                              	pop    esi
  abd0bb:	c3                                              	ret
  abd0bc:	cc                                              	int3
  abd0bd:	cc                                              	int3
  abd0be:	cc                                              	int3
  abd0bf:	cc                                              	int3
