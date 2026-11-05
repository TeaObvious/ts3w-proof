# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x007f0ec0 (UiTriggerHooks_DeactivateByHandle)
Paired actual Ghidra pseudocode: 007F0EC0_UiTriggerHooks_DeactivateByHandle.c
Envelope [0x007f0ec0,0x007f0f27); 103 bytes; exact owned ranges: [0x007f0ec0,0x007f0f27)
Owned: 103 original bytes / 40 instructions.
No nonowned envelope gap bytes. Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
007f0ec0 <original>:
  7f0ec0:	83 ec 08                                        	sub    esp,0x8
  7f0ec3:	53                                              	push   ebx
  7f0ec4:	56                                              	push   esi
  7f0ec5:	57                                              	push   edi
  7f0ec6:	8b f9                                           	mov    edi,ecx
  7f0ec8:	8d 9f 80 03 00 00                               	lea    ebx,[edi+0x380]
  7f0ece:	53                                              	push   ebx
  7f0ecf:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  7f0ed5:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  7f0ed9:	50                                              	push   eax
  7f0eda:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7f0ede:	8d 77 10                                        	lea    esi,[edi+0x10]
  7f0ee1:	51                                              	push   ecx
  7f0ee2:	8b ce                                           	mov    ecx,esi
  7f0ee4:	e8 27 ca 00 00                                  	call   0x7fd910
  7f0ee9:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  7f0eec:	8b 4e 04                                        	mov    ecx,DWORD PTR [esi+0x4]
  7f0eef:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7f0ef3:	3b 04 91                                        	cmp    eax,DWORD PTR [ecx+edx*4]
  7f0ef6:	74 1d                                           	je     0x7f0f15
  7f0ef8:	83 c0 04                                        	add    eax,0x4
  7f0efb:	50                                              	push   eax
  7f0efc:	8b cf                                           	mov    ecx,edi
  7f0efe:	e8 0d f3 ff ff                                  	call   0x7f0210
  7f0f03:	53                                              	push   ebx
  7f0f04:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f0f0a:	5f                                              	pop    edi
  7f0f0b:	5e                                              	pop    esi
  7f0f0c:	b0 01                                           	mov    al,0x1
  7f0f0e:	5b                                              	pop    ebx
  7f0f0f:	83 c4 08                                        	add    esp,0x8
  7f0f12:	c2 04 00                                        	ret    0x4
  7f0f15:	53                                              	push   ebx
  7f0f16:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  7f0f1c:	5f                                              	pop    edi
  7f0f1d:	5e                                              	pop    esi
  7f0f1e:	32 c0                                           	xor    al,al
  7f0f20:	5b                                              	pop    ebx
  7f0f21:	83 c4 08                                        	add    esp,0x8
  7f0f24:	c2 04 00                                        	ret    0x4
