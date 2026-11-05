# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073a2f0 (ScriptCore.Animation::Animation_SetBonePosition)
Paired Ghidra pseudocode: 0073A2F0_ScriptCore_Animation_Animation_SetBonePosition.c
Window: [0x0073a2f0, 0x0073a3d0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073a3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073a2f0: 55 8b ec 83 e4 f0 83 ec 18 56 57 e8 70 d2 1f 00
0073a300: 8b 4d 0c 8b 55 08 51 52 8b c8 e8 71 dc 1f 00 8b
0073a310: f0 85 f6 0f 84 a8 00 00 00 8d 7e 04 8b c7 b9 01
0073a320: 00 00 00 f0 0f c1 08 8b 15 84 d4 1d 01 52 8b ce
0073a330: e8 2b 9f 1f 00 85 c0 74 6b 68 98 3a 00 00 8b c8
0073a340: e8 5b 28 20 00 85 c0 74 5b 8d 48 08 8b 01 8b 50
0073a350: 04 68 68 ed 64 06 ff d2 85 c0 74 48 f3 0f 10 4d
0073a360: 1c d9 45 20 f3 0f 10 45 14 8b 55 10 51 f3 0f 11
0073a370: 4c 24 1c d9 1c 24 f3 0f 10 4d 18 8d 4c 24 14 51
0073a380: f3 0f 11 44 24 24 f3 0f 11 4c 24 1c f3 0f 11 44
0073a390: 24 18 0f 28 44 24 18 52 8b c8 0f 29 44 24 1c e8
0073a3a0: fc 19 e3 ff 8b c7 83 c9 ff f0 0f c1 08 49 75 11
0073a3b0: ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff
0073a3c0: d2 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073a2f0 <.text+0x3392f0>:
  73a2f0:	55                                              	push   ebp
  73a2f1:	8b ec                                           	mov    ebp,esp
  73a2f3:	83 e4 f0                                        	and    esp,0xfffffff0
  73a2f6:	83 ec 18                                        	sub    esp,0x18
  73a2f9:	56                                              	push   esi
  73a2fa:	57                                              	push   edi
  73a2fb:	e8 70 d2 1f 00                                  	call   0x937570
  73a300:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  73a303:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  73a306:	51                                              	push   ecx
  73a307:	52                                              	push   edx
  73a308:	8b c8                                           	mov    ecx,eax
  73a30a:	e8 71 dc 1f 00                                  	call   0x937f80
  73a30f:	8b f0                                           	mov    esi,eax
  73a311:	85 f6                                           	test   esi,esi
  73a313:	0f 84 a8 00 00 00                               	je     0x73a3c1
  73a319:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73a31c:	8b c7                                           	mov    eax,edi
  73a31e:	b9 01 00 00 00                                  	mov    ecx,0x1
  73a323:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73a327:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73a32d:	52                                              	push   edx
  73a32e:	8b ce                                           	mov    ecx,esi
  73a330:	e8 2b 9f 1f 00                                  	call   0x934260
  73a335:	85 c0                                           	test   eax,eax
  73a337:	74 6b                                           	je     0x73a3a4
  73a339:	68 98 3a 00 00                                  	push   0x3a98
  73a33e:	8b c8                                           	mov    ecx,eax
  73a340:	e8 5b 28 20 00                                  	call   0x93cba0
  73a345:	85 c0                                           	test   eax,eax
  73a347:	74 5b                                           	je     0x73a3a4
  73a349:	8d 48 08                                        	lea    ecx,[eax+0x8]
  73a34c:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  73a34e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  73a351:	68 68 ed 64 06                                  	push   0x664ed68
  73a356:	ff d2                                           	call   edx
  73a358:	85 c0                                           	test   eax,eax
  73a35a:	74 48                                           	je     0x73a3a4
  73a35c:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  73a361:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  73a364:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  73a369:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  73a36c:	51                                              	push   ecx
  73a36d:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  73a373:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73a376:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  73a37b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73a37f:	51                                              	push   ecx
  73a380:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  73a386:	f3 0f 11 4c 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm1
  73a38c:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
  73a392:	0f 28 44 24 18                                  	movaps xmm0,XMMWORD PTR [esp+0x18]
  73a397:	52                                              	push   edx
  73a398:	8b c8                                           	mov    ecx,eax
  73a39a:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  73a39f:	e8 fc 19 e3 ff                                  	call   0x56bda0
  73a3a4:	8b c7                                           	mov    eax,edi
  73a3a6:	83 c9 ff                                        	or     ecx,0xffffffff
  73a3a9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73a3ad:	49                                              	dec    ecx
  73a3ae:	75 11                                           	jne    0x73a3c1
  73a3b0:	ba 01 00 00 00                                  	mov    edx,0x1
  73a3b5:	87 17                                           	xchg   DWORD PTR [edi],edx
  73a3b7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73a3b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73a3bb:	6a 01                                           	push   0x1
  73a3bd:	8b ce                                           	mov    ecx,esi
  73a3bf:	ff d2                                           	call   edx
  73a3c1:	5f                                              	pop    edi
  73a3c2:	5e                                              	pop    esi
  73a3c3:	8b e5                                           	mov    esp,ebp
  73a3c5:	5d                                              	pop    ebp
  73a3c6:	c3                                              	ret
  73a3c7:	cc                                              	int3
  73a3c8:	cc                                              	int3
  73a3c9:	cc                                              	int3
  73a3ca:	cc                                              	int3
  73a3cb:	cc                                              	int3
  73a3cc:	cc                                              	int3
  73a3cd:	cc                                              	int3
  73a3ce:	cc                                              	int3
  73a3cf:	cc                                              	int3
