# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b9d0 (World_GetWorldToHouseboatDisplayPositionImpl)
Paired Ghidra pseudocode: 1057B9D0_World_GetWorldToHouseboatDisplayPositionImpl.c
Window: [0x1057b9d0, 0x1057ba10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ba10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b9d0: 8b 44 24 18 8b 4c 24 0c 8b 54 24 10 50 83 ec 0c
1057b9e0: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 18 89
1057b9f0: 48 08 8b 44 24 14 52 50 e8 63 e3 ff ff 83 c4 18
1057ba00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b9d0 <.text+0x57a9d0>:
1057b9d0:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057b9d4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057b9d8:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057b9dc:	50                                              	push   eax
1057b9dd:	83 ec 0c                                        	sub    esp,0xc
1057b9e0:	8b c4                                           	mov    eax,esp
1057b9e2:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b9e4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1057b9e8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b9eb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057b9ef:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b9f2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057b9f6:	52                                              	push   edx
1057b9f7:	50                                              	push   eax
1057b9f8:	e8 63 e3 ff ff                                  	call   0x10579d60
1057b9fd:	83 c4 18                                        	add    esp,0x18
1057ba00:	c3                                              	ret
1057ba01:	cc                                              	int3
1057ba02:	cc                                              	int3
1057ba03:	cc                                              	int3
1057ba04:	cc                                              	int3
1057ba05:	cc                                              	int3
1057ba06:	cc                                              	int3
1057ba07:	cc                                              	int3
1057ba08:	cc                                              	int3
1057ba09:	cc                                              	int3
1057ba0a:	cc                                              	int3
1057ba0b:	cc                                              	int3
1057ba0c:	cc                                              	int3
1057ba0d:	cc                                              	int3
1057ba0e:	cc                                              	int3
1057ba0f:	cc                                              	int3
