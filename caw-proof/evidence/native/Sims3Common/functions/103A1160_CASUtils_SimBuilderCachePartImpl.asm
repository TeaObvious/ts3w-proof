# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1160 (CASUtils_SimBuilderCachePartImpl)
Paired Ghidra pseudocode: 103A1160_CASUtils_SimBuilderCachePartImpl.c
Window: [0x103a1160, 0x103a1190) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1160: 8b 4c 24 08 8b 54 24 0c 83 ec 10 8b c4 89 08 8b
103a1170: 4c 24 20 89 50 04 8b 54 24 24 89 48 08 89 50 0c
103a1180: 8b 44 24 14 50 e8 16 e5 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
103a1160 <.text+0x3a0160>:
103a1160:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a1164:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a1168:	83 ec 10                                        	sub    esp,0x10
103a116b:	8b c4                                           	mov    eax,esp
103a116d:	89 08                                           	mov    DWORD PTR [eax],ecx
103a116f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a1173:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a1176:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
103a117a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a117d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a1180:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
103a1184:	50                                              	push   eax
103a1185:	e8 16 e5 ff ff                                  	call   0x1039f6a0
103a118a:	83 c4 14                                        	add    esp,0x14
103a118d:	c3                                              	ret
103a118e:	cc                                              	int3
103a118f:	cc                                              	int3
