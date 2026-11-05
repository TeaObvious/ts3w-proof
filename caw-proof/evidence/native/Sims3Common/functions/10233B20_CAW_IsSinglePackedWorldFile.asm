# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


Sims3Common.dll:     file format pei-i386


Disassembly of section .text:

10233b20 <.text+0x232b20>:
10233b20:	81 ec c0 00 00 00                               	sub    esp,0xc0
10233b26:	56                                              	push   esi
10233b27:	8b b4 24 c8 00 00 00                            	mov    esi,DWORD PTR [esp+0xc8]
10233b2e:	56                                              	push   esi
10233b2f:	e8 2c cf 6d 00                                  	call   0x10910a60
10233b34:	83 c4 04                                        	add    esp,0x4
10233b37:	84 c0                                           	test   al,al
10233b39:	75 08                                           	jne    0x10233b43
10233b3b:	5e                                              	pop    esi
10233b3c:	81 c4 c0 00 00 00                               	add    esp,0xc0
10233b42:	c3                                              	ret
10233b43:	53                                              	push   ebx
10233b44:	6a 00                                           	push   0x0
10233b46:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10233b4a:	e8 f1 b7 2e 00                                  	call   0x1051f340
10233b4f:	bb 01 00 00 00                                  	mov    ebx,0x1
10233b54:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10233b58:	8b cb                                           	mov    ecx,ebx
10233b5a:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10233b5e:	56                                              	push   esi
10233b5f:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10233b63:	e8 c8 b8 2e 00                                  	call   0x1051f430
10233b68:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10233b6c:	e8 3f 77 4d 00                                  	call   0x1070b2b0
10233b71:	84 c0                                           	test   al,al
10233b73:	74 53                                           	je     0x10233bc8
10233b75:	6a 00                                           	push   0x0
10233b77:	6a 06                                           	push   0x6
10233b79:	53                                              	push   ebx
10233b7a:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10233b7e:	e8 fd c3 2e 00                                  	call   0x1051ff80
10233b83:	84 c0                                           	test   al,al
10233b85:	74 41                                           	je     0x10233bc8
10233b87:	6a 00                                           	push   0x0
10233b89:	53                                              	push   ebx
10233b8a:	6a 06                                           	push   0x6
10233b8c:	53                                              	push   ebx
10233b8d:	6a 00                                           	push   0x0
10233b8f:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10233b93:	52                                              	push   edx
10233b94:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10233b98:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
10233b9c:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
10233ba4:	c7 44 24 28 6a bd 77 04                         	mov    DWORD PTR [esp+0x28],0x477bd6a
10233bac:	c7 44 24 2c 00 00 00 00                         	mov    DWORD PTR [esp+0x2c],0x0
10233bb4:	e8 a7 c0 2e 00                                  	call   0x1051fc60
10233bb9:	84 c0                                           	test   al,al
10233bbb:	74 02                                           	je     0x10233bbf
10233bbd:	32 db                                           	xor    bl,bl
10233bbf:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10233bc3:	e8 d8 b3 2e 00                                  	call   0x1051efa0
10233bc8:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10233bcc:	e8 7f b1 2e 00                                  	call   0x1051ed50
10233bd1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
10233bd5:	e8 06 b6 2e 00                                  	call   0x1051f1e0
10233bda:	8a c3                                           	mov    al,bl
10233bdc:	5b                                              	pop    ebx
10233bdd:	5e                                              	pop    esi
10233bde:	81 c4 c0 00 00 00                               	add    esp,0xc0
10233be4:	c3                                              	ret
