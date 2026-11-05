# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569430 (Swarm_SetFloatParams)
Paired Ghidra pseudocode: 10569430_Swarm_SetFloatParams.c
Window: [0x10569430, 0x10569490) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569430: 83 ec 08 e8 e8 1c ff ff 33 c9 3b c1 74 42 8b 10
10569440: 8b 52 78 89 0c 24 89 4c 24 04 8d 0c 24 51 8d 4c
10569450: 24 08 51 8b 4c 24 20 51 8b c8 ff d2 8b 04 24 8b
10569460: 4c 24 04 8b 54 24 14 50 8b 44 24 14 51 8b 4c 24
10569470: 14 52 50 51 e8 e7 fc ff ff 83 c4 14 83 c4 08 c3
10569480: 32 c0 83 c4 08 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569430 <.text+0x568430>:
10569430:	83 ec 08                                        	sub    esp,0x8
10569433:	e8 e8 1c ff ff                                  	call   0x1055b120
10569438:	33 c9                                           	xor    ecx,ecx
1056943a:	3b c1                                           	cmp    eax,ecx
1056943c:	74 42                                           	je     0x10569480
1056943e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10569440:	8b 52 78                                        	mov    edx,DWORD PTR [edx+0x78]
10569443:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10569446:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1056944a:	8d 0c 24                                        	lea    ecx,[esp]
1056944d:	51                                              	push   ecx
1056944e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10569452:	51                                              	push   ecx
10569453:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10569457:	51                                              	push   ecx
10569458:	8b c8                                           	mov    ecx,eax
1056945a:	ff d2                                           	call   edx
1056945c:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1056945f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10569463:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10569467:	50                                              	push   eax
10569468:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1056946c:	51                                              	push   ecx
1056946d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10569471:	52                                              	push   edx
10569472:	50                                              	push   eax
10569473:	51                                              	push   ecx
10569474:	e8 e7 fc ff ff                                  	call   0x10569160
10569479:	83 c4 14                                        	add    esp,0x14
1056947c:	83 c4 08                                        	add    esp,0x8
1056947f:	c3                                              	ret
10569480:	32 c0                                           	xor    al,al
10569482:	83 c4 08                                        	add    esp,0x8
10569485:	c3                                              	ret
10569486:	cc                                              	int3
10569487:	cc                                              	int3
10569488:	cc                                              	int3
10569489:	cc                                              	int3
1056948a:	cc                                              	int3
1056948b:	cc                                              	int3
1056948c:	cc                                              	int3
1056948d:	cc                                              	int3
1056948e:	cc                                              	int3
1056948f:	cc                                              	int3
