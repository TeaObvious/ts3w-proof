# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a0a0 (WorldWrap_GetSnapPosition)
Paired Ghidra pseudocode: 1099A0A0_WorldWrap_GetSnapPosition.c
Window: [0x1099a0a0, 0x1099a170) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a0a0: 55 8b ec 83 e4 f0 8b 45 08 8b 48 6c 83 ec 20 85
1099a0b0: c9 0f 84 a6 00 00 00 8b 45 0c 83 7d 18 00 f3 0f
1099a0c0: 10 48 08 f3 0f 10 00 0f 95 c2 83 7d 14 00 f3 0f
1099a0d0: 11 4c 24 08 f3 0f 10 48 04 0f 95 c0 f3 0f 11 44
1099a0e0: 24 0c f3 0f 11 4c 24 04 52 8d 54 24 14 f3 0f 11
1099a0f0: 44 24 04 0f 28 44 24 04 50 52 8d 44 24 0c 50 0f
1099a100: 29 44 24 10 e8 d7 61 86 ff 0f 28 44 24 10 8b 4d
1099a110: 10 0f 29 44 24 10 f3 0f 10 4c 24 10 f3 0f 11 0c
1099a120: 24 8b 14 24 0f 29 44 24 10 f3 0f 10 4c 24 14 89
1099a130: 11 f3 0f 11 4c 24 04 8b 54 24 04 0f 29 44 24 10
1099a140: f3 0f 10 44 24 18 89 51 04 f3 0f 11 44 24 08 8b
1099a150: 54 24 08 89 51 08 0f b6 c0 8b e5 5d c3 33 c0 8b
1099a160: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1099a0a0 <.text+0x9990a0>:
1099a0a0:	55                                              	push   ebp
1099a0a1:	8b ec                                           	mov    ebp,esp
1099a0a3:	83 e4 f0                                        	and    esp,0xfffffff0
1099a0a6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1099a0a9:	8b 48 6c                                        	mov    ecx,DWORD PTR [eax+0x6c]
1099a0ac:	83 ec 20                                        	sub    esp,0x20
1099a0af:	85 c9                                           	test   ecx,ecx
1099a0b1:	0f 84 a6 00 00 00                               	je     0x1099a15d
1099a0b7:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1099a0ba:	83 7d 18 00                                     	cmp    DWORD PTR [ebp+0x18],0x0
1099a0be:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1099a0c3:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1099a0c7:	0f 95 c2                                        	setne  dl
1099a0ca:	83 7d 14 00                                     	cmp    DWORD PTR [ebp+0x14],0x0
1099a0ce:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1099a0d4:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1099a0d9:	0f 95 c0                                        	setne  al
1099a0dc:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1099a0e2:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1099a0e8:	52                                              	push   edx
1099a0e9:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1099a0ed:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1099a0f3:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
1099a0f8:	50                                              	push   eax
1099a0f9:	52                                              	push   edx
1099a0fa:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
1099a0fe:	50                                              	push   eax
1099a0ff:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a104:	e8 d7 61 86 ff                                  	call   0x102002e0
1099a109:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099a10e:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1099a111:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a116:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
1099a11c:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1099a121:	8b 14 24                                        	mov    edx,DWORD PTR [esp]
1099a124:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a129:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
1099a12f:	89 11                                           	mov    DWORD PTR [ecx],edx
1099a131:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1099a137:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1099a13b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099a140:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
1099a146:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1099a149:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1099a14f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1099a153:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
1099a156:	0f b6 c0                                        	movzx  eax,al
1099a159:	8b e5                                           	mov    esp,ebp
1099a15b:	5d                                              	pop    ebp
1099a15c:	c3                                              	ret
1099a15d:	33 c0                                           	xor    eax,eax
1099a15f:	8b e5                                           	mov    esp,ebp
1099a161:	5d                                              	pop    ebp
1099a162:	c3                                              	ret
1099a163:	cc                                              	int3
1099a164:	cc                                              	int3
1099a165:	cc                                              	int3
1099a166:	cc                                              	int3
1099a167:	cc                                              	int3
1099a168:	cc                                              	int3
1099a169:	cc                                              	int3
1099a16a:	cc                                              	int3
1099a16b:	cc                                              	int3
1099a16c:	cc                                              	int3
1099a16d:	cc                                              	int3
1099a16e:	cc                                              	int3
1099a16f:	cc                                              	int3
