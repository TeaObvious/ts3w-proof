# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10543320 (Route_SetPathEndOrientation)
Paired Ghidra pseudocode: 10543320_Route_SetPathEndOrientation.c
Window: [0x10543320, 0x10543350) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10543350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10543320: 8b 44 24 08 56 57 83 ec 40 8b fc b9 10 00 00 00
10543330: 8d 74 24 54 f3 a5 8b 4c 24 4c 50 51 e8 1f eb ff
10543340: ff 83 c4 48 5f 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10543320 <.text+0x542320>:
10543320:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10543324:	56                                              	push   esi
10543325:	57                                              	push   edi
10543326:	83 ec 40                                        	sub    esp,0x40
10543329:	8b fc                                           	mov    edi,esp
1054332b:	b9 10 00 00 00                                  	mov    ecx,0x10
10543330:	8d 74 24 54                                     	lea    esi,[esp+0x54]
10543334:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10543336:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
1054333a:	50                                              	push   eax
1054333b:	51                                              	push   ecx
1054333c:	e8 1f eb ff ff                                  	call   0x10541e60
10543341:	83 c4 48                                        	add    esp,0x48
10543344:	5f                                              	pop    edi
10543345:	5e                                              	pop    esi
10543346:	c3                                              	ret
10543347:	cc                                              	int3
10543348:	cc                                              	int3
10543349:	cc                                              	int3
1054334a:	cc                                              	int3
1054334b:	cc                                              	int3
1054334c:	cc                                              	int3
1054334d:	cc                                              	int3
1054334e:	cc                                              	int3
1054334f:	cc                                              	int3
