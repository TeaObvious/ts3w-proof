# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10548430 (Route_UpdateRouteAnimationSpecMult)
Paired Ghidra pseudocode: 10548430_Route_UpdateRouteAnimationSpecMult.c
Window: [0x10548430, 0x10548480) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10548480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10548430: 8b 44 24 24 8b 4c 24 20 8b 54 24 10 50 51 8b 4c
10548440: 24 1c 83 ec 10 8b c4 89 10 8b 54 24 30 89 48 04
10548450: 8b 4c 24 34 89 50 08 8b 54 24 24 89 48 0c 8b 44
10548460: 24 20 8b 4c 24 1c 52 50 51 e8 62 cb ff ff 83 c4
10548470: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10548430 <.text+0x547430>:
10548430:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10548434:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10548438:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1054843c:	50                                              	push   eax
1054843d:	51                                              	push   ecx
1054843e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10548442:	83 ec 10                                        	sub    esp,0x10
10548445:	8b c4                                           	mov    eax,esp
10548447:	89 10                                           	mov    DWORD PTR [eax],edx
10548449:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1054844d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10548450:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10548454:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
10548457:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1054845b:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1054845e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10548462:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10548466:	52                                              	push   edx
10548467:	50                                              	push   eax
10548468:	51                                              	push   ecx
10548469:	e8 62 cb ff ff                                  	call   0x10544fd0
1054846e:	83 c4 24                                        	add    esp,0x24
10548471:	c3                                              	ret
10548472:	cc                                              	int3
10548473:	cc                                              	int3
10548474:	cc                                              	int3
10548475:	cc                                              	int3
10548476:	cc                                              	int3
10548477:	cc                                              	int3
10548478:	cc                                              	int3
10548479:	cc                                              	int3
1054847a:	cc                                              	int3
1054847b:	cc                                              	int3
1054847c:	cc                                              	int3
1054847d:	cc                                              	int3
1054847e:	cc                                              	int3
1054847f:	cc                                              	int3
