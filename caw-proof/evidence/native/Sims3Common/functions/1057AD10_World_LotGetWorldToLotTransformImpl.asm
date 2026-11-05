# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ad10 (World_LotGetWorldToLotTransformImpl)
Paired Ghidra pseudocode: 1057AD10_World_LotGetWorldToLotTransformImpl.c
Window: [0x1057ad10, 0x1057ad50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ad50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ad10: 8b 44 24 0c 8b 4c 24 08 83 ec 40 56 57 50 51 8d
1057ad20: 54 24 10 52 e8 27 d7 ff ff 8b f0 8b 44 24 58 83
1057ad30: c4 0c b9 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40
1057ad40: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ad10 <.text+0x579d10>:
1057ad10:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057ad14:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057ad18:	83 ec 40                                        	sub    esp,0x40
1057ad1b:	56                                              	push   esi
1057ad1c:	57                                              	push   edi
1057ad1d:	50                                              	push   eax
1057ad1e:	51                                              	push   ecx
1057ad1f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1057ad23:	52                                              	push   edx
1057ad24:	e8 27 d7 ff ff                                  	call   0x10578450
1057ad29:	8b f0                                           	mov    esi,eax
1057ad2b:	8b 44 24 58                                     	mov    eax,DWORD PTR [esp+0x58]
1057ad2f:	83 c4 0c                                        	add    esp,0xc
1057ad32:	b9 10 00 00 00                                  	mov    ecx,0x10
1057ad37:	8b f8                                           	mov    edi,eax
1057ad39:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1057ad3b:	5f                                              	pop    edi
1057ad3c:	5e                                              	pop    esi
1057ad3d:	83 c4 40                                        	add    esp,0x40
1057ad40:	c3                                              	ret
1057ad41:	cc                                              	int3
1057ad42:	cc                                              	int3
1057ad43:	cc                                              	int3
1057ad44:	cc                                              	int3
1057ad45:	cc                                              	int3
1057ad46:	cc                                              	int3
1057ad47:	cc                                              	int3
1057ad48:	cc                                              	int3
1057ad49:	cc                                              	int3
1057ad4a:	cc                                              	int3
1057ad4b:	cc                                              	int3
1057ad4c:	cc                                              	int3
1057ad4d:	cc                                              	int3
1057ad4e:	cc                                              	int3
1057ad4f:	cc                                              	int3
