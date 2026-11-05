# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Complete original PC1.67 TS3W.exe function envelope; paired actual annotated Ghidra C: 0093AB80_ObjectSignatureMap_InsertUnique.c.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093ab80 <.text+0x539b80>:
  93ab80:	83 ec 1c                                        	sub    esp,0x1c
  93ab83:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  93ab87:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  93ab8b:	56                                              	push   esi
  93ab8c:	8b f1                                           	mov    esi,ecx
  93ab8e:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  93ab92:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  93ab96:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  93ab9a:	c6 44 24 2c 00                                  	mov    BYTE PTR [esp+0x2c],0x0
  93ab9f:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  93aba3:	50                                              	push   eax
  93aba4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  93aba8:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  93abac:	51                                              	push   ecx
  93abad:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  93abb1:	52                                              	push   edx
  93abb2:	8d 4e 28                                        	lea    ecx,[esi+0x28]
  93abb5:	e8 96 66 fd ff                                  	call   0x911250
  93abba:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  93abbf:	74 17                                           	je     0x93abd8
  93abc1:	8b 46 20                                        	mov    eax,DWORD PTR [esi+0x20]
  93abc4:	83 c0 1c                                        	add    eax,0x1c
  93abc7:	50                                              	push   eax
  93abc8:	8b ce                                           	mov    ecx,esi
  93abca:	e8 11 70 df ff                                  	call   0x731be0
  93abcf:	b0 01                                           	mov    al,0x1
  93abd1:	5e                                              	pop    esi
  93abd2:	83 c4 1c                                        	add    esp,0x1c
  93abd5:	c2 0c 00                                        	ret    0xc
  93abd8:	32 c0                                           	xor    al,al
  93abda:	5e                                              	pop    esi
  93abdb:	83 c4 1c                                        	add    esp,0x1c
  93abde:	c2 0c 00                                        	ret    0xc
