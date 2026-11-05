# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109806f0 (AnimationClip_GetMyNamespace)
Paired Ghidra pseudocode: 109806F0_AnimationClip_GetMyNamespace.c
Window: [0x109806f0, 0x10980770) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109806f0: 83 ec 10 8b 44 24 14 8b 48 08 8b 50 0c 89 0c 24
10980700: 8b 48 04 89 54 24 04 8b 10 56 89 4c 24 10 89 54
10980710: 24 0c be 20 e8 b6 10 c7 44 24 18 00 00 00 00 e8
10980720: ac 49 f6 ff 8b 10 8b 52 0c 6a 00 6a 00 6a 00 6a
10980730: 00 8d 4c 24 28 51 8d 4c 24 18 51 8b c8 ff d2 84
10980740: c0 74 1f 8b 4c 24 18 57 8b f1 e8 c1 68 9f ff 8b
10980750: f8 8b 06 8b 50 04 8b ce ff d2 8b c7 5f 5e 83 c4
10980760: 10 c3 8b c6 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109806f0 <.text+0x97f6f0>:
109806f0:	83 ec 10                                        	sub    esp,0x10
109806f3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109806f7:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
109806fa:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
109806fd:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10980700:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10980703:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10980707:	8b 10                                           	mov    edx,DWORD PTR [eax]
10980709:	56                                              	push   esi
1098070a:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098070e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10980712:	be 20 e8 b6 10                                  	mov    esi,0x10b6e820
10980717:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
1098071f:	e8 ac 49 f6 ff                                  	call   0x108e50d0
10980724:	8b 10                                           	mov    edx,DWORD PTR [eax]
10980726:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10980729:	6a 00                                           	push   0x0
1098072b:	6a 00                                           	push   0x0
1098072d:	6a 00                                           	push   0x0
1098072f:	6a 00                                           	push   0x0
10980731:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10980735:	51                                              	push   ecx
10980736:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1098073a:	51                                              	push   ecx
1098073b:	8b c8                                           	mov    ecx,eax
1098073d:	ff d2                                           	call   edx
1098073f:	84 c0                                           	test   al,al
10980741:	74 1f                                           	je     0x10980762
10980743:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10980747:	57                                              	push   edi
10980748:	8b f1                                           	mov    esi,ecx
1098074a:	e8 c1 68 9f ff                                  	call   0x10377010
1098074f:	8b f8                                           	mov    edi,eax
10980751:	8b 06                                           	mov    eax,DWORD PTR [esi]
10980753:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10980756:	8b ce                                           	mov    ecx,esi
10980758:	ff d2                                           	call   edx
1098075a:	8b c7                                           	mov    eax,edi
1098075c:	5f                                              	pop    edi
1098075d:	5e                                              	pop    esi
1098075e:	83 c4 10                                        	add    esp,0x10
10980761:	c3                                              	ret
10980762:	8b c6                                           	mov    eax,esi
10980764:	5e                                              	pop    esi
10980765:	83 c4 10                                        	add    esp,0x10
10980768:	c3                                              	ret
10980769:	cc                                              	int3
1098076a:	cc                                              	int3
1098076b:	cc                                              	int3
1098076c:	cc                                              	int3
1098076d:	cc                                              	int3
1098076e:	cc                                              	int3
1098076f:	cc                                              	int3
