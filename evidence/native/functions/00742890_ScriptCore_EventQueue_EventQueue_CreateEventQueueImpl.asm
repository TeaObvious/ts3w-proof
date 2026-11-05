# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00742890 (ScriptCore.EventQueue::EventQueue_CreateEventQueueImpl)
Paired Ghidra pseudocode: 00742890_ScriptCore_EventQueue_EventQueue_CreateEventQueueImpl.c
Window: [0x00742890, 0x007428f0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x007428f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00742890: 56 57 e8 f9 6a 02 00 8b f8 8b 07 8b 90 18 01 00
007428a0: 00 8b cf ff d2 33 f6 56 56 56 56 68 dc 22 00 01
007428b0: 6a 0c e8 49 1c da ff 83 c4 18 3b c6 74 12 8b 4c
007428c0: 24 0c 89 70 04 c7 00 d0 22 00 01 89 48 08 8b f0
007428d0: 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00 00
007428e0: 6a 22 56 8b cf ff d0 5f 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00742890 <.text+0x341890>:
  742890:	56                                              	push   esi
  742891:	57                                              	push   edi
  742892:	e8 f9 6a 02 00                                  	call   0x769390
  742897:	8b f8                                           	mov    edi,eax
  742899:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74289b:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7428a1:	8b cf                                           	mov    ecx,edi
  7428a3:	ff d2                                           	call   edx
  7428a5:	33 f6                                           	xor    esi,esi
  7428a7:	56                                              	push   esi
  7428a8:	56                                              	push   esi
  7428a9:	56                                              	push   esi
  7428aa:	56                                              	push   esi
  7428ab:	68 dc 22 00 01                                  	push   0x10022dc
  7428b0:	6a 0c                                           	push   0xc
  7428b2:	e8 49 1c da ff                                  	call   0x4e4500
  7428b7:	83 c4 18                                        	add    esp,0x18
  7428ba:	3b c6                                           	cmp    eax,esi
  7428bc:	74 12                                           	je     0x7428d0
  7428be:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7428c2:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
  7428c5:	c7 00 d0 22 00 01                               	mov    DWORD PTR [eax],0x10022d0
  7428cb:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  7428ce:	8b f0                                           	mov    esi,eax
  7428d0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7428d2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7428d4:	8b ce                                           	mov    ecx,esi
  7428d6:	ff d0                                           	call   eax
  7428d8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7428da:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  7428e0:	6a 22                                           	push   0x22
  7428e2:	56                                              	push   esi
  7428e3:	8b cf                                           	mov    ecx,edi
  7428e5:	ff d0                                           	call   eax
  7428e7:	5f                                              	pop    edi
  7428e8:	5e                                              	pop    esi
  7428e9:	c3                                              	ret
  7428ea:	cc                                              	int3
  7428eb:	cc                                              	int3
  7428ec:	cc                                              	int3
  7428ed:	cc                                              	int3
  7428ee:	cc                                              	int3
  7428ef:	cc                                              	int3
