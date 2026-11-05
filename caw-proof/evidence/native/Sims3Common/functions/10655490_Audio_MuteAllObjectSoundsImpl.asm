# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10655490 (Audio_MuteAllObjectSoundsImpl)
Paired Ghidra pseudocode: 10655490_Audio_MuteAllObjectSoundsImpl.c
Window: [0x10655490, 0x10655510) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10655510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10655490: 51 c7 04 24 00 00 00 00 e8 03 4d 0d 00 85 c0 74
106554a0: 62 8b 4c 24 0c 8b 54 24 08 56 51 52 8b c8 e8 fd
106554b0: 56 0d 00 50 8d 4c 24 08 e8 b3 e2 01 00 8b 74 24
106554c0: 04 85 f6 74 3d a1 b0 d6 c8 10 50 8b ce e8 ce 18
106554d0: 0d 00 85 c0 74 0c 8b 4c 24 14 51 8b c8 e8 8e f0
106554e0: 0d 00 8d 46 04 8b d0 83 c9 ff f0 0f c1 0a 49 75
106554f0: 11 ba 01 00 00 00 87 10 8b 06 8b 10 6a 01 8b ce
10655500: ff d2 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10655490 <.text+0x654490>:
10655490:	51                                              	push   ecx
10655491:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
10655498:	e8 03 4d 0d 00                                  	call   0x1072a1a0
1065549d:	85 c0                                           	test   eax,eax
1065549f:	74 62                                           	je     0x10655503
106554a1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
106554a5:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
106554a9:	56                                              	push   esi
106554aa:	51                                              	push   ecx
106554ab:	52                                              	push   edx
106554ac:	8b c8                                           	mov    ecx,eax
106554ae:	e8 fd 56 0d 00                                  	call   0x1072abb0
106554b3:	50                                              	push   eax
106554b4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
106554b8:	e8 b3 e2 01 00                                  	call   0x10673770
106554bd:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
106554c1:	85 f6                                           	test   esi,esi
106554c3:	74 3d                                           	je     0x10655502
106554c5:	a1 b0 d6 c8 10                                  	mov    eax,ds:0x10c8d6b0
106554ca:	50                                              	push   eax
106554cb:	8b ce                                           	mov    ecx,esi
106554cd:	e8 ce 18 0d 00                                  	call   0x10726da0
106554d2:	85 c0                                           	test   eax,eax
106554d4:	74 0c                                           	je     0x106554e2
106554d6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
106554da:	51                                              	push   ecx
106554db:	8b c8                                           	mov    ecx,eax
106554dd:	e8 8e f0 0d 00                                  	call   0x10734570
106554e2:	8d 46 04                                        	lea    eax,[esi+0x4]
106554e5:	8b d0                                           	mov    edx,eax
106554e7:	83 c9 ff                                        	or     ecx,0xffffffff
106554ea:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
106554ee:	49                                              	dec    ecx
106554ef:	75 11                                           	jne    0x10655502
106554f1:	ba 01 00 00 00                                  	mov    edx,0x1
106554f6:	87 10                                           	xchg   DWORD PTR [eax],edx
106554f8:	8b 06                                           	mov    eax,DWORD PTR [esi]
106554fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
106554fc:	6a 01                                           	push   0x1
106554fe:	8b ce                                           	mov    ecx,esi
10655500:	ff d2                                           	call   edx
10655502:	5e                                              	pop    esi
10655503:	59                                              	pop    ecx
10655504:	c3                                              	ret
10655505:	cc                                              	int3
10655506:	cc                                              	int3
10655507:	cc                                              	int3
10655508:	cc                                              	int3
10655509:	cc                                              	int3
1065550a:	cc                                              	int3
1065550b:	cc                                              	int3
1065550c:	cc                                              	int3
1065550d:	cc                                              	int3
1065550e:	cc                                              	int3
1065550f:	cc                                              	int3
