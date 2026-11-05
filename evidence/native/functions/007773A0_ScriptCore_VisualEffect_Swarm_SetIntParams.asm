# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007773a0 (ScriptCore.VisualEffect::Swarm_SetIntParams)
Paired Ghidra pseudocode: 007773A0_ScriptCore_VisualEffect_Swarm_SetIntParams.c
Window: [0x007773a0, 0x00777400) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007773a0: 83 ec 08 e8 e8 1f ff ff 33 c9 3b c1 74 42 8b 10
007773b0: 8b 52 74 89 0c 24 89 4c 24 04 8d 0c 24 51 8d 4c
007773c0: 24 08 51 8b 4c 24 20 51 8b c8 ff d2 8b 04 24 8b
007773d0: 4c 24 04 8b 54 24 14 50 8b 44 24 14 51 8b 4c 24
007773e0: 14 52 50 51 e8 67 fe ff ff 83 c4 14 83 c4 08 c3
007773f0: 32 c0 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007773a0 <.text+0x3763a0>:
  7773a0:	83 ec 08                                        	sub    esp,0x8
  7773a3:	e8 e8 1f ff ff                                  	call   0x769390
  7773a8:	33 c9                                           	xor    ecx,ecx
  7773aa:	3b c1                                           	cmp    eax,ecx
  7773ac:	74 42                                           	je     0x7773f0
  7773ae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7773b0:	8b 52 74                                        	mov    edx,DWORD PTR [edx+0x74]
  7773b3:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  7773b6:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  7773ba:	8d 0c 24                                        	lea    ecx,[esp]
  7773bd:	51                                              	push   ecx
  7773be:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7773c2:	51                                              	push   ecx
  7773c3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7773c7:	51                                              	push   ecx
  7773c8:	8b c8                                           	mov    ecx,eax
  7773ca:	ff d2                                           	call   edx
  7773cc:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  7773cf:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7773d3:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7773d7:	50                                              	push   eax
  7773d8:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7773dc:	51                                              	push   ecx
  7773dd:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7773e1:	52                                              	push   edx
  7773e2:	50                                              	push   eax
  7773e3:	51                                              	push   ecx
  7773e4:	e8 67 fe ff ff                                  	call   0x777250
  7773e9:	83 c4 14                                        	add    esp,0x14
  7773ec:	83 c4 08                                        	add    esp,0x8
  7773ef:	c3                                              	ret
  7773f0:	32 c0                                           	xor    al,al
  7773f2:	83 c4 08                                        	add    esp,0x8
  7773f5:	c3                                              	ret
  7773f6:	cc                                              	int3
  7773f7:	cc                                              	int3
  7773f8:	cc                                              	int3
  7773f9:	cc                                              	int3
  7773fa:	cc                                              	int3
  7773fb:	cc                                              	int3
  7773fc:	cc                                              	int3
  7773fd:	cc                                              	int3
  7773fe:	cc                                              	int3
  7773ff:	cc                                              	int3
