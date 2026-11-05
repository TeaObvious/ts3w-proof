# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057aa40 (World_LotGetAutoRoofStyleImpl)
Paired Ghidra pseudocode: 1057AA40_World_LotGetAutoRoofStyleImpl.c
Window: [0x1057aa40, 0x1057aa80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057aa80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057aa40: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
1057aa50: 08 52 e8 19 d6 ff ff 8b 4c 24 20 8b 10 89 11 8b
1057aa60: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
1057aa70: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057aa40 <.text+0x579a40>:
1057aa40:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057aa44:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057aa48:	83 ec 10                                        	sub    esp,0x10
1057aa4b:	50                                              	push   eax
1057aa4c:	51                                              	push   ecx
1057aa4d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1057aa51:	52                                              	push   edx
1057aa52:	e8 19 d6 ff ff                                  	call   0x10578070
1057aa57:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057aa5b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057aa5d:	89 11                                           	mov    DWORD PTR [ecx],edx
1057aa5f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1057aa62:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1057aa65:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
1057aa68:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
1057aa6b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1057aa6e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1057aa71:	8b c1                                           	mov    eax,ecx
1057aa73:	83 c4 1c                                        	add    esp,0x1c
1057aa76:	c3                                              	ret
1057aa77:	cc                                              	int3
1057aa78:	cc                                              	int3
1057aa79:	cc                                              	int3
1057aa7a:	cc                                              	int3
1057aa7b:	cc                                              	int3
1057aa7c:	cc                                              	int3
1057aa7d:	cc                                              	int3
1057aa7e:	cc                                              	int3
1057aa7f:	cc                                              	int3
