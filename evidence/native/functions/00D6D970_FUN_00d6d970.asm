# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d6d970 FUN_00d6d970
# Complete actual Ghidra owned ranges: 00d6d970..00d6d9d8; 29 instructions/105 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D6D970_FUN_00d6d970.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6d970 <.text+0x96c970>:
  d6d970:	56                                              	push   esi
  d6d971:	8b f1                                           	mov    esi,ecx
  d6d973:	8d 4e 10                                        	lea    ecx,[esi+0x10]
  d6d976:	e8 15 99 ea ff                                  	call   0xc17290
  d6d97b:	b9 30 f1 1e 01                                  	mov    ecx,0x11ef130
  d6d980:	e8 fb e4 ff ff                                  	call   0xd6be80
  d6d985:	68 00 80 00 00                                  	push   0x8000
  d6d98a:	b9 e0 ed 1c 01                                  	mov    ecx,0x11cede0
  d6d98f:	e8 0c 64 7b ff                                  	call   0x523da0
  d6d994:	84 c0                                           	test   al,al
  d6d996:	a2 10 f1 1e 01                                  	mov    ds:0x11ef110,al
  d6d99b:	74 3a                                           	je     0xd6d9d7
  d6d99d:	8b 8e f4 0b 00 00                               	mov    ecx,DWORD PTR [esi+0xbf4]
  d6d9a3:	85 c9                                           	test   ecx,ecx
  d6d9a5:	0f 57 c0                                        	xorps  xmm0,xmm0
  d6d9a8:	f3 0f 11 86 ec 0b 00 00                         	movss  DWORD PTR [esi+0xbec],xmm0
  d6d9b0:	74 05                                           	je     0xd6d9b7
  d6d9b2:	e8 09 67 74 ff                                  	call   0x4b40c0
  d6d9b7:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  d6d9bc:	6a 00                                           	push   0x0
  d6d9be:	68 98 bf 08 01                                  	push   0x108bf98
  d6d9c3:	50                                              	push   eax
  d6d9c4:	e8 37 d5 81 ff                                  	call   0x58af00
  d6d9c9:	83 c4 0c                                        	add    esp,0xc
  d6d9cc:	85 c0                                           	test   eax,eax
  d6d9ce:	0f 95 c1                                        	setne  cl
  d6d9d1:	88 8e f8 0b 00 00                               	mov    BYTE PTR [esi+0xbf8],cl
  d6d9d7:	5e                                              	pop    esi
  d6d9d8:	c3                                              	ret
