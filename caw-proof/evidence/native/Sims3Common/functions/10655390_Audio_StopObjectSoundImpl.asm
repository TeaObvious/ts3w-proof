# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655390 (Audio_StopObjectSoundImpl)
Paired Ghidra pseudocode: 10655390_Audio_StopObjectSoundImpl.c
Window: [0x10655390, 0x10655410) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655390: 51 c7 04 24 00 00 00 00 e8 03 4e 0d 00 85 c0 74
106553a0: 64 8b 4c 24 0c 8b 54 24 08 56 51 52 8b c8 e8 fd
106553b0: 57 0d 00 50 8d 4c 24 08 e8 b3 e3 01 00 8b 74 24
106553c0: 04 85 f6 74 3f a1 b0 d6 c8 10 50 8b ce e8 ce 19
106553d0: 0d 00 85 c0 74 0e 8b 4c 24 14 6a 00 51 8b c8 e8
106553e0: 8c fd 0d 00 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a
106553f0: 49 75 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01
10655400: 8b ce ff d2 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655390 <.text+0x654390>:
10655390:	51                                              	push   ecx
10655391:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
10655398:	e8 03 4e 0d 00                                  	call   0x1072a1a0
1065539d:	85 c0                                           	test   eax,eax
1065539f:	74 64                                           	je     0x10655405
106553a1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
106553a5:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
106553a9:	56                                              	push   esi
106553aa:	51                                              	push   ecx
106553ab:	52                                              	push   edx
106553ac:	8b c8                                           	mov    ecx,eax
106553ae:	e8 fd 57 0d 00                                  	call   0x1072abb0
106553b3:	50                                              	push   eax
106553b4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
106553b8:	e8 b3 e3 01 00                                  	call   0x10673770
106553bd:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
106553c1:	85 f6                                           	test   esi,esi
106553c3:	74 3f                                           	je     0x10655404
106553c5:	a1 b0 d6 c8 10                                  	mov    eax,ds:0x10c8d6b0
106553ca:	50                                              	push   eax
106553cb:	8b ce                                           	mov    ecx,esi
106553cd:	e8 ce 19 0d 00                                  	call   0x10726da0
106553d2:	85 c0                                           	test   eax,eax
106553d4:	74 0e                                           	je     0x106553e4
106553d6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
106553da:	6a 00                                           	push   0x0
106553dc:	51                                              	push   ecx
106553dd:	8b c8                                           	mov    ecx,eax
106553df:	e8 8c fd 0d 00                                  	call   0x10735170
106553e4:	8d 46 04                                        	lea    eax,[esi+0x4]
106553e7:	8b d0                                           	mov    edx,eax
106553e9:	83 c9 ff                                        	or     ecx,0xffffffff
106553ec:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
106553f0:	49                                              	dec    ecx
106553f1:	75 11                                           	jne    0x10655404
106553f3:	ba 01 00 00 00                                  	mov    edx,0x1
106553f8:	87 10                                           	xchg   DWORD PTR [eax],edx
106553fa:	8b 06                                           	mov    eax,DWORD PTR [esi]
106553fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
106553fe:	6a 01                                           	push   0x1
10655400:	8b ce                                           	mov    ecx,esi
10655402:	ff d2                                           	call   edx
10655404:	5e                                              	pop    esi
10655405:	59                                              	pop    ecx
10655406:	c3                                              	ret
10655407:	cc                                              	int3
10655408:	cc                                              	int3
10655409:	cc                                              	int3
1065540a:	cc                                              	int3
1065540b:	cc                                              	int3
1065540c:	cc                                              	int3
1065540d:	cc                                              	int3
1065540e:	cc                                              	int3
1065540f:	cc                                              	int3
