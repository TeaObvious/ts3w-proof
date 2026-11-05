# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a72a0 (CASUtils_InjectHairColorsImpl)
Paired Ghidra pseudocode: 103A72A0_CASUtils_InjectHairColorsImpl.c
Window: [0x103a72a0, 0x103a72d0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a72d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a72a0: 8b 44 24 54 8b 4c 24 50 8b 54 24 04 56 57 50 51
103a72b0: 83 ec 48 8b fc b9 12 00 00 00 8d 74 24 60 52 f3
103a72c0: a5 e8 3a f8 ff ff 83 c4 54 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
103a72a0 <.text+0x3a62a0>:
103a72a0:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
103a72a4:	8b 4c 24 50                                     	mov    ecx,DWORD PTR [esp+0x50]
103a72a8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
103a72ac:	56                                              	push   esi
103a72ad:	57                                              	push   edi
103a72ae:	50                                              	push   eax
103a72af:	51                                              	push   ecx
103a72b0:	83 ec 48                                        	sub    esp,0x48
103a72b3:	8b fc                                           	mov    edi,esp
103a72b5:	b9 12 00 00 00                                  	mov    ecx,0x12
103a72ba:	8d 74 24 60                                     	lea    esi,[esp+0x60]
103a72be:	52                                              	push   edx
103a72bf:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a72c1:	e8 3a f8 ff ff                                  	call   0x103a6b00
103a72c6:	83 c4 54                                        	add    esp,0x54
103a72c9:	5f                                              	pop    edi
103a72ca:	5e                                              	pop    esi
103a72cb:	c3                                              	ret
103a72cc:	cc                                              	int3
103a72cd:	cc                                              	int3
103a72ce:	cc                                              	int3
103a72cf:	cc                                              	int3
