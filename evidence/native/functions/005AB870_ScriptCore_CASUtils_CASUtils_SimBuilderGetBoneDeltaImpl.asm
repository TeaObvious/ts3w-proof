# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab870 (ScriptCore.CASUtils::CASUtils_SimBuilderGetBoneDeltaImpl)
Paired Ghidra pseudocode: 005AB870_ScriptCore_CASUtils_CASUtils_SimBuilderGetBoneDeltaImpl.c
Window: [0x005ab870, 0x005ab9c0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x005ab9c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab870: 55 8b ec 83 e4 f0 83 ec 58 56 57 e8 10 db 1b 00
005ab880: 8b f8 85 ff 0f 84 21 01 00 00 8b 75 08 8b c6 25
005ab890: 00 00 00 ff 3d 00 00 00 35 0f 85 0c 01 00 00 e8
005ab8a0: ec da 1b 00 8b 10 8b c8 8b 82 cc 00 00 00 56 ff
005ab8b0: d0 85 c0 0f 84 f2 00 00 00 8b 55 0c 8d 4c 24 08
005ab8c0: 51 52 8b c8 e8 77 73 03 00 8b f0 85 f6 0f 84 d8
005ab8d0: 00 00 00 8b 45 10 56 50 e8 73 08 1c 00 8b 55 18
005ab8e0: 8d 4e 20 51 52 e8 66 08 1c 00 0f 28 46 10 8b 4d
005ab8f0: 14 0f 29 44 24 20 f3 0f 10 44 24 2c f3 0f 11 41
005ab900: 0c 0f 28 46 10 83 c4 04 0f 29 44 24 1c d9 44 24
005ab910: 24 d9 5c 24 08 0f 29 44 24 2c d9 44 24 30 0f 29
005ab920: 44 24 3c d9 5c 24 04 d9 44 24 3c d9 1c 24 e8 3d
005ab930: 06 1c 00 8b 44 24 08 6a 00 6a ff 50 8d 4c 24 1c
005ab940: 51 e8 0a 82 f4 ff 83 c4 10 50 8d 4c 24 44 e8 4d
005ab950: f9 ff ff 8b 54 24 18 8b 44 24 10 2b d0 83 e2 fe
005ab960: 83 fa 02 7e 0d 85 c0 74 09 50 e8 71 8b f3 ff 83
005ab970: c4 04 8b 07 8b 40 50 8d 4c 24 0c 51 8d 54 24 44
005ab980: 52 8b cf ff d0 f6 44 24 48 04 8b 74 24 0c c7 44
005ab990: 24 40 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 44 e8 bd
005ab9a0: 9d f4 ff 8b c6 5f 5e 8b e5 5d c3 5f 33 c0 5e 8b
005ab9b0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab870 <.text+0x1aa870>:
  5ab870:	55                                              	push   ebp
  5ab871:	8b ec                                           	mov    ebp,esp
  5ab873:	83 e4 f0                                        	and    esp,0xfffffff0
  5ab876:	83 ec 58                                        	sub    esp,0x58
  5ab879:	56                                              	push   esi
  5ab87a:	57                                              	push   edi
  5ab87b:	e8 10 db 1b 00                                  	call   0x769390
  5ab880:	8b f8                                           	mov    edi,eax
  5ab882:	85 ff                                           	test   edi,edi
  5ab884:	0f 84 21 01 00 00                               	je     0x5ab9ab
  5ab88a:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
  5ab88d:	8b c6                                           	mov    eax,esi
  5ab88f:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab894:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab899:	0f 85 0c 01 00 00                               	jne    0x5ab9ab
  5ab89f:	e8 ec da 1b 00                                  	call   0x769390
  5ab8a4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5ab8a6:	8b c8                                           	mov    ecx,eax
  5ab8a8:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab8ae:	56                                              	push   esi
  5ab8af:	ff d0                                           	call   eax
  5ab8b1:	85 c0                                           	test   eax,eax
  5ab8b3:	0f 84 f2 00 00 00                               	je     0x5ab9ab
  5ab8b9:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  5ab8bc:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  5ab8c0:	51                                              	push   ecx
  5ab8c1:	52                                              	push   edx
  5ab8c2:	8b c8                                           	mov    ecx,eax
  5ab8c4:	e8 77 73 03 00                                  	call   0x5e2c40
  5ab8c9:	8b f0                                           	mov    esi,eax
  5ab8cb:	85 f6                                           	test   esi,esi
  5ab8cd:	0f 84 d8 00 00 00                               	je     0x5ab9ab
  5ab8d3:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
  5ab8d6:	56                                              	push   esi
  5ab8d7:	50                                              	push   eax
  5ab8d8:	e8 73 08 1c 00                                  	call   0x76c150
  5ab8dd:	8b 55 18                                        	mov    edx,DWORD PTR [ebp+0x18]
  5ab8e0:	8d 4e 20                                        	lea    ecx,[esi+0x20]
  5ab8e3:	51                                              	push   ecx
  5ab8e4:	52                                              	push   edx
  5ab8e5:	e8 66 08 1c 00                                  	call   0x76c150
  5ab8ea:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
  5ab8ee:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  5ab8f1:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
  5ab8f6:	f3 0f 10 44 24 2c                               	movss  xmm0,DWORD PTR [esp+0x2c]
  5ab8fc:	f3 0f 11 41 0c                                  	movss  DWORD PTR [ecx+0xc],xmm0
  5ab901:	0f 28 46 10                                     	movaps xmm0,XMMWORD PTR [esi+0x10]
  5ab905:	83 c4 04                                        	add    esp,0x4
  5ab908:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  5ab90d:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  5ab911:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5ab915:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
  5ab91a:	d9 44 24 30                                     	fld    DWORD PTR [esp+0x30]
  5ab91e:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  5ab923:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5ab927:	d9 44 24 3c                                     	fld    DWORD PTR [esp+0x3c]
  5ab92b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5ab92e:	e8 3d 06 1c 00                                  	call   0x76bf70
  5ab933:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5ab937:	6a 00                                           	push   0x0
  5ab939:	6a ff                                           	push   0xffffffff
  5ab93b:	50                                              	push   eax
  5ab93c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  5ab940:	51                                              	push   ecx
  5ab941:	e8 0a 82 f4 ff                                  	call   0x4f3b50
  5ab946:	83 c4 10                                        	add    esp,0x10
  5ab949:	50                                              	push   eax
  5ab94a:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5ab94e:	e8 4d f9 ff ff                                  	call   0x5ab2a0
  5ab953:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5ab957:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5ab95b:	2b d0                                           	sub    edx,eax
  5ab95d:	83 e2 fe                                        	and    edx,0xfffffffe
  5ab960:	83 fa 02                                        	cmp    edx,0x2
  5ab963:	7e 0d                                           	jle    0x5ab972
  5ab965:	85 c0                                           	test   eax,eax
  5ab967:	74 09                                           	je     0x5ab972
  5ab969:	50                                              	push   eax
  5ab96a:	e8 71 8b f3 ff                                  	call   0x4e44e0
  5ab96f:	83 c4 04                                        	add    esp,0x4
  5ab972:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5ab974:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  5ab977:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5ab97b:	51                                              	push   ecx
  5ab97c:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  5ab980:	52                                              	push   edx
  5ab981:	8b cf                                           	mov    ecx,edi
  5ab983:	ff d0                                           	call   eax
  5ab985:	f6 44 24 48 04                                  	test   BYTE PTR [esp+0x48],0x4
  5ab98a:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5ab98e:	c7 44 24 40 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x40],0xfba6f4
  5ab996:	74 0b                                           	je     0x5ab9a3
  5ab998:	6a 00                                           	push   0x0
  5ab99a:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  5ab99e:	e8 bd 9d f4 ff                                  	call   0x4f5760
  5ab9a3:	8b c6                                           	mov    eax,esi
  5ab9a5:	5f                                              	pop    edi
  5ab9a6:	5e                                              	pop    esi
  5ab9a7:	8b e5                                           	mov    esp,ebp
  5ab9a9:	5d                                              	pop    ebp
  5ab9aa:	c3                                              	ret
  5ab9ab:	5f                                              	pop    edi
  5ab9ac:	33 c0                                           	xor    eax,eax
  5ab9ae:	5e                                              	pop    esi
  5ab9af:	8b e5                                           	mov    esp,ebp
  5ab9b1:	5d                                              	pop    ebp
  5ab9b2:	c3                                              	ret
  5ab9b3:	cc                                              	int3
  5ab9b4:	cc                                              	int3
  5ab9b5:	cc                                              	int3
  5ab9b6:	cc                                              	int3
  5ab9b7:	cc                                              	int3
  5ab9b8:	cc                                              	int3
  5ab9b9:	cc                                              	int3
  5ab9ba:	cc                                              	int3
  5ab9bb:	cc                                              	int3
  5ab9bc:	cc                                              	int3
  5ab9bd:	cc                                              	int3
  5ab9be:	cc                                              	int3
  5ab9bf:	cc                                              	int3
