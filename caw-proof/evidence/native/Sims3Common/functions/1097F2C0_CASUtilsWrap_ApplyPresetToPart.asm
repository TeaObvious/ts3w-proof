# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f2c0 (CASUtilsWrap_ApplyPresetToPart)
Paired Ghidra pseudocode: 1097F2C0_CASUtilsWrap_ApplyPresetToPart.c
Window: [0x1097f2c0, 0x1097f310) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f2c0: 8b 4c 24 04 83 ec 10 85 c9 74 38 8b 44 24 28 85
1097f2d0: c0 74 30 8b 54 24 20 89 14 24 8b 54 24 24 89 54
1097f2e0: 24 04 8b 54 24 18 50 89 54 24 0c 8b 54 24 20 8d
1097f2f0: 44 24 04 50 89 54 24 14 e8 73 f3 a5 ff b0 01 83
1097f300: c4 10 c3 32 c0 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f2c0 <.text+0x97e2c0>:
1097f2c0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f2c4:	83 ec 10                                        	sub    esp,0x10
1097f2c7:	85 c9                                           	test   ecx,ecx
1097f2c9:	74 38                                           	je     0x1097f303
1097f2cb:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1097f2cf:	85 c0                                           	test   eax,eax
1097f2d1:	74 30                                           	je     0x1097f303
1097f2d3:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1097f2d7:	89 14 24                                        	mov    DWORD PTR [esp],edx
1097f2da:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1097f2de:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1097f2e2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1097f2e6:	50                                              	push   eax
1097f2e7:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1097f2eb:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1097f2ef:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1097f2f3:	50                                              	push   eax
1097f2f4:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1097f2f8:	e8 73 f3 a5 ff                                  	call   0x103de670
1097f2fd:	b0 01                                           	mov    al,0x1
1097f2ff:	83 c4 10                                        	add    esp,0x10
1097f302:	c3                                              	ret
1097f303:	32 c0                                           	xor    al,al
1097f305:	83 c4 10                                        	add    esp,0x10
1097f308:	c3                                              	ret
1097f309:	cc                                              	int3
1097f30a:	cc                                              	int3
1097f30b:	cc                                              	int3
1097f30c:	cc                                              	int3
1097f30d:	cc                                              	int3
1097f30e:	cc                                              	int3
1097f30f:	cc                                              	int3
