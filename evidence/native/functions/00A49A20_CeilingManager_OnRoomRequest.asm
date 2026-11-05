# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x00a49a20 CeilingManager_OnRoomRequest
# Complete Ghidra body [00a49a20, 00a49a4c] inclusive: 15 body instructions, 45 instruction bytes.
# One complete pristine byte-bearing objdump envelope follows: 45 bytes.
# Binary identity: ../../../README.md.
# Actual annotated C and inferred ABI limits: 00A49A20_CeilingManager_OnRoomRequest.c

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00a49a20 <.text+0x648a20>:
  a49a20:	81 7c 24 04 af b4 87 04                         	cmp    DWORD PTR [esp+0x4],0x487b4af
  a49a28:	75 1e                                           	jne    0xa49a48
  a49a2a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  a49a2e:	8b 41 18                                        	mov    eax,DWORD PTR [ecx+0x18]
  a49a31:	56                                              	push   esi
  a49a32:	8b 72 08                                        	mov    esi,DWORD PTR [edx+0x8]
  a49a35:	3b 70 48                                        	cmp    esi,DWORD PTR [eax+0x48]
  a49a38:	5e                                              	pop    esi
  a49a39:	75 0d                                           	jne    0xa49a48
  a49a3b:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  a49a3e:	3b 50 4c                                        	cmp    edx,DWORD PTR [eax+0x4c]
  a49a41:	75 05                                           	jne    0xa49a48
  a49a43:	e8 a8 fd ff ff                                  	call   0xa497f0
  a49a48:	b0 01                                           	mov    al,0x1
  a49a4a:	c2 08 00                                        	ret    0x8
