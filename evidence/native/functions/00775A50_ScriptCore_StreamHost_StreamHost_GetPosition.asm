# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed existing Ghidra function-body envelope.
Annotated entry: 0x00775a50 (ScriptCore.StreamHost::StreamHost_GetPosition)
Paired actual Ghidra pseudocode: 00775A50_ScriptCore_StreamHost_StreamHost_GetPosition.c
Envelope [0x00775a50,0x00775ab7); 103 bytes; exact owned range: [0x00775a50,0x00775ab7)
Owned: 103 original bytes / 36 existing Listing instructions; no envelope gaps.
Stored prototypes remain inferred projections; physical instructions and original managed declarations govern ABI claims.

LINEAR DISASSEMBLY
00775a50 <original>:
  775a50:	56                                              	push   esi
  775a51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  775a55:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  775a5b:	75 08                                           	jne    0x775a65
  775a5d:	8b 0d 3c 78 1d 01                               	mov    ecx,DWORD PTR ds:0x11d783c
  775a63:	eb 35                                           	jmp    0x775a9a
  775a65:	8b c6                                           	mov    eax,esi
  775a67:	25 00 00 00 ff                                  	and    eax,0xff000000
  775a6c:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  775a71:	74 04                                           	je     0x775a77
  775a73:	33 c9                                           	xor    ecx,ecx
  775a75:	eb 23                                           	jmp    0x775a9a
  775a77:	e8 14 39 ff ff                                  	call   0x769390
  775a7c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775a7e:	8b c8                                           	mov    ecx,eax
  775a80:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  775a86:	56                                              	push   esi
  775a87:	ff d0                                           	call   eax
  775a89:	85 c0                                           	test   eax,eax
  775a8b:	74 0b                                           	je     0x775a98
  775a8d:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  775a92:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  775a98:	8b c8                                           	mov    ecx,eax
  775a9a:	85 c9                                           	test   ecx,ecx
  775a9c:	5e                                              	pop    esi
  775a9d:	75 04                                           	jne    0x775aa3
  775a9f:	8d 41 fe                                        	lea    eax,[ecx-0x2]
  775aa2:	c3                                              	ret
  775aa3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  775aa5:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  775aa8:	6a 00                                           	push   0x0
  775aaa:	ff d0                                           	call   eax
  775aac:	83 f8 ff                                        	cmp    eax,0xffffffff
  775aaf:	75 05                                           	jne    0x775ab6
  775ab1:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  775ab6:	c3                                              	ret
