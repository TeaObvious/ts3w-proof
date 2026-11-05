# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ee30 (SceneManWrap_SetFillLightDirection)
Paired Ghidra pseudocode: 1098EE30_SceneManWrap_SetFillLightDirection.c
Window: [0x1098ee30, 0x1098eeb0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eeb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ee30: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 1c 56 e8 ee f5
1098ee40: b4 ff 85 c0 74 57 8b b0 d8 00 00 00 85 f6 74 4d
1098ee50: f3 0f 10 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18
1098ee60: f3 0f 10 4d 10 8d 8e f0 00 00 00 51 f3 0f 11 44
1098ee70: 24 20 f3 0f 11 4c 24 18 f3 0f 11 44 24 14 0f 28
1098ee80: 44 24 14 8d 54 24 14 52 8b c8 0f 29 44 24 18 e8
1098ee90: 0c 4a b1 ff 8b 06 8b 50 44 8b ce ff d2 5e 8b e5
1098eea0: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098ee30 <.text+0x98de30>:
1098ee30:	55                                              	push   ebp
1098ee31:	8b ec                                           	mov    ebp,esp
1098ee33:	83 e4 f0                                        	and    esp,0xfffffff0
1098ee36:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098ee39:	83 ec 1c                                        	sub    esp,0x1c
1098ee3c:	56                                              	push   esi
1098ee3d:	e8 ee f5 b4 ff                                  	call   0x104de430
1098ee42:	85 c0                                           	test   eax,eax
1098ee44:	74 57                                           	je     0x1098ee9d
1098ee46:	8b b0 d8 00 00 00                               	mov    esi,DWORD PTR [eax+0xd8]
1098ee4c:	85 f6                                           	test   esi,esi
1098ee4e:	74 4d                                           	je     0x1098ee9d
1098ee50:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
1098ee55:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
1098ee5a:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1098ee60:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
1098ee65:	8d 8e f0 00 00 00                               	lea    ecx,[esi+0xf0]
1098ee6b:	51                                              	push   ecx
1098ee6c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
1098ee72:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1098ee78:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098ee7e:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
1098ee83:	8d 54 24 14                                     	lea    edx,[esp+0x14]
1098ee87:	52                                              	push   edx
1098ee88:	8b c8                                           	mov    ecx,eax
1098ee8a:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
1098ee8f:	e8 0c 4a b1 ff                                  	call   0x104a38a0
1098ee94:	8b 06                                           	mov    eax,DWORD PTR [esi]
1098ee96:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
1098ee99:	8b ce                                           	mov    ecx,esi
1098ee9b:	ff d2                                           	call   edx
1098ee9d:	5e                                              	pop    esi
1098ee9e:	8b e5                                           	mov    esp,ebp
1098eea0:	5d                                              	pop    ebp
1098eea1:	c3                                              	ret
1098eea2:	cc                                              	int3
1098eea3:	cc                                              	int3
1098eea4:	cc                                              	int3
1098eea5:	cc                                              	int3
1098eea6:	cc                                              	int3
1098eea7:	cc                                              	int3
1098eea8:	cc                                              	int3
1098eea9:	cc                                              	int3
1098eeaa:	cc                                              	int3
1098eeab:	cc                                              	int3
1098eeac:	cc                                              	int3
1098eead:	cc                                              	int3
1098eeae:	cc                                              	int3
1098eeaf:	cc                                              	int3
