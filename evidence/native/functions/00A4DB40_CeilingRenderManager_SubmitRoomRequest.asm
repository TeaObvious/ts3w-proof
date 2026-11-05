# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a4db40 CeilingRenderManager_SubmitRoomRequest
# Complete Ghidra body [00a4db40, 00a4db98] inclusive: 35 body instructions, 89 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 89 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A4DB40_CeilingRenderManager_SubmitRoomRequest.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a4db40 <.text+0x64cb40>:
  a4db40:	56                                              	push   esi
  a4db41:	57                                              	push   edi
  a4db42:	6a 10                                           	push   0x10
  a4db44:	8b f9                                           	mov    edi,ecx
  a4db46:	e8 05 16 09 00                                  	call   0xadf150
  a4db4b:	83 c4 04                                        	add    esp,0x4
  a4db4e:	85 c0                                           	test   eax,eax
  a4db50:	74 17                                           	je     0xa4db69
  a4db52:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  a4db58:	33 c9                                           	xor    ecx,ecx
  a4db5a:	8d 50 04                                        	lea    edx,[eax+0x4]
  a4db5d:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  a4db5f:	c7 00 8c 5f 06 01                               	mov    DWORD PTR [eax],0x1065f8c
  a4db65:	8b f0                                           	mov    esi,eax
  a4db67:	eb 02                                           	jmp    0xa4db6b
  a4db69:	33 f6                                           	xor    esi,esi
  a4db6b:	8b 47 18                                        	mov    eax,DWORD PTR [edi+0x18]
  a4db6e:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  a4db71:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  a4db74:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  a4db77:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  a4db7a:	e8 21 b8 d1 ff                                  	call   0x7693a0
  a4db7f:	85 c0                                           	test   eax,eax
  a4db81:	74 13                                           	je     0xa4db96
  a4db83:	8b 10                                           	mov    edx,DWORD PTR [eax]
  a4db85:	6a 00                                           	push   0x0
  a4db87:	6a 00                                           	push   0x0
  a4db89:	56                                              	push   esi
  a4db8a:	8b c8                                           	mov    ecx,eax
  a4db8c:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  a4db8f:	68 af b4 87 04                                  	push   0x487b4af
  a4db94:	ff d0                                           	call   eax
  a4db96:	5f                                              	pop    edi
  a4db97:	5e                                              	pop    esi
  a4db98:	c3                                              	ret
