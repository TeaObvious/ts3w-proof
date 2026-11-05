# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10555140 (RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec)
Paired Ghidra pseudocode: 10555140_RouteManager_CalculateMinimumDistanceForLocomotionAnimSpec.c
Window: [0x10555140, 0x10555180) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10555180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10555140: 8b 4c 24 0c 8b 54 24 10 83 ec 10 8b c4 89 08 8b
10555150: 4c 24 24 89 50 04 8b 54 24 28 89 48 08 8b 4c 24
10555160: 14 89 50 0c 8b 44 24 18 50 51 e8 81 f9 ff ff 83
10555170: c4 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10555140 <.text+0x554140>:
10555140:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10555144:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10555148:	83 ec 10                                        	sub    esp,0x10
1055514b:	8b c4                                           	mov    eax,esp
1055514d:	89 08                                           	mov    DWORD PTR [eax],ecx
1055514f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10555153:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10555156:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1055515a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1055515d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10555161:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10555164:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10555168:	50                                              	push   eax
10555169:	51                                              	push   ecx
1055516a:	e8 81 f9 ff ff                                  	call   0x10554af0
1055516f:	83 c4 18                                        	add    esp,0x18
10555172:	c3                                              	ret
10555173:	cc                                              	int3
10555174:	cc                                              	int3
10555175:	cc                                              	int3
10555176:	cc                                              	int3
10555177:	cc                                              	int3
10555178:	cc                                              	int3
10555179:	cc                                              	int3
1055517a:	cc                                              	int3
1055517b:	cc                                              	int3
1055517c:	cc                                              	int3
1055517d:	cc                                              	int3
1055517e:	cc                                              	int3
1055517f:	cc                                              	int3
