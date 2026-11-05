# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007fd450 (SACS_ResolveStateTextCache)
Paired Ghidra pseudocode: 007FD450_SACS_ResolveStateTextCache.c
Window: [0x007fd450, 0x007fd480) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007fd480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007fd450: 56 8b f1 83 7e 2c 00 75 13 8b 4e 34 85 c9 74 0c
007fd460: 8b 46 28 50 e8 17 fe ff ff 89 46 2c 8b 46 2c 5e
007fd470: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007fd450 <.text+0x3fc450>:
  7fd450:	56                                              	push   esi
  7fd451:	8b f1                                           	mov    esi,ecx
  7fd453:	83 7e 2c 00                                     	cmp    DWORD PTR [esi+0x2c],0x0
  7fd457:	75 13                                           	jne    0x7fd46c
  7fd459:	8b 4e 34                                        	mov    ecx,DWORD PTR [esi+0x34]
  7fd45c:	85 c9                                           	test   ecx,ecx
  7fd45e:	74 0c                                           	je     0x7fd46c
  7fd460:	8b 46 28                                        	mov    eax,DWORD PTR [esi+0x28]
  7fd463:	50                                              	push   eax
  7fd464:	e8 17 fe ff ff                                  	call   0x7fd280
  7fd469:	89 46 2c                                        	mov    DWORD PTR [esi+0x2c],eax
  7fd46c:	8b 46 2c                                        	mov    eax,DWORD PTR [esi+0x2c]
  7fd46f:	5e                                              	pop    esi
  7fd470:	c3                                              	ret
  7fd471:	cc                                              	int3
  7fd472:	cc                                              	int3
  7fd473:	cc                                              	int3
  7fd474:	cc                                              	int3
  7fd475:	cc                                              	int3
  7fd476:	cc                                              	int3
  7fd477:	cc                                              	int3
  7fd478:	cc                                              	int3
  7fd479:	cc                                              	int3
  7fd47a:	cc                                              	int3
  7fd47b:	cc                                              	int3
  7fd47c:	cc                                              	int3
  7fd47d:	cc                                              	int3
  7fd47e:	cc                                              	int3
  7fd47f:	cc                                              	int3
