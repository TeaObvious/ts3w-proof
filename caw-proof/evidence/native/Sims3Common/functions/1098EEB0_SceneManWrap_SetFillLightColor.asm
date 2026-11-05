# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eeb0 (SceneManWrap_SetFillLightColor)
Paired Ghidra pseudocode: 1098EEB0_SceneManWrap_SetFillLightColor.c
Window: [0x1098eeb0, 0x1098ef30) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ef30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eeb0: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 2c 56 e8 6e f5
1098eec0: b4 ff 85 c0 74 61 8b b0 d8 00 00 00 85 f6 74 57
1098eed0: f3 0f 10 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18
1098eee0: f3 0f 10 4d 10 f3 0f 11 44 24 1c f3 0f 11 44 24
1098eef0: 10 f3 0f 11 4c 24 14 0f 28 44 24 10 8d 4c 24 10
1098ef00: 51 8d 54 24 24 0f 29 44 24 14 0f 28 86 50 01 00
1098ef10: 00 52 8b c8 0f 29 44 24 28 e8 82 49 b1 ff 8b 06
1098ef20: 8b 50 44 8b ce ff d2 5e 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
1098eeb0 <.text+0x98deb0>:
1098eeb0:	55                                              	push   ebp
1098eeb1:	8b ec                                           	mov    ebp,esp
1098eeb3:	83 e4 f0                                        	and    esp,0xfffffff0
1098eeb6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098eeb9:	83 ec 2c                                        	sub    esp,0x2c
1098eebc:	56                                              	push   esi
1098eebd:	e8 6e f5 b4 ff                                  	call   0x104de430
1098eec2:	85 c0                                           	test   eax,eax
1098eec4:	74 61                                           	je     0x1098ef27
1098eec6:	8b b0 d8 00 00 00                               	mov    esi,DWORD PTR [eax+0xd8]
1098eecc:	85 f6                                           	test   esi,esi
1098eece:	74 57                                           	je     0x1098ef27
1098eed0:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1098eed5:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098eeda:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1098eee0:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098eee5:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1098eeeb:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1098eef1:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1098eef7:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1098eefc:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1098ef00:	51                                              	push   ecx
1098ef01:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1098ef05:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
1098ef0a:	0f 28 86 50 01 00 00                            	movaps xmm0,XMMWORD PTR [esi+0x150]
1098ef11:	52                                              	push   edx
1098ef12:	8b c8                                           	mov    ecx,eax
1098ef14:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
1098ef19:	e8 82 49 b1 ff                                  	call   0x104a38a0
1098ef1e:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098ef20:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
1098ef23:	8b ce                                           	mov    ecx,esi
1098ef25:	ff d2                                           	call   edx
1098ef27:	5e                                              	pop    esi
1098ef28:	8b e5                                           	mov    esp,ebp
1098ef2a:	5d                                              	pop    ebp
1098ef2b:	c3                                              	ret
1098ef2c:	cc                                              	int3
1098ef2d:	cc                                              	int3
1098ef2e:	cc                                              	int3
1098ef2f:	cc                                              	int3
