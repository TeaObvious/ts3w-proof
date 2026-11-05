# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1550 (CASUtils_SimBuilderSaveSkinTonePresetImpl)
Paired Ghidra pseudocode: 103A1550_CASUtils_SimBuilderSaveSkinTonePresetImpl.c
Window: [0x103a1550, 0x103a1590) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1590
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1550: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
103a1560: 08 52 e8 09 e6 ff ff 8b 4c 24 20 8b 10 89 11 8b
103a1570: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
103a1580: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1550 <.text+0x3a0550>:
103a1550:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a1554:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a1558:	83 ec 10                                        	sub    esp,0x10
103a155b:	50                                              	push   eax
103a155c:	51                                              	push   ecx
103a155d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
103a1561:	52                                              	push   edx
103a1562:	e8 09 e6 ff ff                                  	call   0x1039fb70
103a1567:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a156b:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a156d:	89 11                                           	mov    DWORD PTR [ecx],edx
103a156f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1572:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1575:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a1578:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a157b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a157e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1581:	8b c1                                           	mov    eax,ecx
103a1583:	83 c4 1c                                        	add    esp,0x1c
103a1586:	c3                                              	ret
103a1587:	cc                                              	int3
103a1588:	cc                                              	int3
103a1589:	cc                                              	int3
103a158a:	cc                                              	int3
103a158b:	cc                                              	int3
103a158c:	cc                                              	int3
103a158d:	cc                                              	int3
103a158e:	cc                                              	int3
103a158f:	cc                                              	int3
