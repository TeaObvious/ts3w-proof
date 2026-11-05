# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10543350 (Route_ClearObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 10543350_Route_ClearObjectToIgnoreForRouteEndTurn.c
Window: [0x10543350, 0x10543390) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10543390
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10543350: 8b 0d 44 89 c7 10 85 c9 74 35 8b 44 24 04 56 50
10543360: e8 8b 8d ff ff 8b f0 85 f6 74 23 8b 16 8b 42 10
10543370: 8b ce ff d0 8d 8e 58 01 00 00 e8 c1 ad 0c 00 8b
10543380: 08 89 48 04 8b 16 8b 42 14 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
10543350 <.text+0x542350>:
10543350:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
10543356:	85 c9                                           	test   ecx,ecx
10543358:	74 35                                           	je     0x1054338f
1054335a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1054335e:	56                                              	push   esi
1054335f:	50                                              	push   eax
10543360:	e8 8b 8d ff ff                                  	call   0x1053c0f0
10543365:	8b f0                                           	mov    esi,eax
10543367:	85 f6                                           	test   esi,esi
10543369:	74 23                                           	je     0x1054338e
1054336b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054336d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10543370:	8b ce                                           	mov    ecx,esi
10543372:	ff d0                                           	call   eax
10543374:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
1054337a:	e8 c1 ad 0c 00                                  	call   0x1060e140
1054337f:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10543381:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10543384:	8b 16                                           	mov    edx,DWORD PTR [esi]
10543386:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10543389:	8b ce                                           	mov    ecx,esi
1054338b:	5e                                              	pop    esi
1054338c:	ff e0                                           	jmp    eax
1054338e:	5e                                              	pop    esi
1054338f:	c3                                              	ret
