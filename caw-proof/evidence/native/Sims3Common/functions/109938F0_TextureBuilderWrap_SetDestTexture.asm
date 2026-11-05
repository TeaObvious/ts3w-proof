# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109938f0 (TextureBuilderWrap_SetDestTexture)
Paired Ghidra pseudocode: 109938F0_TextureBuilderWrap_SetDestTexture.c
Window: [0x109938f0, 0x10993980) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109938f0: 55 8b ec 83 e4 f0 83 ec 20 8b 45 24 f3 0f 10 00
10993900: f3 0f 10 48 04 8b 45 20 8b 55 1c f3 0f 11 44 24
10993910: 0c f3 0f 11 44 24 08 f3 0f 11 4c 24 04 f3 0f 10
10993920: 48 04 f3 0f 11 04 24 0f 28 04 24 0f 29 44 24 10
10993930: f3 0f 10 00 8d 44 24 10 50 8b 45 18 8d 4c 24 04
10993940: 51 8b 4d 14 52 8b 55 10 50 51 8b 4d 08 f3 0f 11
10993950: 44 24 20 f3 0f 11 44 24 1c f3 0f 11 4c 24 18 f3
10993960: 0f 11 44 24 14 0f 28 44 24 14 52 0f 29 44 24 18
10993970: e8 cb 4b a6 ff f6 d8 1b c0 f7 d8 8b e5 5d c3 cc

LINEAR DISASSEMBLY
109938f0 <.text+0x9928f0>:
109938f0:	55                                              	push   ebp
109938f1:	8b ec                                           	mov    ebp,esp
109938f3:	83 e4 f0                                        	and    esp,0xfffffff0
109938f6:	83 ec 20                                        	sub    esp,0x20
109938f9:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
109938fc:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10993900:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10993905:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
10993908:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
1099390b:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10993911:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10993917:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1099391d:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10993922:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10993927:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099392b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10993930:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10993934:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10993938:	50                                              	push   eax
10993939:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1099393c:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10993940:	51                                              	push   ecx
10993941:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
10993944:	52                                              	push   edx
10993945:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
10993948:	50                                              	push   eax
10993949:	51                                              	push   ecx
1099394a:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1099394d:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10993953:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10993959:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1099395f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10993965:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
1099396a:	52                                              	push   edx
1099396b:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
10993970:	e8 cb 4b a6 ff                                  	call   0x103f8540
10993975:	f6 d8                                           	neg    al
10993977:	1b c0                                           	sbb    eax,eax
10993979:	f7 d8                                           	neg    eax
1099397b:	8b e5                                           	mov    esp,ebp
1099397d:	5d                                              	pop    ebp
1099397e:	c3                                              	ret
1099397f:	cc                                              	int3
