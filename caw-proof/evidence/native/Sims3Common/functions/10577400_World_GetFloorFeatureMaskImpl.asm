# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577400 (World_GetFloorFeatureMaskImpl)
Paired Ghidra pseudocode: 10577400_World_GetFloorFeatureMaskImpl.c
Window: [0x10577400, 0x10577450) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577400: 51 8b 0d c4 00 c7 10 85 c9 74 3f 8b 44 24 0c 8b
10577410: 54 24 08 6a 00 50 52 e8 f4 fb cb ff 85 c0 74 2a
10577420: 8a 4c 24 10 8a 54 24 14 88 0c 24 8a 4c 24 18 88
10577430: 54 24 01 8b 54 24 1c 88 4c 24 02 52 8d 4c 24 04
10577440: 51 8b c8 e8 28 48 b0 ff 59 c3 66 33 c0 59 c3 cc

LINEAR DISASSEMBLY
10577400 <.text+0x576400>:
10577400:	51                                              	push   ecx
10577401:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577407:	85 c9                                           	test   ecx,ecx
10577409:	74 3f                                           	je     0x1057744a
1057740b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057740f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577413:	6a 00                                           	push   0x0
10577415:	50                                              	push   eax
10577416:	52                                              	push   edx
10577417:	e8 f4 fb cb ff                                  	call   0x10237010
1057741c:	85 c0                                           	test   eax,eax
1057741e:	74 2a                                           	je     0x1057744a
10577420:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
10577424:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
10577428:	88 0c 24                                        	mov    BYTE PTR [esp],cl
1057742b:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
1057742f:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
10577433:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10577437:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
1057743b:	52                                              	push   edx
1057743c:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10577440:	51                                              	push   ecx
10577441:	8b c8                                           	mov    ecx,eax
10577443:	e8 28 48 b0 ff                                  	call   0x1007bc70
10577448:	59                                              	pop    ecx
10577449:	c3                                              	ret
1057744a:	66 33 c0                                        	xor    ax,ax
1057744d:	59                                              	pop    ecx
1057744e:	c3                                              	ret
1057744f:	cc                                              	int3
