# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00995400,0x00995420); analyst name DownloadContent_IsNonTravelSimKey.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00995400 <.text+0x594400>:
  995400:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  995404:	81 78 08 64 89 f8 04 	cmp    DWORD PTR [eax+0x8],0x4f88964
  99540b:	75 0e                	jne    0x99541b
  99540d:	f6 40 0c 01          	test   BYTE PTR [eax+0xc],0x1
  995411:	75 08                	jne    0x99541b
  995413:	b8 01 00 00 00       	mov    eax,0x1
  995418:	c2 04 00             	ret    0x4
  99541b:	33 c0                	xor    eax,eax
  99541d:	c2 04 00             	ret    0x4
