# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057ade0 (World_IsPosInsideGreenhouseImpl)
Paired Ghidra pseudocode: 1057ADE0_World_IsPosInsideGreenhouseImpl.c
Window: [0x1057ade0, 0x1057ae10) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057ae10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057ade0: 8b 4c 24 04 8b 54 24 08 83 ec 0c 8b c4 89 08 8b
1057adf0: 4c 24 18 89 50 04 89 48 08 e8 62 d8 ff ff 83 c4
1057ae00: 0c c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057ade0 <.text+0x579de0>:
1057ade0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057ade4:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057ade8:	83 ec 0c                                        	sub    esp,0xc
1057adeb:	8b c4                                           	mov    eax,esp
1057aded:	89 08                                           	mov    DWORD PTR [eax],ecx
1057adef:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057adf3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057adf6:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057adf9:	e8 62 d8 ff ff                                  	call   0x10578660
1057adfe:	83 c4 0c                                        	add    esp,0xc
1057ae01:	c3                                              	ret
1057ae02:	cc                                              	int3
1057ae03:	cc                                              	int3
1057ae04:	cc                                              	int3
1057ae05:	cc                                              	int3
1057ae06:	cc                                              	int3
1057ae07:	cc                                              	int3
1057ae08:	cc                                              	int3
1057ae09:	cc                                              	int3
1057ae0a:	cc                                              	int3
1057ae0b:	cc                                              	int3
1057ae0c:	cc                                              	int3
1057ae0d:	cc                                              	int3
1057ae0e:	cc                                              	int3
1057ae0f:	cc                                              	int3
