# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b120 (World_ObjectDesigner_SetPatternImpl)
Paired Ghidra pseudocode: 1057B120_World_ObjectDesigner_SetPatternImpl.c
Window: [0x1057b120, 0x1057b170) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b120: 8b 4c 24 14 8b 54 24 18 83 ec 10 8b c4 89 08 8b
1057b130: 4c 24 2c 89 50 04 8b 54 24 30 89 48 08 8b 4c 24
1057b140: 14 89 50 0c 8b 54 24 18 83 ec 10 8b c4 89 08 8b
1057b150: 4c 24 2c 89 50 04 8b 54 24 30 89 48 08 89 50 0c
1057b160: e8 3b dd ff ff 83 c4 20 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b120 <.text+0x57a120>:
1057b120:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b124:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057b128:	83 ec 10                                        	sub    esp,0x10
1057b12b:	8b c4                                           	mov    eax,esp
1057b12d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b12f:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1057b133:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b136:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1057b13a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b13d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b141:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b144:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057b148:	83 ec 10                                        	sub    esp,0x10
1057b14b:	8b c4                                           	mov    eax,esp
1057b14d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b14f:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1057b153:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b156:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1057b15a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b15d:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b160:	e8 3b dd ff ff                                  	call   0x10578ea0
1057b165:	83 c4 20                                        	add    esp,0x20
1057b168:	c3                                              	ret
1057b169:	cc                                              	int3
1057b16a:	cc                                              	int3
1057b16b:	cc                                              	int3
1057b16c:	cc                                              	int3
1057b16d:	cc                                              	int3
1057b16e:	cc                                              	int3
1057b16f:	cc                                              	int3
