# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3980 (CASUtils_GetSkinTonePresetImpl)
Paired Ghidra pseudocode: 103A3980_CASUtils_GetSkinTonePresetImpl.c
Window: [0x103a3980, 0x103a39d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a39d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3980: 8b 4c 24 08 8b 54 24 0c 83 ec 30 56 57 83 ec 10
103a3990: 8b c4 89 08 8b 4c 24 58 89 50 04 8b 54 24 5c 89
103a39a0: 48 08 89 50 0c 8d 44 24 18 50 e8 21 ea ff ff 8b
103a39b0: f0 8b 44 24 50 83 c4 14 b9 0c 00 00 00 8b f8 f3
103a39c0: a5 5f 5e 83 c4 30 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3980 <.text+0x3a2980>:
103a3980:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a3984:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a3988:	83 ec 30                                        	sub    esp,0x30
103a398b:	56                                              	push   esi
103a398c:	57                                              	push   edi
103a398d:	83 ec 10                                        	sub    esp,0x10
103a3990:	8b c4                                           	mov    eax,esp
103a3992:	89 08                                           	mov    DWORD PTR [eax],ecx
103a3994:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
103a3998:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a399b:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
103a399f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a39a2:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a39a5:	8d 44 24 18                                     	lea    eax,[esp+0x18]
103a39a9:	50                                              	push   eax
103a39aa:	e8 21 ea ff ff                                  	call   0x103a23d0
103a39af:	8b f0                                           	mov    esi,eax
103a39b1:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
103a39b5:	83 c4 14                                        	add    esp,0x14
103a39b8:	b9 0c 00 00 00                                  	mov    ecx,0xc
103a39bd:	8b f8                                           	mov    edi,eax
103a39bf:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a39c1:	5f                                              	pop    edi
103a39c2:	5e                                              	pop    esi
103a39c3:	83 c4 30                                        	add    esp,0x30
103a39c6:	c3                                              	ret
103a39c7:	cc                                              	int3
103a39c8:	cc                                              	int3
103a39c9:	cc                                              	int3
103a39ca:	cc                                              	int3
103a39cb:	cc                                              	int3
103a39cc:	cc                                              	int3
103a39cd:	cc                                              	int3
103a39ce:	cc                                              	int3
103a39cf:	cc                                              	int3
