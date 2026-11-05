# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec27a0 (ScriptCore.GameUtils::GameUtils_WaitForSimService)
Paired Ghidra pseudocode: 00EC27A0_ScriptCore_GameUtils_GameUtils_WaitForSimService.c
Window: [0x00ec27a0, 0x00ec2890) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec2890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec27a0: 83 ec 08 56 57 e8 e6 6b 8a ff 8b f8 8b 07 8b 90
00ec27b0: 18 01 00 00 8b cf ff d2 6a 00 6a 00 6a 00 6a 00
00ec27c0: 68 50 33 0f 01 6a 18 89 44 24 20 89 54 24 24 e8
00ec27d0: 2c 1d 62 ff 8b f0 83 c4 18 85 f6 0f 84 a3 00 00
00ec27e0: 00 53 55 c7 06 78 4a ff 00 33 c0 8d 4e 04 87 01
00ec27f0: 8b 54 24 10 8b 44 24 14 c7 46 08 8c 2b fa 00 c7
00ec2800: 46 0c 54 b4 f9 00 8d 5e 08 8d 6e 0c 89 46 14 c7
00ec2810: 06 3c 33 0f 01 c7 03 2c 33 0f 01 c7 45 00 20 33
00ec2820: 0f 01 89 56 10 8b 16 8b 42 04 8b ce ff d0 e8 bd
00ec2830: 9c 58 ff 85 c0 74 12 8b 10 53 6a 00 55 8b c8 8b
00ec2840: 42 1c 68 cd e5 a8 d4 ff d0 8b 44 24 1c 8b 4c 24
00ec2850: 14 8b 17 8b 92 20 01 00 00 6a 00 50 8b 44 24 18
00ec2860: 6a ff 51 50 8b cf ff d2 8b 07 8b 90 1c 01 00 00
00ec2870: 8b cf ff d2 8b 06 8b 50 08 5d 5b 5f 8b ce 5e 83
00ec2880: c4 08 ff e2 5f 5e 83 c4 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec27a0 <.text+0xac17a0>:
  ec27a0:	83 ec 08                                        	sub    esp,0x8
  ec27a3:	56                                              	push   esi
  ec27a4:	57                                              	push   edi
  ec27a5:	e8 e6 6b 8a ff                                  	call   0x769390
  ec27aa:	8b f8                                           	mov    edi,eax
  ec27ac:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec27ae:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  ec27b4:	8b cf                                           	mov    ecx,edi
  ec27b6:	ff d2                                           	call   edx
  ec27b8:	6a 00                                           	push   0x0
  ec27ba:	6a 00                                           	push   0x0
  ec27bc:	6a 00                                           	push   0x0
  ec27be:	6a 00                                           	push   0x0
  ec27c0:	68 50 33 0f 01                                  	push   0x10f3350
  ec27c5:	6a 18                                           	push   0x18
  ec27c7:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  ec27cb:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  ec27cf:	e8 2c 1d 62 ff                                  	call   0x4e4500
  ec27d4:	8b f0                                           	mov    esi,eax
  ec27d6:	83 c4 18                                        	add    esp,0x18
  ec27d9:	85 f6                                           	test   esi,esi
  ec27db:	0f 84 a3 00 00 00                               	je     0xec2884
  ec27e1:	53                                              	push   ebx
  ec27e2:	55                                              	push   ebp
  ec27e3:	c7 06 78 4a ff 00                               	mov    DWORD PTR [esi],0xff4a78
  ec27e9:	33 c0                                           	xor    eax,eax
  ec27eb:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  ec27ee:	87 01                                           	xchg   DWORD PTR [ecx],eax
  ec27f0:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ec27f4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ec27f8:	c7 46 08 8c 2b fa 00                            	mov    DWORD PTR [esi+0x8],0xfa2b8c
  ec27ff:	c7 46 0c 54 b4 f9 00                            	mov    DWORD PTR [esi+0xc],0xf9b454
  ec2806:	8d 5e 08                                        	lea    ebx,[esi+0x8]
  ec2809:	8d 6e 0c                                        	lea    ebp,[esi+0xc]
  ec280c:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  ec280f:	c7 06 3c 33 0f 01                               	mov    DWORD PTR [esi],0x10f333c
  ec2815:	c7 03 2c 33 0f 01                               	mov    DWORD PTR [ebx],0x10f332c
  ec281b:	c7 45 00 20 33 0f 01                            	mov    DWORD PTR [ebp+0x0],0x10f3320
  ec2822:	89 56 10                                        	mov    DWORD PTR [esi+0x10],edx
  ec2825:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ec2827:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  ec282a:	8b ce                                           	mov    ecx,esi
  ec282c:	ff d0                                           	call   eax
  ec282e:	e8 bd 9c 58 ff                                  	call   0x44c4f0
  ec2833:	85 c0                                           	test   eax,eax
  ec2835:	74 12                                           	je     0xec2849
  ec2837:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec2839:	53                                              	push   ebx
  ec283a:	6a 00                                           	push   0x0
  ec283c:	55                                              	push   ebp
  ec283d:	8b c8                                           	mov    ecx,eax
  ec283f:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  ec2842:	68 cd e5 a8 d4                                  	push   0xd4a8e5cd
  ec2847:	ff d0                                           	call   eax
  ec2849:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  ec284d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec2851:	8b 17                                           	mov    edx,DWORD PTR [edi]
  ec2853:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  ec2859:	6a 00                                           	push   0x0
  ec285b:	50                                              	push   eax
  ec285c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  ec2860:	6a ff                                           	push   0xffffffff
  ec2862:	51                                              	push   ecx
  ec2863:	50                                              	push   eax
  ec2864:	8b cf                                           	mov    ecx,edi
  ec2866:	ff d2                                           	call   edx
  ec2868:	8b 07                                           	mov    eax,DWORD PTR [edi]
  ec286a:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  ec2870:	8b cf                                           	mov    ecx,edi
  ec2872:	ff d2                                           	call   edx
  ec2874:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec2876:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  ec2879:	5d                                              	pop    ebp
  ec287a:	5b                                              	pop    ebx
  ec287b:	5f                                              	pop    edi
  ec287c:	8b ce                                           	mov    ecx,esi
  ec287e:	5e                                              	pop    esi
  ec287f:	83 c4 08                                        	add    esp,0x8
  ec2882:	ff e2                                           	jmp    edx
  ec2884:	5f                                              	pop    edi
  ec2885:	5e                                              	pop    esi
  ec2886:	83 c4 08                                        	add    esp,0x8
  ec2889:	c3                                              	ret
  ec288a:	cc                                              	int3
  ec288b:	cc                                              	int3
  ec288c:	cc                                              	int3
  ec288d:	cc                                              	int3
  ec288e:	cc                                              	int3
  ec288f:	cc                                              	int3
