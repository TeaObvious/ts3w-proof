# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00c42ce0 LotRoomGraph_QueueRoomChange
# Complete Ghidra body [00c42ce0, 00c42da1] inclusive: 58 body instructions, 194 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 194 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00C42CE0_LotRoomGraph_QueueRoomChange.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c42ce0 <.text+0x841ce0>:
  c42ce0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  c42ce3:	83 ec 08                                        	sub    esp,0x8
  c42ce6:	85 c0                                           	test   eax,eax
  c42ce8:	0f 84 ae 00 00 00                               	je     0xc42d9c
  c42cee:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  c42cf1:	83 f8 03                                        	cmp    eax,0x3
  c42cf4:	c7 04 24 00 00 00 00                            	mov    DWORD PTR [esp],0x0
  c42cfb:	0f 87 9b 00 00 00                               	ja     0xc42d9c
  c42d01:	ff 24 85 a4 2d c4 00                            	jmp    DWORD PTR [eax*4+0xc42da4]
  c42d08:	8a 54 24 10                                     	mov    dl,BYTE PTR [esp+0x10]
  c42d0c:	f6 da                                           	neg    dl
  c42d0e:	1b d2                                           	sbb    edx,edx
  c42d10:	81 e2 ba fe ff bf                               	and    edx,0xbffffeba
  c42d16:	81 c2 d2 d9 51 92                               	add    edx,0x9251d9d2
  c42d1c:	eb 3d                                           	jmp    0xc42d5b
  c42d1e:	8a 54 24 10                                     	mov    dl,BYTE PTR [esp+0x10]
  c42d22:	f6 da                                           	neg    dl
  c42d24:	1b d2                                           	sbb    edx,edx
  c42d26:	81 e2 98 ff ff 9f                               	and    edx,0x9fffff98
  c42d2c:	81 c2 e0 d9 51 92                               	add    edx,0x9251d9e0
  c42d32:	eb 27                                           	jmp    0xc42d5b
  c42d34:	8a 54 24 10                                     	mov    dl,BYTE PTR [esp+0x10]
  c42d38:	f6 da                                           	neg    dl
  c42d3a:	1b d2                                           	sbb    edx,edx
  c42d3c:	81 e2 94 ff ff 7f                               	and    edx,0x7fffff94
  c42d42:	81 c2 ec d9 51 b2                               	add    edx,0xb251d9ec
  c42d48:	eb 11                                           	jmp    0xc42d5b
  c42d4a:	8a 54 24 10                                     	mov    dl,BYTE PTR [esp+0x10]
  c42d4e:	f6 da                                           	neg    dl
  c42d50:	1b d2                                           	sbb    edx,edx
  c42d52:	83 e2 eb                                        	and    edx,0xffffffeb
  c42d55:	81 c2 cc bd 29 0a                               	add    edx,0xa29bdcc
  c42d5b:	85 d2                                           	test   edx,edx
  c42d5d:	89 14 24                                        	mov    DWORD PTR [esp],edx
  c42d60:	74 3a                                           	je     0xc42d9c
  c42d62:	66 8b 44 24 0c                                  	mov    ax,WORD PTR [esp+0xc]
  c42d67:	83 c1 4c                                        	add    ecx,0x4c
  c42d6a:	66 89 44 24 04                                  	mov    WORD PTR [esp+0x4],ax
  c42d6f:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  c42d72:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  c42d75:	73 1b                                           	jae    0xc42d92
  c42d77:	85 c0                                           	test   eax,eax
  c42d79:	56                                              	push   esi
  c42d7a:	8d 70 08                                        	lea    esi,[eax+0x8]
  c42d7d:	89 71 04                                        	mov    DWORD PTR [ecx+0x4],esi
  c42d80:	5e                                              	pop    esi
  c42d81:	74 19                                           	je     0xc42d9c
  c42d83:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  c42d87:	89 10                                           	mov    DWORD PTR [eax],edx
  c42d89:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  c42d8c:	83 c4 08                                        	add    esp,0x8
  c42d8f:	c2 08 00                                        	ret    0x8
  c42d92:	8d 14 24                                        	lea    edx,[esp]
  c42d95:	52                                              	push   edx
  c42d96:	50                                              	push   eax
  c42d97:	e8 a4 97 7c ff                                  	call   0x40c540
  c42d9c:	83 c4 08                                        	add    esp,0x8
  c42d9f:	c2 08 00                                        	ret    0x8
