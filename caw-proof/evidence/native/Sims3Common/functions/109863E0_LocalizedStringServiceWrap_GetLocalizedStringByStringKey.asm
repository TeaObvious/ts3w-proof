# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109863e0 (LocalizedStringServiceWrap_GetLocalizedStringByStringKey)
Paired Ghidra pseudocode: 109863E0_LocalizedStringServiceWrap_GetLocalizedStringByStringKey.c
Window: [0x109863e0, 0x10986490) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109863e0: 83 ec 10 56 8b 74 24 18 85 f6 0f 84 8d 00 00 00
109863f0: e8 5b ee a0 ff 85 c0 0f 84 80 00 00 00 b9 44 82
10986400: ca 10 89 4c 24 04 89 4c 24 08 8d 4c 24 04 51 56
10986410: 8b c8 c7 44 24 18 d8 69 b9 10 c7 44 24 14 46 82
10986420: ca 10 e8 49 0d a1 ff 84 c0 74 33 8b 54 24 04 52
10986430: ff 15 c4 b6 aa 10 8b 4c 24 0c 8b f0 8b 44 24 04
10986440: 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8
10986450: 3c 2a f9 ff 83 c4 04 8b c6 5e 83 c4 10 c3 8b 54
10986460: 24 0c 8b 44 24 04 2b d0 83 e2 fe 83 fa 02 7e 0d
10986470: 85 c0 74 09 50 e8 16 2a f9 ff 83 c4 04 33 c0 5e
10986480: 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109863e0 <.text+0x9853e0>:
109863e0:	83 ec 10                                        	sub    esp,0x10
109863e3:	56                                              	push   esi
109863e4:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
109863e8:	85 f6                                           	test   esi,esi
109863ea:	0f 84 8d 00 00 00                               	je     0x1098647d
109863f0:	e8 5b ee a0 ff                                  	call   0x10395250
109863f5:	85 c0                                           	test   eax,eax
109863f7:	0f 84 80 00 00 00                               	je     0x1098647d
109863fd:	b9 44 82 ca 10                                  	mov    ecx,0x10ca8244
10986402:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10986406:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1098640a:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1098640e:	51                                              	push   ecx
1098640f:	56                                              	push   esi
10986410:	8b c8                                           	mov    ecx,eax
10986412:	c7 44 24 18 d8 69 b9 10                         	mov    DWORD PTR [esp+0x18],0x10b969d8
1098641a:	c7 44 24 14 46 82 ca 10                         	mov    DWORD PTR [esp+0x14],0x10ca8246
10986422:	e8 49 0d a1 ff                                  	call   0x10397170
10986427:	84 c0                                           	test   al,al
10986429:	74 33                                           	je     0x1098645e
1098642b:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098642f:	52                                              	push   edx
10986430:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10986436:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098643a:	8b f0                                           	mov    esi,eax
1098643c:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986440:	2b c8                                           	sub    ecx,eax
10986442:	83 e1 fe                                        	and    ecx,0xfffffffe
10986445:	83 f9 02                                        	cmp    ecx,0x2
10986448:	7e 0d                                           	jle    0x10986457
1098644a:	85 c0                                           	test   eax,eax
1098644c:	74 09                                           	je     0x10986457
1098644e:	50                                              	push   eax
1098644f:	e8 3c 2a f9 ff                                  	call   0x10918e90
10986454:	83 c4 04                                        	add    esp,0x4
10986457:	8b c6                                           	mov    eax,esi
10986459:	5e                                              	pop    esi
1098645a:	83 c4 10                                        	add    esp,0x10
1098645d:	c3                                              	ret
1098645e:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10986462:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10986466:	2b d0                                           	sub    edx,eax
10986468:	83 e2 fe                                        	and    edx,0xfffffffe
1098646b:	83 fa 02                                        	cmp    edx,0x2
1098646e:	7e 0d                                           	jle    0x1098647d
10986470:	85 c0                                           	test   eax,eax
10986472:	74 09                                           	je     0x1098647d
10986474:	50                                              	push   eax
10986475:	e8 16 2a f9 ff                                  	call   0x10918e90
1098647a:	83 c4 04                                        	add    esp,0x4
1098647d:	33 c0                                           	xor    eax,eax
1098647f:	5e                                              	pop    esi
10986480:	83 c4 10                                        	add    esp,0x10
10986483:	c3                                              	ret
10986484:	cc                                              	int3
10986485:	cc                                              	int3
10986486:	cc                                              	int3
10986487:	cc                                              	int3
10986488:	cc                                              	int3
10986489:	cc                                              	int3
1098648a:	cc                                              	int3
1098648b:	cc                                              	int3
1098648c:	cc                                              	int3
1098648d:	cc                                              	int3
1098648e:	cc                                              	int3
1098648f:	cc                                              	int3
