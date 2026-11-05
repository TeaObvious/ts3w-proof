# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057acc0 (World_LotGetDisplayLevelInfoImpl)
Paired Ghidra pseudocode: 1057ACC0_World_LotGetDisplayLevelInfoImpl.c
Window: [0x1057acc0, 0x1057ad10) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ad10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057acc0: 8b 44 24 0c 8b 4c 24 08 83 ec 18 50 51 8d 54 24
1057acd0: 08 52 e8 d9 d6 ff ff 8b 4c 24 28 8b 10 89 11 8b
1057ace0: 50 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51
1057acf0: 0c 8b 50 10 8b 40 14 89 51 10 89 41 14 8b c1 83
1057ad00: c4 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057acc0 <.text+0x579cc0>:
1057acc0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057acc4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057acc8:	83 ec 18                                        	sub    esp,0x18
1057accb:	50                                              	push   eax
1057accc:	51                                              	push   ecx
1057accd:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1057acd1:	52                                              	push   edx
1057acd2:	e8 d9 d6 ff ff                                  	call   0x105783b0
1057acd7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1057acdb:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057acdd:	89 11                                           	mov    DWORD PTR [ecx],edx
1057acdf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1057ace2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1057ace5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1057ace8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1057aceb:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1057acee:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
1057acf1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
1057acf4:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
1057acf7:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
1057acfa:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
1057acfd:	8b c1                                           	mov    eax,ecx
1057acff:	83 c4 24                                        	add    esp,0x24
1057ad02:	c3                                              	ret
1057ad03:	cc                                              	int3
1057ad04:	cc                                              	int3
1057ad05:	cc                                              	int3
1057ad06:	cc                                              	int3
1057ad07:	cc                                              	int3
1057ad08:	cc                                              	int3
1057ad09:	cc                                              	int3
1057ad0a:	cc                                              	int3
1057ad0b:	cc                                              	int3
1057ad0c:	cc                                              	int3
1057ad0d:	cc                                              	int3
1057ad0e:	cc                                              	int3
1057ad0f:	cc                                              	int3
