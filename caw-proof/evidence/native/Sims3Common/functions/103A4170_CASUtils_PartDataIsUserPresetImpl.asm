# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4170 (CASUtils_PartDataIsUserPresetImpl)
Paired Ghidra pseudocode: 103A4170_CASUtils_PartDataIsUserPresetImpl.c
Window: [0x103a4170, 0x103a41a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a41a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4170: 8b 44 24 14 8b 4c 24 04 8b 54 24 08 50 83 ec 10
103a4180: 8b c4 89 08 8b 4c 24 20 89 50 04 8b 54 24 24 89
103a4190: 48 08 89 50 0c e8 46 e4 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a4170 <.text+0x3a3170>:
103a4170:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a4174:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
103a4178:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
103a417c:	50                                              	push   eax
103a417d:	83 ec 10                                        	sub    esp,0x10
103a4180:	8b c4                                           	mov    eax,esp
103a4182:	89 08                                           	mov    DWORD PTR [eax],ecx
103a4184:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a4188:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a418b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a418f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a4192:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a4195:	e8 46 e4 ff ff                                  	call   0x103a25e0
103a419a:	83 c4 14                                        	add    esp,0x14
103a419d:	c3                                              	ret
103a419e:	cc                                              	int3
103a419f:	cc                                              	int3
