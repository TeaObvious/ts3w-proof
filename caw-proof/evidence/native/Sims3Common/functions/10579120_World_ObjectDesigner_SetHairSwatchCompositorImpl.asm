# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579120 (World_ObjectDesigner_SetHairSwatchCompositorImpl)
Paired Ghidra pseudocode: 10579120_World_ObjectDesigner_SetHairSwatchCompositorImpl.c
Window: [0x10579120, 0x10579170) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579120: 83 ec 08 56 e8 37 f3 b7 ff 8b f0 e8 f0 1f fe ff
10579130: 33 c9 89 4c 24 04 89 4c 24 08 8b 10 8b 52 70 8d
10579140: 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 18 51 8b c8
10579150: ff d2 8b 44 24 04 8b 4c 24 08 50 51 8b ce e8 4d
10579160: f4 b7 ff 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579120 <.text+0x578120>:
10579120:	83 ec 08                                        	sub    esp,0x8
10579123:	56                                              	push   esi
10579124:	e8 37 f3 b7 ff                                  	call   0x100f8460
10579129:	8b f0                                           	mov    esi,eax
1057912b:	e8 f0 1f fe ff                                  	call   0x1055b120
10579130:	33 c9                                           	xor    ecx,ecx
10579132:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10579136:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1057913a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057913c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
1057913f:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10579143:	51                                              	push   ecx
10579144:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10579148:	51                                              	push   ecx
10579149:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057914d:	51                                              	push   ecx
1057914e:	8b c8                                           	mov    ecx,eax
10579150:	ff d2                                           	call   edx
10579152:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10579156:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057915a:	50                                              	push   eax
1057915b:	51                                              	push   ecx
1057915c:	8b ce                                           	mov    ecx,esi
1057915e:	e8 4d f4 b7 ff                                  	call   0x100f85b0
10579163:	5e                                              	pop    esi
10579164:	83 c4 08                                        	add    esp,0x8
10579167:	c3                                              	ret
10579168:	cc                                              	int3
10579169:	cc                                              	int3
1057916a:	cc                                              	int3
1057916b:	cc                                              	int3
1057916c:	cc                                              	int3
1057916d:	cc                                              	int3
1057916e:	cc                                              	int3
1057916f:	cc                                              	int3
