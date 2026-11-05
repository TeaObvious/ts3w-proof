# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00722ea0 (TextureProxy_HasUntaggedResource)
Complete body envelope: 0x00722ea0..0x00722eb8 (exclusive end)
Body ranges: [[00722ea0, 00722eb7]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00722ea0 <.text+0x321ea0>:
  722ea0:	8b 41 10             	mov    eax,DWORD PTR [ecx+0x10]
  722ea3:	85 c0                	test   eax,eax
  722ea5:	74 0e                	je     0x722eb5
  722ea7:	8b 49 10             	mov    ecx,DWORD PTR [ecx+0x10]
  722eaa:	f6 c1 03             	test   cl,0x3
  722ead:	75 06                	jne    0x722eb5
  722eaf:	b8 01 00 00 00       	mov    eax,0x1
  722eb4:	c3                   	ret
  722eb5:	33 c0                	xor    eax,eax
  722eb7:	c3                   	ret
