# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996930 (WorldTerrainWrap_ClearToBaseLayer)
Paired Ghidra pseudocode: 10996930_WorldTerrainWrap_ClearToBaseLayer.c
Window: [0x10996930, 0x10996960) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996930: 8b 44 24 04 85 c0 74 23 8b 48 64 85 c9 74 1c 56
10996940: e8 0b 01 d2 ff 8b f0 85 f6 74 0f 8b ce e8 ae ac
10996950: 85 ff 8b ce 5e e9 36 9b 85 ff 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
10996930 <.text+0x995930>:
10996930:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996934:	85 c0                                           	test   eax,eax
10996936:	74 23                                           	je     0x1099695b
10996938:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1099693b:	85 c9                                           	test   ecx,ecx
1099693d:	74 1c                                           	je     0x1099695b
1099693f:	56                                              	push   esi
10996940:	e8 0b 01 d2 ff                                  	call   0x106b6a50
10996945:	8b f0                                           	mov    esi,eax
10996947:	85 f6                                           	test   esi,esi
10996949:	74 0f                                           	je     0x1099695a
1099694b:	8b ce                                           	mov    ecx,esi
1099694d:	e8 ae ac 85 ff                                  	call   0x101f1600
10996952:	8b ce                                           	mov    ecx,esi
10996954:	5e                                              	pop    esi
10996955:	e9 36 9b 85 ff                                  	jmp    0x101f0490
1099695a:	5e                                              	pop    esi
1099695b:	c3                                              	ret
1099695c:	cc                                              	int3
1099695d:	cc                                              	int3
1099695e:	cc                                              	int3
1099695f:	cc                                              	int3
