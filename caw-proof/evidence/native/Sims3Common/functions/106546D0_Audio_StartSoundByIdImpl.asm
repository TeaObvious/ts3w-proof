# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x106546d0 (Audio_StartSoundByIdImpl)
Paired Ghidra pseudocode: 106546D0_Audio_StartSoundByIdImpl.c
Window: [0x106546d0, 0x10654710) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
106546d0: 56 e8 8a f5 04 00 8b f0 85 f6 74 2a 8b 06 8b 50
106546e0: 44 68 65 53 47 03 8b ce ff d2 8b 4c 24 08 8b 06
106546f0: 8b 50 4c 51 68 85 53 47 03 8b ce ff d2 8b 06 8b
10654700: 50 68 8b ce ff d2 b0 01 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
106546d0 <.text+0x6536d0>:
106546d0:	56                                              	push   esi
106546d1:	e8 8a f5 04 00                                  	call   0x106a3c60
106546d6:	8b f0                                           	mov    esi,eax
106546d8:	85 f6                                           	test   esi,esi
106546da:	74 2a                                           	je     0x10654706
106546dc:	8b 06                                           	mov    eax,DWORD PTR [esi]
106546de:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
106546e1:	68 65 53 47 03                                  	push   0x3475365
106546e6:	8b ce                                           	mov    ecx,esi
106546e8:	ff d2                                           	call   edx
106546ea:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
106546ee:	8b 06                                           	mov    eax,DWORD PTR [esi]
106546f0:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
106546f3:	51                                              	push   ecx
106546f4:	68 85 53 47 03                                  	push   0x3475385
106546f9:	8b ce                                           	mov    ecx,esi
106546fb:	ff d2                                           	call   edx
106546fd:	8b 06                                           	mov    eax,DWORD PTR [esi]
106546ff:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
10654702:	8b ce                                           	mov    ecx,esi
10654704:	ff d2                                           	call   edx
10654706:	b0 01                                           	mov    al,0x1
10654708:	5e                                              	pop    esi
10654709:	c3                                              	ret
1065470a:	cc                                              	int3
1065470b:	cc                                              	int3
1065470c:	cc                                              	int3
1065470d:	cc                                              	int3
1065470e:	cc                                              	int3
1065470f:	cc                                              	int3
