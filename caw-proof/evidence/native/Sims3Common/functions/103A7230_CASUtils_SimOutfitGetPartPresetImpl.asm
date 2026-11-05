# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7230 (CASUtils_SimOutfitGetPartPresetImpl)
Paired Ghidra pseudocode: 103A7230_CASUtils_SimOutfitGetPartPresetImpl.c
Window: [0x103a7230, 0x103a7260) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7260
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7230: 8b 4c 24 08 8b 54 24 0c 83 ec 10 8b c4 89 08 8b
103a7240: 4c 24 20 89 50 04 8b 54 24 24 89 48 08 89 50 0c
103a7250: 8b 44 24 14 50 e8 96 f3 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a7230 <.text+0x3a6230>:
103a7230:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a7234:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a7238:	83 ec 10                                        	sub    esp,0x10
103a723b:	8b c4                                           	mov    eax,esp
103a723d:	89 08                                           	mov    DWORD PTR [eax],ecx
103a723f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a7243:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a7246:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a724a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a724d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a7250:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a7254:	50                                              	push   eax
103a7255:	e8 96 f3 ff ff                                  	call   0x103a65f0
103a725a:	83 c4 14                                        	add    esp,0x14
103a725d:	c3                                              	ret
103a725e:	cc                                              	int3
103a725f:	cc                                              	int3
