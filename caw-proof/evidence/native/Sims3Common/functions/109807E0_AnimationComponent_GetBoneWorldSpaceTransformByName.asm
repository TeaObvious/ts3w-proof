# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109807e0 (AnimationComponent_GetBoneWorldSpaceTransformByName)
Paired Ghidra pseudocode: 109807E0_AnimationComponent_GetBoneWorldSpaceTransformByName.c
Window: [0x109807e0, 0x10980850) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980850
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109807e0: 55 8b ec 83 e4 f0 8b 4d 0c 81 ec 88 00 00 00 85
109807f0: c9 56 57 74 38 8b 55 10 8d 44 24 10 50 52 e8 ad
10980800: f3 da ff 84 c0 74 26 8d 44 24 10 50 8d 4c 24 54
10980810: 51 e8 0a f8 ff ff 8b f0 8b 45 08 b9 10 00 00 00
10980820: 8b f8 83 c4 08 f3 a5 5f 5e 8b e5 5d c3 8b 45 08
10980830: be 50 63 b9 10 b9 10 00 00 00 8b f8 f3 a5 5f 5e
10980840: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109807e0 <.text+0x97f7e0>:
109807e0:	55                                              	push   ebp
109807e1:	8b ec                                           	mov    ebp,esp
109807e3:	83 e4 f0                                        	and    esp,0xfffffff0
109807e6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
109807e9:	81 ec 88 00 00 00                               	sub    esp,0x88
109807ef:	85 c9                                           	test   ecx,ecx
109807f1:	56                                              	push   esi
109807f2:	57                                              	push   edi
109807f3:	74 38                                           	je     0x1098082d
109807f5:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
109807f8:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109807fc:	50                                              	push   eax
109807fd:	52                                              	push   edx
109807fe:	e8 ad f3 da ff                                  	call   0x1072fbb0
10980803:	84 c0                                           	test   al,al
10980805:	74 26                                           	je     0x1098082d
10980807:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098080b:	50                                              	push   eax
1098080c:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
10980810:	51                                              	push   ecx
10980811:	e8 0a f8 ff ff                                  	call   0x10980020
10980816:	8b f0                                           	mov    esi,eax
10980818:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098081b:	b9 10 00 00 00                                  	mov    ecx,0x10
10980820:	8b f8                                           	mov    edi,eax
10980822:	83 c4 08                                        	add    esp,0x8
10980825:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980827:	5f                                              	pop    edi
10980828:	5e                                              	pop    esi
10980829:	8b e5                                           	mov    esp,ebp
1098082b:	5d                                              	pop    ebp
1098082c:	c3                                              	ret
1098082d:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980830:	be 50 63 b9 10                                  	mov    esi,0x10b96350
10980835:	b9 10 00 00 00                                  	mov    ecx,0x10
1098083a:	8b f8                                           	mov    edi,eax
1098083c:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1098083e:	5f                                              	pop    edi
1098083f:	5e                                              	pop    esi
10980840:	8b e5                                           	mov    esp,ebp
10980842:	5d                                              	pop    ebp
10980843:	c3                                              	ret
10980844:	cc                                              	int3
10980845:	cc                                              	int3
10980846:	cc                                              	int3
10980847:	cc                                              	int3
10980848:	cc                                              	int3
10980849:	cc                                              	int3
1098084a:	cc                                              	int3
1098084b:	cc                                              	int3
1098084c:	cc                                              	int3
1098084d:	cc                                              	int3
1098084e:	cc                                              	int3
1098084f:	cc                                              	int3
