# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf0980 (RoofPolygon_CountSharedBit2)
Complete Ghidra function body: 0x00bf0980..0x00bf09af (exclusive end)
Ghidra body ranges: [[00bf0980, 00bf09ae]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf0980 <.text+0x7ef980>:
  bf0980:	8b 51 4c                                        	mov    edx,DWORD PTR [ecx+0x4c]
  bf0983:	c1 ea 02                                        	shr    edx,0x2
  bf0986:	33 c0                                           	xor    eax,eax
  bf0988:	f6 c2 01                                        	test   dl,0x1
  bf098b:	74 05                                           	je     0xbf0992
  bf098d:	b8 01 00 00 00                                  	mov    eax,0x1
  bf0992:	8b 51 54                                        	mov    edx,DWORD PTR [ecx+0x54]
  bf0995:	c1 ea 02                                        	shr    edx,0x2
  bf0998:	f6 c2 01                                        	test   dl,0x1
  bf099b:	74 03                                           	je     0xbf09a0
  bf099d:	83 c0 01                                        	add    eax,0x1
  bf09a0:	8b 49 5c                                        	mov    ecx,DWORD PTR [ecx+0x5c]
  bf09a3:	c1 e9 02                                        	shr    ecx,0x2
  bf09a6:	f6 c1 01                                        	test   cl,0x1
  bf09a9:	74 03                                           	je     0xbf09ae
  bf09ab:	83 c0 01                                        	add    eax,0x1
  bf09ae:	c3                                              	ret
