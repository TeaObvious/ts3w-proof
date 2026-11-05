# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579380 (World_ObjectDesigner_SetDesignPresetCompositorImpl)
Paired Ghidra pseudocode: 10579380_World_ObjectDesigner_SetDesignPresetCompositorImpl.c
Window: [0x10579380, 0x105793d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x105793d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579380: 83 ec 08 56 e8 d7 f0 b7 ff 8b f0 e8 90 1d fe ff
10579390: 33 c9 89 4c 24 04 89 4c 24 08 8b 10 8b 52 70 8d
105793a0: 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 18 51 8b c8
105793b0: ff d2 8b 44 24 04 8b 4c 24 08 50 51 8b ce e8 0d
105793c0: f1 b7 ff 5e 83 c4 08 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579380 <.text+0x578380>:
10579380:	83 ec 08                                        	sub    esp,0x8
10579383:	56                                              	push   esi
10579384:	e8 d7 f0 b7 ff                                  	call   0x100f8460
10579389:	8b f0                                           	mov    esi,eax
1057938b:	e8 90 1d fe ff                                  	call   0x1055b120
10579390:	33 c9                                           	xor    ecx,ecx
10579392:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10579396:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1057939a:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057939c:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
1057939f:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
105793a3:	51                                              	push   ecx
105793a4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
105793a8:	51                                              	push   ecx
105793a9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
105793ad:	51                                              	push   ecx
105793ae:	8b c8                                           	mov    ecx,eax
105793b0:	ff d2                                           	call   edx
105793b2:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105793b6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105793ba:	50                                              	push   eax
105793bb:	51                                              	push   ecx
105793bc:	8b ce                                           	mov    ecx,esi
105793be:	e8 0d f1 b7 ff                                  	call   0x100f84d0
105793c3:	5e                                              	pop    esi
105793c4:	83 c4 08                                        	add    esp,0x8
105793c7:	c3                                              	ret
105793c8:	cc                                              	int3
105793c9:	cc                                              	int3
105793ca:	cc                                              	int3
105793cb:	cc                                              	int3
105793cc:	cc                                              	int3
105793cd:	cc                                              	int3
105793ce:	cc                                              	int3
105793cf:	cc                                              	int3
