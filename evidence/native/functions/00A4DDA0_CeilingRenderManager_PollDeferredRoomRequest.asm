# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4dda0 CeilingRenderManager_PollDeferredRoomRequest
# Complete Ghidra body [00a4dda0, 00a4dddc] inclusive: 26 body instructions, 61 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 61 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4DDA0_CeilingRenderManager_PollDeferredRoomRequest.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4dda0 <.text+0x64cda0>:
  a4dda0:	56                                              	push   esi
  a4dda1:	57                                              	push   edi
  a4dda2:	8b f9                                           	mov    edi,ecx
  a4dda4:	8b 47 30                                        	mov    eax,DWORD PTR [edi+0x30]
  a4dda7:	0b 47 34                                        	or     eax,DWORD PTR [edi+0x34]
  a4ddaa:	8d 77 30                                        	lea    esi,[edi+0x30]
  a4ddad:	74 2b                                           	je     0xa4ddda
  a4ddaf:	8b ce                                           	mov    ecx,esi
  a4ddb1:	e8 0a 5a aa ff                                  	call   0x4f37c0
  a4ddb6:	d9 05 7c 0b 06 01                               	fld    DWORD PTR ds:0x1060b7c
  a4ddbc:	d9 c9                                           	fxch   st(1)
  a4ddbe:	df f1                                           	fcomip st,st(1)
  a4ddc0:	dd d8                                           	fstp   st(0)
  a4ddc2:	76 16                                           	jbe    0xa4ddda
  a4ddc4:	33 c0                                           	xor    eax,eax
  a4ddc6:	8b cf                                           	mov    ecx,edi
  a4ddc8:	5f                                              	pop    edi
  a4ddc9:	89 06                                           	mov    DWORD PTR [esi],eax
  a4ddcb:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  a4ddce:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  a4ddd1:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  a4ddd4:	5e                                              	pop    esi
  a4ddd5:	e9 66 fd ff ff                                  	jmp    0xa4db40
  a4ddda:	5f                                              	pop    edi
  a4dddb:	5e                                              	pop    esi
  a4dddc:	c3                                              	ret
