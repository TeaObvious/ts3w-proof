# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aae0 (World_LotGetDefaultAutoRoofStyleImpl)
Paired Ghidra pseudocode: 1057AAE0_World_LotGetDefaultAutoRoofStyleImpl.c
Window: [0x1057aae0, 0x1057ab20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ab20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aae0: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
1057aaf0: 08 52 e8 39 d6 ff ff 8b 4c 24 20 8b 10 89 11 8b
1057ab00: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
1057ab10: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aae0 <.text+0x579ae0>:
1057aae0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057aae4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057aae8:	83 ec 10                                        	sub    esp,0x10
1057aaeb:	50                                              	push   eax
1057aaec:	51                                              	push   ecx
1057aaed:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1057aaf1:	52                                              	push   edx
1057aaf2:	e8 39 d6 ff ff                                  	call   0x10578130
1057aaf7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057aafb:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057aafd:	89 11                                           	mov    DWORD PTR [ecx],edx
1057aaff:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1057ab02:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1057ab05:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1057ab08:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1057ab0b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1057ab0e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1057ab11:	8b c1                                           	mov    eax,ecx
1057ab13:	83 c4 1c                                        	add    esp,0x1c
1057ab16:	c3                                              	ret
1057ab17:	cc                                              	int3
1057ab18:	cc                                              	int3
1057ab19:	cc                                              	int3
1057ab1a:	cc                                              	int3
1057ab1b:	cc                                              	int3
1057ab1c:	cc                                              	int3
1057ab1d:	cc                                              	int3
1057ab1e:	cc                                              	int3
1057ab1f:	cc                                              	int3
