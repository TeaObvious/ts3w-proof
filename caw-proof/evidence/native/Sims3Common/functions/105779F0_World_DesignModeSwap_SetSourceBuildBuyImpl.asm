# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105779f0 (World_DesignModeSwap_SetSourceBuildBuyImpl)
Paired Ghidra pseudocode: 105779F0_World_DesignModeSwap_SetSourceBuildBuyImpl.c
Window: [0x105779f0, 0x10577a70) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105779f0: 55 8b ec 83 e4 f0 83 ec 10 e8 22 37 fe ff 8b 4d
10577a00: 08 8b d1 81 e2 00 00 00 ff 81 fa 00 00 00 45 74
10577a10: 06 32 c0 8b e5 5d c3 8b 10 51 8b c8 8b 82 cc 00
10577a20: 00 00 ff d0 85 c0 74 e9 f3 0f 10 4d 18 f3 0f 10
10577a30: 45 10 8b 55 0c f3 0f 11 4c 24 08 f3 0f 10 4d 14
10577a40: 8d 0c 24 51 f3 0f 11 44 24 10 f3 0f 11 4c 24 08
10577a50: f3 0f 11 44 24 04 0f 28 44 24 04 52 8b c8 0f 29
10577a60: 44 24 08 e8 98 7a aa ff 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
105779f0 <.text+0x5769f0>:
105779f0:	55                                              	push   ebp
105779f1:	8b ec                                           	mov    ebp,esp
105779f3:	83 e4 f0                                        	and    esp,0xfffffff0
105779f6:	83 ec 10                                        	sub    esp,0x10
105779f9:	e8 22 37 fe ff                                  	call   0x1055b120
105779fe:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10577a01:	8b d1                                           	mov    edx,ecx
10577a03:	81 e2 00 00 00 ff                               	and    edx,0xff000000
10577a09:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
10577a0f:	74 06                                           	je     0x10577a17
10577a11:	32 c0                                           	xor    al,al
10577a13:	8b e5                                           	mov    esp,ebp
10577a15:	5d                                              	pop    ebp
10577a16:	c3                                              	ret
10577a17:	8b 10                                           	mov    edx,DWORD PTR [eax]
10577a19:	51                                              	push   ecx
10577a1a:	8b c8                                           	mov    ecx,eax
10577a1c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10577a22:	ff d0                                           	call   eax
10577a24:	85 c0                                           	test   eax,eax
10577a26:	74 e9                                           	je     0x10577a11
10577a28:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10577a2d:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10577a32:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10577a35:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10577a3b:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
10577a40:	8d 0c 24                                        	lea    ecx,[esp]
10577a43:	51                                              	push   ecx
10577a44:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10577a4a:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10577a50:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10577a56:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
10577a5b:	52                                              	push   edx
10577a5c:	8b c8                                           	mov    ecx,eax
10577a5e:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
10577a63:	e8 98 7a aa ff                                  	call   0x1001f500
10577a68:	8b e5                                           	mov    esp,ebp
10577a6a:	5d                                              	pop    ebp
10577a6b:	c3                                              	ret
10577a6c:	cc                                              	int3
10577a6d:	cc                                              	int3
10577a6e:	cc                                              	int3
10577a6f:	cc                                              	int3
