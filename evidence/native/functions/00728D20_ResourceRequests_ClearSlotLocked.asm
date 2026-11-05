# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00728d20 ResourceRequests_ClearSlotLocked
# Complete actual Ghidra owned ranges: 00728d20..00728d4f; 18 instructions/48 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00728D20_ResourceRequests_ClearSlotLocked.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00728d20 <.text+0x327d20>:
  728d20:	56                                              	push   esi
  728d21:	8b f1                                           	mov    esi,ecx
  728d23:	57                                              	push   edi
  728d24:	8d 7e 40                                        	lea    edi,[esi+0x40]
  728d27:	68 44 e3 ff 00                                  	push   0xffe344
  728d2c:	8b cf                                           	mov    ecx,edi
  728d2e:	e8 cd 8e db ff                                  	call   0x4e1c00
  728d33:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  728d37:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  728d3b:	50                                              	push   eax
  728d3c:	51                                              	push   ecx
  728d3d:	8b ce                                           	mov    ecx,esi
  728d3f:	e8 8c f9 ff ff                                  	call   0x7286d0
  728d44:	8b cf                                           	mov    ecx,edi
  728d46:	e8 75 8f db ff                                  	call   0x4e1cc0
  728d4b:	5f                                              	pop    edi
  728d4c:	5e                                              	pop    esi
  728d4d:	c2 08 00                                        	ret    0x8
