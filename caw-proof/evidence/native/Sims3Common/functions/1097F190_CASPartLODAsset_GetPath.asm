# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f190 (CASPartLODAsset_GetPath)
Paired Ghidra pseudocode: 1097F190_CASPartLODAsset_GetPath.c
Window: [0x1097f190, 0x1097f1e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f190: 8b 44 24 04 83 ec 10 56 83 c0 0c 50 8d 4c 24 08
1097f1a0: 51 e8 4a 7d fa ff 8b 00 83 c4 08 50 ff 15 c4 b6
1097f1b0: aa 10 8b 54 24 0c 8b f0 8b 44 24 04 2b d0 83 e2
1097f1c0: fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 c0 9c f9 ff
1097f1d0: 83 c4 04 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f190 <.text+0x97e190>:
1097f190:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f194:	83 ec 10                                        	sub    esp,0x10
1097f197:	56                                              	push   esi
1097f198:	83 c0 0c                                        	add    eax,0xc
1097f19b:	50                                              	push   eax
1097f19c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1097f1a0:	51                                              	push   ecx
1097f1a1:	e8 4a 7d fa ff                                  	call   0x10926ef0
1097f1a6:	8b 00                                           	mov    eax,DWORD PTR [eax]
1097f1a8:	83 c4 08                                        	add    esp,0x8
1097f1ab:	50                                              	push   eax
1097f1ac:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
1097f1b2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097f1b6:	8b f0                                           	mov    esi,eax
1097f1b8:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f1bc:	2b d0                                           	sub    edx,eax
1097f1be:	83 e2 fe                                        	and    edx,0xfffffffe
1097f1c1:	83 fa 02                                        	cmp    edx,0x2
1097f1c4:	7e 0d                                           	jle    0x1097f1d3
1097f1c6:	85 c0                                           	test   eax,eax
1097f1c8:	74 09                                           	je     0x1097f1d3
1097f1ca:	50                                              	push   eax
1097f1cb:	e8 c0 9c f9 ff                                  	call   0x10918e90
1097f1d0:	83 c4 04                                        	add    esp,0x4
1097f1d3:	8b c6                                           	mov    eax,esi
1097f1d5:	5e                                              	pop    esi
1097f1d6:	83 c4 10                                        	add    esp,0x10
1097f1d9:	c3                                              	ret
1097f1da:	cc                                              	int3
1097f1db:	cc                                              	int3
1097f1dc:	cc                                              	int3
1097f1dd:	cc                                              	int3
1097f1de:	cc                                              	int3
1097f1df:	cc                                              	int3
