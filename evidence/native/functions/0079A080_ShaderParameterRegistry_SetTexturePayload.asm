# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x0079a080 ShaderParameterRegistry_SetTexturePayload
# Complete actual Ghidra owned ranges: 0079a080..0079a0b0; 13 instructions/49 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 0079A080_ShaderParameterRegistry_SetTexturePayload.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079a080 <.text+0x399080>:
  79a080:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  79a084:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
  79a087:	73 25                                           	jae    0x79a0ae
  79a089:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  79a08d:	c1 e0 04                                        	shl    eax,0x4
  79a090:	03 41 04                                        	add    eax,DWORD PTR [ecx+0x4]
  79a093:	83 00 01                                        	add    DWORD PTR [eax],0x1
  79a096:	c7 40 08 01 00 00 00                            	mov    DWORD PTR [eax+0x8],0x1
  79a09d:	66 c7 40 06 05 00                               	mov    WORD PTR [eax+0x6],0x5
  79a0a3:	66 8b 49 12                                     	mov    cx,WORD PTR [ecx+0x12]
  79a0a7:	66 89 48 04                                     	mov    WORD PTR [eax+0x4],cx
  79a0ab:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  79a0ae:	c2 08 00                                        	ret    0x8
