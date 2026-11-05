# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf0960 (RoofPolygon_CountFlagBit0)
Complete Ghidra function body: 0x00bf0960..0x00bf097c (exclusive end)
Ghidra body ranges: [[00bf0960, 00bf097b]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf0960 <.text+0x7ef960>:
  bf0960:	ba 01 00 00 00                                  	mov    edx,0x1
  bf0965:	33 c0                                           	xor    eax,eax
  bf0967:	84 51 4c                                        	test   BYTE PTR [ecx+0x4c],dl
  bf096a:	0f 45 c2                                        	cmovne eax,edx
  bf096d:	84 51 54                                        	test   BYTE PTR [ecx+0x54],dl
  bf0970:	74 02                                           	je     0xbf0974
  bf0972:	03 c2                                           	add    eax,edx
  bf0974:	84 51 5c                                        	test   BYTE PTR [ecx+0x5c],dl
  bf0977:	74 02                                           	je     0xbf097b
  bf0979:	03 c2                                           	add    eax,edx
  bf097b:	c3                                              	ret
