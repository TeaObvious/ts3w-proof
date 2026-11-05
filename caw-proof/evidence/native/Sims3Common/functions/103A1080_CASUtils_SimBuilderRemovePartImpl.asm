# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1080 (CASUtils_SimBuilderRemovePartImpl)
Paired Ghidra pseudocode: 103A1080_CASUtils_SimBuilderRemovePartImpl.c
Window: [0x103a1080, 0x103a10b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a10b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1080: 8b 4c 24 08 8b 54 24 0c 83 ec 10 8b c4 89 08 8b
103a1090: 4c 24 20 89 50 04 8b 54 24 24 89 48 08 89 50 0c
103a10a0: 8b 44 24 14 50 e8 46 e4 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a1080 <.text+0x3a0080>:
103a1080:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a1084:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a1088:	83 ec 10                                        	sub    esp,0x10
103a108b:	8b c4                                           	mov    eax,esp
103a108d:	89 08                                           	mov    DWORD PTR [eax],ecx
103a108f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1093:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a1096:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a109a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a109d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a10a0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a10a4:	50                                              	push   eax
103a10a5:	e8 46 e4 ff ff                                  	call   0x1039f4f0
103a10aa:	83 c4 14                                        	add    esp,0x14
103a10ad:	c3                                              	ret
103a10ae:	cc                                              	int3
103a10af:	cc                                              	int3
