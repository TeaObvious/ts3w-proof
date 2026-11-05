# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b970 (World_UpdateMoodStateImpl)
Paired Ghidra pseudocode: 1057B970_World_UpdateMoodStateImpl.c
Window: [0x1057b970, 0x1057b9b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b9b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b970: 8b 44 24 18 d9 44 24 14 8b 4c 24 08 8b 54 24 04
1057b980: 50 83 ec 0c d9 5c 24 08 d9 44 24 20 d9 5c 24 04
1057b990: d9 44 24 1c d9 1c 24 51 52 b9 14 d3 c7 10 e8 4d
1057b9a0: 31 06 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b970 <.text+0x57a970>:
1057b970:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057b974:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
1057b978:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057b97c:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1057b980:	50                                              	push   eax
1057b981:	83 ec 0c                                        	sub    esp,0xc
1057b984:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1057b988:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1057b98c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057b990:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
1057b994:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057b997:	51                                              	push   ecx
1057b998:	52                                              	push   edx
1057b999:	b9 14 d3 c7 10                                  	mov    ecx,0x10c7d314
1057b99e:	e8 4d 31 06 00                                  	call   0x105deaf0
1057b9a3:	c3                                              	ret
1057b9a4:	cc                                              	int3
1057b9a5:	cc                                              	int3
1057b9a6:	cc                                              	int3
1057b9a7:	cc                                              	int3
1057b9a8:	cc                                              	int3
1057b9a9:	cc                                              	int3
1057b9aa:	cc                                              	int3
1057b9ab:	cc                                              	int3
1057b9ac:	cc                                              	int3
1057b9ad:	cc                                              	int3
1057b9ae:	cc                                              	int3
1057b9af:	cc                                              	int3
