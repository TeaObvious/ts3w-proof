# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4dde0 CeilingRenderManager_ResolveMaterialAndRequest
# Complete Ghidra body [00a4dde0, 00a4de24] inclusive: 31 body instructions, 69 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 69 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4DDE0_CeilingRenderManager_ResolveMaterialAndRequest.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4dde0 <.text+0x64cde0>:
  a4dde0:	57                                              	push   edi
  a4dde1:	8b f9                                           	mov    edi,ecx
  a4dde3:	8b 47 58                                        	mov    eax,DWORD PTR [edi+0x58]
  a4dde6:	a8 01                                           	test   al,0x1
  a4dde8:	75 37                                           	jne    0xa4de21
  a4ddea:	8b 4f 5c                                        	mov    ecx,DWORD PTR [edi+0x5c]
  a4dded:	85 c9                                           	test   ecx,ecx
  a4ddef:	53                                              	push   ebx
  a4ddf0:	56                                              	push   esi
  a4ddf1:	8d 77 5c                                        	lea    esi,[edi+0x5c]
  a4ddf4:	74 0d                                           	je     0xa4de03
  a4ddf6:	c7 06 00 00 00 00                               	mov    DWORD PTR [esi],0x0
  a4ddfc:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  a4ddfe:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  a4de01:	ff d0                                           	call   eax
  a4de03:	8b 5f 58                                        	mov    ebx,DWORD PTR [edi+0x58]
  a4de06:	e8 55 d1 c7 ff                                  	call   0x6caf60
  a4de0b:	50                                              	push   eax
  a4de0c:	56                                              	push   esi
  a4de0d:	8b cb                                           	mov    ecx,ebx
  a4de0f:	e8 ac d0 c7 ff                                  	call   0x6caec0
  a4de14:	8b cf                                           	mov    ecx,edi
  a4de16:	e8 25 fd ff ff                                  	call   0xa4db40
  a4de1b:	5e                                              	pop    esi
  a4de1c:	5b                                              	pop    ebx
  a4de1d:	b0 01                                           	mov    al,0x1
  a4de1f:	5f                                              	pop    edi
  a4de20:	c3                                              	ret
  a4de21:	32 c0                                           	xor    al,al
  a4de23:	5f                                              	pop    edi
  a4de24:	c3                                              	ret
