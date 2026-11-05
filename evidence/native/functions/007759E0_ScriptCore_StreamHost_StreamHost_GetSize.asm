# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x007759e0 (ScriptCore.StreamHost::StreamHost_GetSize)
Paired actual Ghidra pseudocode: 007759E0_ScriptCore_StreamHost_StreamHost_GetSize.c
Envelope [0x007759e0,0x00775a46); 102 bytes; exact owned range: [0x007759e0,0x00775a46)
Owned: 102 original bytes / 35 existing Listing instructions; no envelope gaps.
Stored prototypes remain inferred projections; physical instructions and original managed declarations govern ABI claims.

LINEAR DISASSEMBLY
007759e0 <original>:
  7759e0:	56                                              	push   esi
  7759e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  7759e5:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  7759eb:	75 07                                           	jne    0x7759f4
  7759ed:	a1 3c 78 1d 01                                  	mov    eax,ds:0x11d783c
  7759f2:	eb 33                                           	jmp    0x775a27
  7759f4:	8b c6                                           	mov    eax,esi
  7759f6:	25 00 00 00 ff                                  	and    eax,0xff000000
  7759fb:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  775a00:	74 04                                           	je     0x775a06
  775a02:	33 c0                                           	xor    eax,eax
  775a04:	eb 21                                           	jmp    0x775a27
  775a06:	e8 85 39 ff ff                                  	call   0x769390
  775a0b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775a0d:	8b c8                                           	mov    ecx,eax
  775a0f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  775a15:	56                                              	push   esi
  775a16:	ff d0                                           	call   eax
  775a18:	85 c0                                           	test   eax,eax
  775a1a:	74 0b                                           	je     0x775a27
  775a1c:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  775a21:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  775a27:	85 c0                                           	test   eax,eax
  775a29:	5e                                              	pop    esi
  775a2a:	75 06                                           	jne    0x775a32
  775a2c:	b8 fe ff ff ff                                  	mov    eax,0xfffffffe
  775a31:	c3                                              	ret
  775a32:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775a34:	8b c8                                           	mov    ecx,eax
  775a36:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  775a39:	ff d0                                           	call   eax
  775a3b:	83 f8 ff                                        	cmp    eax,0xffffffff
  775a3e:	75 05                                           	jne    0x775a45
  775a40:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  775a45:	c3                                              	ret
