# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x007c9620 IntrusiveRefCount_ReleaseMinus4_7C9620
# Complete current Ghidra body [007c9620, 007c9649] inclusive: 19 body instructions, 42 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 007C9620_IntrusiveRefCount_ReleaseMinus4_7C9620.c


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007c9620 <.text+0x3c8620>:
  7c9620:	83 c1 f8                                        	add    ecx,0xfffffff8
  7c9623:	8d 51 04                                        	lea    edx,[ecx+0x4]
  7c9626:	56                                              	push   esi
  7c9627:	8b f2                                           	mov    esi,edx
  7c9629:	83 c8 ff                                        	or     eax,0xffffffff
  7c962c:	f0 0f c1 06                                     	lock xadd DWORD PTR [esi],eax
  7c9630:	48                                              	dec    eax
  7c9631:	5e                                              	pop    esi
  7c9632:	75 15                                           	jne    0x7c9649
  7c9634:	b8 01 00 00 00                                  	mov    eax,0x1
  7c9639:	87 02                                           	xchg   DWORD PTR [edx],eax
  7c963b:	85 c9                                           	test   ecx,ecx
  7c963d:	74 08                                           	je     0x7c9647
  7c963f:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  7c9641:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7c9643:	6a 01                                           	push   0x1
  7c9645:	ff d0                                           	call   eax
  7c9647:	33 c0                                           	xor    eax,eax
  7c9649:	c3                                              	ret
