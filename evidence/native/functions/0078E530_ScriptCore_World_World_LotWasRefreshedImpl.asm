# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078e530 (ScriptCore.World::World_LotWasRefreshedImpl)
Paired Ghidra pseudocode: 0078E530_ScriptCore_World_World_LotWasRefreshedImpl.c
Window: [0x0078e530, 0x0078e580) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078e580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078e530: 8b 0d c4 db 1e 01 85 c9 56 57 74 36 8b 81 b0 00
0078e540: 00 00 85 c0 8b 54 24 10 8b 74 24 0c 74 17 8b 78
0078e550: 48 3b fe 75 10 8b 78 4c 3b fa 75 09 8a 80 9c 00
0078e560: 00 00 5f 5e c3 6a 00 52 56 e8 a2 42 4d 00 85 c0
0078e570: 75 ea 5f 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078e530 <.text+0x38d530>:
  78e530:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78e536:	85 c9                                           	test   ecx,ecx
  78e538:	56                                              	push   esi
  78e539:	57                                              	push   edi
  78e53a:	74 36                                           	je     0x78e572
  78e53c:	8b 81 b0 00 00 00                               	mov    eax,DWORD PTR [ecx+0xb0]
  78e542:	85 c0                                           	test   eax,eax
  78e544:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  78e548:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  78e54c:	74 17                                           	je     0x78e565
  78e54e:	8b 78 48                                        	mov    edi,DWORD PTR [eax+0x48]
  78e551:	3b fe                                           	cmp    edi,esi
  78e553:	75 10                                           	jne    0x78e565
  78e555:	8b 78 4c                                        	mov    edi,DWORD PTR [eax+0x4c]
  78e558:	3b fa                                           	cmp    edi,edx
  78e55a:	75 09                                           	jne    0x78e565
  78e55c:	8a 80 9c 00 00 00                               	mov    al,BYTE PTR [eax+0x9c]
  78e562:	5f                                              	pop    edi
  78e563:	5e                                              	pop    esi
  78e564:	c3                                              	ret
  78e565:	6a 00                                           	push   0x0
  78e567:	52                                              	push   edx
  78e568:	56                                              	push   esi
  78e569:	e8 a2 42 4d 00                                  	call   0xc62810
  78e56e:	85 c0                                           	test   eax,eax
  78e570:	75 ea                                           	jne    0x78e55c
  78e572:	5f                                              	pop    edi
  78e573:	32 c0                                           	xor    al,al
  78e575:	5e                                              	pop    esi
  78e576:	c3                                              	ret
  78e577:	cc                                              	int3
  78e578:	cc                                              	int3
  78e579:	cc                                              	int3
  78e57a:	cc                                              	int3
  78e57b:	cc                                              	int3
  78e57c:	cc                                              	int3
  78e57d:	cc                                              	int3
  78e57e:	cc                                              	int3
  78e57f:	cc                                              	int3
