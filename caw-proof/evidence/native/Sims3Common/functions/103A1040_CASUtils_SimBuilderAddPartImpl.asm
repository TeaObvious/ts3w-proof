# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1040 (CASUtils_SimBuilderAddPartImpl)
Paired Ghidra pseudocode: 103A1040_CASUtils_SimBuilderAddPartImpl.c
Window: [0x103a1040, 0x103a1080) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1040: 8b 44 24 18 8b 4c 24 08 8b 54 24 0c 50 83 ec 10
103a1050: 8b c4 89 08 8b 4c 24 24 89 50 04 8b 54 24 28 89
103a1060: 48 08 89 50 0c 8b 44 24 18 50 e8 11 e4 ff ff 83
103a1070: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1040 <.text+0x3a0040>:
103a1040:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a1044:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a1048:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
103a104c:	50                                              	push   eax
103a104d:	83 ec 10                                        	sub    esp,0x10
103a1050:	8b c4                                           	mov    eax,esp
103a1052:	89 08                                           	mov    DWORD PTR [eax],ecx
103a1054:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
103a1058:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a105b:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
103a105f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
103a1062:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
103a1065:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
103a1069:	50                                              	push   eax
103a106a:	e8 11 e4 ff ff                                  	call   0x1039f480
103a106f:	83 c4 18                                        	add    esp,0x18
103a1072:	c3                                              	ret
103a1073:	cc                                              	int3
103a1074:	cc                                              	int3
103a1075:	cc                                              	int3
103a1076:	cc                                              	int3
103a1077:	cc                                              	int3
103a1078:	cc                                              	int3
103a1079:	cc                                              	int3
103a107a:	cc                                              	int3
103a107b:	cc                                              	int3
103a107c:	cc                                              	int3
103a107d:	cc                                              	int3
103a107e:	cc                                              	int3
103a107f:	cc                                              	int3
