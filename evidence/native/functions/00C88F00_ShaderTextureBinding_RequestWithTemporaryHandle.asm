# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00c88f00 ShaderTextureBinding_RequestWithTemporaryHandle
# Complete actual Ghidra owned ranges: 00c88f00..00c88f1c; 12 instructions/29 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00C88F00_ShaderTextureBinding_RequestWithTemporaryHandle.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c88f00 <.text+0x887f00>:
  c88f00:	51                                              	push   ecx
  c88f01:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c88f05:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  c88f09:	8d 04 24                                        	lea    eax,[esp]
  c88f0c:	50                                              	push   eax
  c88f0d:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  c88f11:	51                                              	push   ecx
  c88f12:	52                                              	push   edx
  c88f13:	50                                              	push   eax
  c88f14:	e8 27 fc ff ff                                  	call   0xc88b40
  c88f19:	83 c4 14                                        	add    esp,0x14
  c88f1c:	c3                                              	ret
