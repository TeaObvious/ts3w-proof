# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655410 (Audio_StopAllObjectSoundImpl)
Paired Ghidra pseudocode: 10655410_Audio_StopAllObjectSoundImpl.c
Window: [0x10655410, 0x10655490) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655410: 51 c7 04 24 00 00 00 00 e8 83 4d 0d 00 85 c0 74
10655420: 61 8b 4c 24 0c 8b 54 24 08 56 51 52 8b c8 e8 7d
10655430: 57 0d 00 50 8d 4c 24 08 e8 33 e3 01 00 8b 74 24
10655440: 04 85 f6 74 3c a1 b0 d6 c8 10 50 8b ce e8 4e 19
10655450: 0d 00 85 c0 74 0b 6a ff 6a 00 8b c8 e8 9f fd 0d
10655460: 00 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11
10655470: b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff
10655480: d0 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655410 <.text+0x654410>:
10655410:	51                                              	push   ecx
10655411:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
10655418:	e8 83 4d 0d 00                                  	call   0x1072a1a0
1065541d:	85 c0                                           	test   eax,eax
1065541f:	74 61                                           	je     0x10655482
10655421:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10655425:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10655429:	56                                              	push   esi
1065542a:	51                                              	push   ecx
1065542b:	52                                              	push   edx
1065542c:	8b c8                                           	mov    ecx,eax
1065542e:	e8 7d 57 0d 00                                  	call   0x1072abb0
10655433:	50                                              	push   eax
10655434:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
10655438:	e8 33 e3 01 00                                  	call   0x10673770
1065543d:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
10655441:	85 f6                                           	test   esi,esi
10655443:	74 3c                                           	je     0x10655481
10655445:	a1 b0 d6 c8 10                                  	mov    eax,ds:0x10c8d6b0
1065544a:	50                                              	push   eax
1065544b:	8b ce                                           	mov    ecx,esi
1065544d:	e8 4e 19 0d 00                                  	call   0x10726da0
10655452:	85 c0                                           	test   eax,eax
10655454:	74 0b                                           	je     0x10655461
10655456:	6a ff                                           	push   0xffffffff
10655458:	6a 00                                           	push   0x0
1065545a:	8b c8                                           	mov    ecx,eax
1065545c:	e8 9f fd 0d 00                                  	call   0x10735200
10655461:	8d 46 04                                        	lea    eax,[esi+0x4]
10655464:	8b c8                                           	mov    ecx,eax
10655466:	83 ca ff                                        	or     edx,0xffffffff
10655469:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
1065546d:	4a                                              	dec    edx
1065546e:	75 11                                           	jne    0x10655481
10655470:	b9 01 00 00 00                                  	mov    ecx,0x1
10655475:	87 08                                           	xchg   DWORD PTR [eax],ecx
10655477:	8b 16                                           	mov    edx,DWORD PTR [esi]
10655479:	8b 02                                           	mov    eax,DWORD PTR [edx]
1065547b:	6a 01                                           	push   0x1
1065547d:	8b ce                                           	mov    ecx,esi
1065547f:	ff d0                                           	call   eax
10655481:	5e                                              	pop    esi
10655482:	59                                              	pop    ecx
10655483:	c3                                              	ret
10655484:	cc                                              	int3
10655485:	cc                                              	int3
10655486:	cc                                              	int3
10655487:	cc                                              	int3
10655488:	cc                                              	int3
10655489:	cc                                              	int3
1065548a:	cc                                              	int3
1065548b:	cc                                              	int3
1065548c:	cc                                              	int3
1065548d:	cc                                              	int3
1065548e:	cc                                              	int3
1065548f:	cc                                              	int3
