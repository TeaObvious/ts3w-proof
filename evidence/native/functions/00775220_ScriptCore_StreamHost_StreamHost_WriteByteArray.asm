# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x00775220; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00775220 (ScriptCore.StreamHost::StreamHost_WriteByteArray)
Paired Ghidra pseudocode: 00775220_ScriptCore_StreamHost_StreamHost_WriteByteArray.c
Window: [0x00775220, 0x007752f0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007752f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00775220: 51 55 8b 6c 24 10 85 ed 75 06 8d 45 fa 5d 59 c3
00775230: 53 57 8b 7c 24 1c 85 ff 0f 8c 99 00 00 00 8b 5c
00775240: 24 20 85 db 0f 8e 8d 00 00 00 8b 44 24 14 3b 05
00775250: 38 78 1d 01 56 75 08 8b 35 3c 78 1d 01 eb 0b 50
00775260: e8 1b fc ff ff 83 c4 04 8b f0 85 f6 75 09 8d 46
00775270: fe 5e 5f 5b 5d 59 c3 e8 14 41 ff ff 8b 10 8b 52
00775280: 70 8d 4c 24 10 51 8d 4c 24 20 51 55 8b c8 ff d2
00775290: 8b 4c 24 1c 85 c9 75 09 5e 5f 5b 8d 41 fa 5d 59
007752a0: c3 8b 44 24 10 3b f8 7d 23 2b c7 3b c3 7c 1d 8b
007752b0: 06 8b 50 38 03 cf 53 51 8b ce ff d2 f6 d8 5e 5f
007752c0: 5b 5d 1b c0 83 e0 03 83 c0 fd 59 c3 5e 5f 5b b8
007752d0: f9 ff ff ff 5d 59 c3 5f 5b b8 f9 ff ff ff 5d 59
007752e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00775220 <.text+0x374220>:
  775220:	51                                              	push   ecx
  775221:	55                                              	push   ebp
  775222:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  775226:	85 ed                                           	test   ebp,ebp
  775228:	75 06                                           	jne    0x775230
  77522a:	8d 45 fa                                        	lea    eax,[ebp-0x6]
  77522d:	5d                                              	pop    ebp
  77522e:	59                                              	pop    ecx
  77522f:	c3                                              	ret
  775230:	53                                              	push   ebx
  775231:	57                                              	push   edi
  775232:	8b 7c 24 1c                                     	mov    edi,DWORD PTR [esp+0x1c]
  775236:	85 ff                                           	test   edi,edi
  775238:	0f 8c 99 00 00 00                               	jl     0x7752d7
  77523e:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  775242:	85 db                                           	test   ebx,ebx
  775244:	0f 8e 8d 00 00 00                               	jle    0x7752d7
  77524a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77524e:	3b 05 38 78 1d 01                               	cmp    eax,DWORD PTR ds:0x11d7838
  775254:	56                                              	push   esi
  775255:	75 08                                           	jne    0x77525f
  775257:	8b 35 3c 78 1d 01                               	mov    esi,DWORD PTR ds:0x11d783c
  77525d:	eb 0b                                           	jmp    0x77526a
  77525f:	50                                              	push   eax
  775260:	e8 1b fc ff ff                                  	call   0x774e80
  775265:	83 c4 04                                        	add    esp,0x4
  775268:	8b f0                                           	mov    esi,eax
  77526a:	85 f6                                           	test   esi,esi
  77526c:	75 09                                           	jne    0x775277
  77526e:	8d 46 fe                                        	lea    eax,[esi-0x2]
  775271:	5e                                              	pop    esi
  775272:	5f                                              	pop    edi
  775273:	5b                                              	pop    ebx
  775274:	5d                                              	pop    ebp
  775275:	59                                              	pop    ecx
  775276:	c3                                              	ret
  775277:	e8 14 41 ff ff                                  	call   0x769390
  77527c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77527e:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  775281:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  775285:	51                                              	push   ecx
  775286:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77528a:	51                                              	push   ecx
  77528b:	55                                              	push   ebp
  77528c:	8b c8                                           	mov    ecx,eax
  77528e:	ff d2                                           	call   edx
  775290:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  775294:	85 c9                                           	test   ecx,ecx
  775296:	75 09                                           	jne    0x7752a1
  775298:	5e                                              	pop    esi
  775299:	5f                                              	pop    edi
  77529a:	5b                                              	pop    ebx
  77529b:	8d 41 fa                                        	lea    eax,[ecx-0x6]
  77529e:	5d                                              	pop    ebp
  77529f:	59                                              	pop    ecx
  7752a0:	c3                                              	ret
  7752a1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7752a5:	3b f8                                           	cmp    edi,eax
  7752a7:	7d 23                                           	jge    0x7752cc
  7752a9:	2b c7                                           	sub    eax,edi
  7752ab:	3b c3                                           	cmp    eax,ebx
  7752ad:	7c 1d                                           	jl     0x7752cc
  7752af:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7752b1:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
  7752b4:	03 cf                                           	add    ecx,edi
  7752b6:	53                                              	push   ebx
  7752b7:	51                                              	push   ecx
  7752b8:	8b ce                                           	mov    ecx,esi
  7752ba:	ff d2                                           	call   edx
  7752bc:	f6 d8                                           	neg    al
  7752be:	5e                                              	pop    esi
  7752bf:	5f                                              	pop    edi
  7752c0:	5b                                              	pop    ebx
  7752c1:	5d                                              	pop    ebp
  7752c2:	1b c0                                           	sbb    eax,eax
  7752c4:	83 e0 03                                        	and    eax,0x3
  7752c7:	83 c0 fd                                        	add    eax,0xfffffffd
  7752ca:	59                                              	pop    ecx
  7752cb:	c3                                              	ret
  7752cc:	5e                                              	pop    esi
  7752cd:	5f                                              	pop    edi
  7752ce:	5b                                              	pop    ebx
  7752cf:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
  7752d4:	5d                                              	pop    ebp
  7752d5:	59                                              	pop    ecx
  7752d6:	c3                                              	ret
  7752d7:	5f                                              	pop    edi
  7752d8:	5b                                              	pop    ebx
  7752d9:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
  7752de:	5d                                              	pop    ebp
  7752df:	59                                              	pop    ecx
  7752e0:	c3                                              	ret
  7752e1:	cc                                              	int3
  7752e2:	cc                                              	int3
  7752e3:	cc                                              	int3
  7752e4:	cc                                              	int3
  7752e5:	cc                                              	int3
  7752e6:	cc                                              	int3
  7752e7:	cc                                              	int3
  7752e8:	cc                                              	int3
  7752e9:	cc                                              	int3
  7752ea:	cc                                              	int3
  7752eb:	cc                                              	int3
  7752ec:	cc                                              	int3
  7752ed:	cc                                              	int3
  7752ee:	cc                                              	int3
  7752ef:	cc                                              	int3
