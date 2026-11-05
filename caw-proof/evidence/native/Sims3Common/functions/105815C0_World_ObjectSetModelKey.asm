# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105815c0 (World_ObjectSetModelKey)
Paired Ghidra pseudocode: 105815C0_World_ObjectSetModelKey.c
Window: [0x105815c0, 0x10581600) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581600
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105815c0: 8b 4c 24 0c 8b 54 24 10 83 ec 10 8b c4 89 08 8b
105815d0: 4c 24 24 89 50 04 8b 54 24 28 89 48 08 8b 4c 24
105815e0: 14 89 50 0c 8b 44 24 18 50 51 e8 11 d7 ff ff 83
105815f0: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105815c0 <.text+0x5805c0>:
105815c0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
105815c4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
105815c8:	83 ec 10                                        	sub    esp,0x10
105815cb:	8b c4                                           	mov    eax,esp
105815cd:	89 08                                           	mov    DWORD PTR [eax],ecx
105815cf:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105815d3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
105815d6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
105815da:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
105815dd:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105815e1:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
105815e4:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105815e8:	50                                              	push   eax
105815e9:	51                                              	push   ecx
105815ea:	e8 11 d7 ff ff                                  	call   0x1057ed00
105815ef:	83 c4 18                                        	add    esp,0x18
105815f2:	c3                                              	ret
105815f3:	cc                                              	int3
105815f4:	cc                                              	int3
105815f5:	cc                                              	int3
105815f6:	cc                                              	int3
105815f7:	cc                                              	int3
105815f8:	cc                                              	int3
105815f9:	cc                                              	int3
105815fa:	cc                                              	int3
105815fb:	cc                                              	int3
105815fc:	cc                                              	int3
105815fd:	cc                                              	int3
105815fe:	cc                                              	int3
105815ff:	cc                                              	int3
