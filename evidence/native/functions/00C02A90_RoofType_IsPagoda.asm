# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00c02a90 (RoofType_IsPagoda)
Complete Ghidra function body: 0x00c02a90..0x00c02aa4 (exclusive end)
Ghidra body ranges: [[00c02a90, 00c02aa3]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c02a90 <.text+0x801a90>:
  c02a90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c02a94:	83 f8 12                                        	cmp    eax,0x12
  c02a97:	7c 08                                           	jl     0xc02aa1
  c02a99:	83 f8 1d                                        	cmp    eax,0x1d
  c02a9c:	7f 03                                           	jg     0xc02aa1
  c02a9e:	b0 01                                           	mov    al,0x1
  c02aa0:	c3                                              	ret
  c02aa1:	32 c0                                           	xor    al,al
  c02aa3:	c3                                              	ret
