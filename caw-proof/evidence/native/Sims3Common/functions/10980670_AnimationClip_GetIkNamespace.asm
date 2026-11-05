# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980670 (AnimationClip_GetIkNamespace)
Paired Ghidra pseudocode: 10980670_AnimationClip_GetIkNamespace.c
Window: [0x10980670, 0x109806f0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x109806f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980670: 83 ec 10 8b 44 24 14 8b 48 08 8b 50 0c 89 0c 24
10980680: 8b 48 04 89 54 24 04 8b 10 56 89 4c 24 10 89 54
10980690: 24 0c be 20 e8 b6 10 c7 44 24 18 00 00 00 00 e8
109806a0: 2c 4a f6 ff 8b 10 8b 52 0c 6a 00 6a 00 6a 00 6a
109806b0: 00 8d 4c 24 28 51 8d 4c 24 18 51 8b c8 ff d2 84
109806c0: c0 74 24 8b 44 24 1c 8b 4c 24 18 57 50 8b f1 e8
109806d0: 1c 69 9f ff 8b 16 8b f8 8b 42 04 8b ce ff d0 8b
109806e0: c7 5f 5e 83 c4 10 c3 8b c6 5e 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
10980670 <.text+0x97f670>:
10980670:	83 ec 10                                        	sub    esp,0x10
10980673:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10980677:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098067a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098067d:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10980680:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10980683:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10980687:	8b 10                                           	mov    edx,DWORD PTR [eax]
10980689:	56                                              	push   esi
1098068a:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098068e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10980692:	be 20 e8 b6 10                                  	mov    esi,0x10b6e820
10980697:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1098069f:	e8 2c 4a f6 ff                                  	call   0x108e50d0
109806a4:	8b 10                                           	mov    edx,DWORD PTR [eax]
109806a6:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
109806a9:	6a 00                                           	push   0x0
109806ab:	6a 00                                           	push   0x0
109806ad:	6a 00                                           	push   0x0
109806af:	6a 00                                           	push   0x0
109806b1:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109806b5:	51                                              	push   ecx
109806b6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
109806ba:	51                                              	push   ecx
109806bb:	8b c8                                           	mov    ecx,eax
109806bd:	ff d2                                           	call   edx
109806bf:	84 c0                                           	test   al,al
109806c1:	74 24                                           	je     0x109806e7
109806c3:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
109806c7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
109806cb:	57                                              	push   edi
109806cc:	50                                              	push   eax
109806cd:	8b f1                                           	mov    esi,ecx
109806cf:	e8 1c 69 9f ff                                  	call   0x10376ff0
109806d4:	8b 16                                           	mov    edx,DWORD PTR [esi]
109806d6:	8b f8                                           	mov    edi,eax
109806d8:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109806db:	8b ce                                           	mov    ecx,esi
109806dd:	ff d0                                           	call   eax
109806df:	8b c7                                           	mov    eax,edi
109806e1:	5f                                              	pop    edi
109806e2:	5e                                              	pop    esi
109806e3:	83 c4 10                                        	add    esp,0x10
109806e6:	c3                                              	ret
109806e7:	8b c6                                           	mov    eax,esi
109806e9:	5e                                              	pop    esi
109806ea:	83 c4 10                                        	add    esp,0x10
109806ed:	c3                                              	ret
109806ee:	cc                                              	int3
109806ef:	cc                                              	int3
