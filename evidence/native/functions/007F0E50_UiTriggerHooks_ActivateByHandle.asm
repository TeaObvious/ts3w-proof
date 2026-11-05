# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007f0e50 (UiTriggerHooks_ActivateByHandle)
Paired actual Ghidra pseudocode: 007F0E50_UiTriggerHooks_ActivateByHandle.c
Envelope [0x007f0e50,0x007f0eb7); 103 bytes; exact owned ranges: [0x007f0e50,0x007f0eb7)
Owned: 103 original bytes / 40 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007f0e50 <original>:
  7f0e50:	83 ec 08                                        	sub    esp,0x8
  7f0e53:	53                                              	push   ebx
  7f0e54:	56                                              	push   esi
  7f0e55:	57                                              	push   edi
  7f0e56:	8b f9                                           	mov    edi,ecx
  7f0e58:	8d 9f 80 03 00 00                               	lea    ebx,[edi+0x380]
  7f0e5e:	53                                              	push   ebx
  7f0e5f:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7f0e65:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  7f0e69:	50                                              	push   eax
  7f0e6a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7f0e6e:	8d 77 10                                        	lea    esi,[edi+0x10]
  7f0e71:	51                                              	push   ecx
  7f0e72:	8b ce                                           	mov    ecx,esi
  7f0e74:	e8 97 ca 00 00                                  	call   0x7fd910
  7f0e79:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  7f0e7c:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  7f0e7f:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7f0e83:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  7f0e86:	74 1d                                           	je     0x7f0ea5
  7f0e88:	83 c0 04                                        	add    eax,0x4
  7f0e8b:	50                                              	push   eax
  7f0e8c:	8b cf                                           	mov    ecx,edi
  7f0e8e:	e8 1d f3 ff ff                                  	call   0x7f01b0
  7f0e93:	53                                              	push   ebx
  7f0e94:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f0e9a:	5f                                              	pop    edi
  7f0e9b:	5e                                              	pop    esi
  7f0e9c:	b0 01                                           	mov    al,0x1
  7f0e9e:	5b                                              	pop    ebx
  7f0e9f:	83 c4 08                                        	add    esp,0x8
  7f0ea2:	c2 04 00                                        	ret    0x4
  7f0ea5:	53                                              	push   ebx
  7f0ea6:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f0eac:	5f                                              	pop    edi
  7f0ead:	5e                                              	pop    esi
  7f0eae:	32 c0                                           	xor    al,al
  7f0eb0:	5b                                              	pop    ebx
  7f0eb1:	83 c4 08                                        	add    esp,0x8
  7f0eb4:	c2 04 00                                        	ret    0x4
