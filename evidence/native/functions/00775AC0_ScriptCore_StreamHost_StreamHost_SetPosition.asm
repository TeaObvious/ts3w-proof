# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775ac0 (ScriptCore.StreamHost::StreamHost_SetPosition)
Paired actual Ghidra pseudocode: 00775AC0_ScriptCore_StreamHost_StreamHost_SetPosition.c
Envelope [0x00775ac0,0x00775b3c); 124 bytes; exact owned range: [0x00775ac0,0x00775b3c)
Owned: 124 original bytes / 44 existing Listing instructions; no envelope gaps.
Stored prototypes remain inferred projections; physical instructions and original managed declarations govern ABI claims.

LINEAR DISASSEMBLY
00775ac0 <original>:
  775ac0:	56                                              	push   esi
  775ac1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  775ac5:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  775acb:	75 08                                           	jne    0x775ad5
  775acd:	8b 0d 3c 78 1d 01                               	mov    ecx,DWORD PTR ds:0x11d783c
  775ad3:	eb 35                                           	jmp    0x775b0a
  775ad5:	8b c6                                           	mov    eax,esi
  775ad7:	25 00 00 00 ff                                  	and    eax,0xff000000
  775adc:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  775ae1:	74 04                                           	je     0x775ae7
  775ae3:	33 c9                                           	xor    ecx,ecx
  775ae5:	eb 23                                           	jmp    0x775b0a
  775ae7:	e8 a4 38 ff ff                                  	call   0x769390
  775aec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775aee:	8b c8                                           	mov    ecx,eax
  775af0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  775af6:	56                                              	push   esi
  775af7:	ff d0                                           	call   eax
  775af9:	85 c0                                           	test   eax,eax
  775afb:	74 0b                                           	je     0x775b08
  775afd:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  775b02:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  775b08:	8b c8                                           	mov    ecx,eax
  775b0a:	85 c9                                           	test   ecx,ecx
  775b0c:	5e                                              	pop    esi
  775b0d:	75 06                                           	jne    0x775b15
  775b0f:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
  775b14:	c3                                              	ret
  775b15:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  775b19:	83 f8 03                                        	cmp    eax,0x3
  775b1c:	72 06                                           	jb     0x775b24
  775b1e:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
  775b23:	c3                                              	ret
  775b24:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  775b26:	8b 52 28                                        	mov    edx,DWORD PTR [edx+0x28]
  775b29:	50                                              	push   eax
  775b2a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  775b2e:	50                                              	push   eax
  775b2f:	ff d2                                           	call   edx
  775b31:	f6 d8                                           	neg    al
  775b33:	1b c0                                           	sbb    eax,eax
  775b35:	83 e0 03                                        	and    eax,0x3
  775b38:	83 c0 fd                                        	add    eax,0xfffffffd
  775b3b:	c3                                              	ret
