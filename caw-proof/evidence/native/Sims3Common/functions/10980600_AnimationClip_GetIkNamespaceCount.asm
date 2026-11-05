# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980600 (AnimationClip_GetIkNamespaceCount)
Paired Ghidra pseudocode: 10980600_AnimationClip_GetIkNamespaceCount.c
Window: [0x10980600, 0x10980670) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980600: 83 ec 10 8b 44 24 14 8b 48 08 8b 50 0c 56 89 4c
10980610: 24 04 8b 48 04 89 54 24 08 8b 10 33 f6 89 4c 24
10980620: 10 89 54 24 0c 89 74 24 18 e8 a2 4a f6 ff 8b 10
10980630: 8b 52 0c 56 56 56 56 8d 4c 24 28 51 8d 4c 24 18
10980640: 51 8b c8 ff d2 84 c0 74 1f 8b 4c 24 18 57 8b f1
10980650: e8 8b 69 9f ff 8b f8 8b 06 8b 50 04 8b ce ff d2
10980660: 8b c7 5f 5e 83 c4 10 c3 8b c6 5e 83 c4 10 c3 cc

LINEAR DISASSEMBLY
10980600 <.text+0x97f600>:
10980600:	83 ec 10                                        	sub    esp,0x10
10980603:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10980607:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
1098060a:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098060d:	56                                              	push   esi
1098060e:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10980612:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10980615:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
10980619:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098061b:	33 f6                                           	xor    esi,esi
1098061d:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
10980621:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10980625:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
10980629:	e8 a2 4a f6 ff                                  	call   0x108e50d0
1098062e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10980630:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10980633:	56                                              	push   esi
10980634:	56                                              	push   esi
10980635:	56                                              	push   esi
10980636:	56                                              	push   esi
10980637:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
1098063b:	51                                              	push   ecx
1098063c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10980640:	51                                              	push   ecx
10980641:	8b c8                                           	mov    ecx,eax
10980643:	ff d2                                           	call   edx
10980645:	84 c0                                           	test   al,al
10980647:	74 1f                                           	je     0x10980668
10980649:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1098064d:	57                                              	push   edi
1098064e:	8b f1                                           	mov    esi,ecx
10980650:	e8 8b 69 9f ff                                  	call   0x10376fe0
10980655:	8b f8                                           	mov    edi,eax
10980657:	8b 06                                           	mov    eax,DWORD PTR [esi]
10980659:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098065c:	8b ce                                           	mov    ecx,esi
1098065e:	ff d2                                           	call   edx
10980660:	8b c7                                           	mov    eax,edi
10980662:	5f                                              	pop    edi
10980663:	5e                                              	pop    esi
10980664:	83 c4 10                                        	add    esp,0x10
10980667:	c3                                              	ret
10980668:	8b c6                                           	mov    eax,esi
1098066a:	5e                                              	pop    esi
1098066b:	83 c4 10                                        	add    esp,0x10
1098066e:	c3                                              	ret
1098066f:	cc                                              	int3
