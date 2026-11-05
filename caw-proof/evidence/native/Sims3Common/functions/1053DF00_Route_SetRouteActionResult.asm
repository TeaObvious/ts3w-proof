# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053df00 (Route_SetRouteActionResult)
Paired Ghidra pseudocode: 1053DF00_Route_SetRouteActionResult.c
Window: [0x1053df00, 0x1053df40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053df40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053df00: 8b 0d 44 89 c7 10 85 c9 74 2f 8b 44 24 04 56 50
1053df10: e8 db e1 ff ff 8b f0 85 f6 74 1d 8b 16 8b 42 10
1053df20: 8b ce ff d0 8b 4c 24 0c 89 8e ec 01 00 00 8b 16
1053df30: 8b 42 14 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053df00 <.text+0x53cf00>:
1053df00:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053df06:	85 c9                                           	test   ecx,ecx
1053df08:	74 2f                                           	je     0x1053df39
1053df0a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1053df0e:	56                                              	push   esi
1053df0f:	50                                              	push   eax
1053df10:	e8 db e1 ff ff                                  	call   0x1053c0f0
1053df15:	8b f0                                           	mov    esi,eax
1053df17:	85 f6                                           	test   esi,esi
1053df19:	74 1d                                           	je     0x1053df38
1053df1b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053df1d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1053df20:	8b ce                                           	mov    ecx,esi
1053df22:	ff d0                                           	call   eax
1053df24:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1053df28:	89 8e ec 01 00 00                               	mov    DWORD PTR [esi+0x1ec],ecx
1053df2e:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053df30:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1053df33:	8b ce                                           	mov    ecx,esi
1053df35:	5e                                              	pop    esi
1053df36:	ff e0                                           	jmp    eax
1053df38:	5e                                              	pop    esi
1053df39:	c3                                              	ret
1053df3a:	cc                                              	int3
1053df3b:	cc                                              	int3
1053df3c:	cc                                              	int3
1053df3d:	cc                                              	int3
1053df3e:	cc                                              	int3
1053df3f:	cc                                              	int3
