# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007d78e0 (ResourceKey_ExtractSourceNumber)
Complete body envelope: 0x007d78e0..0x007d78f4 (exclusive end)
Body ranges: [[007d78e0, 007d78f3]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d78e0 <.text+0x3d68e0>:
  7d78e0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  7d78e4:	8b 48 0c             	mov    ecx,DWORD PTR [eax+0xc]
  7d78e7:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  7d78eb:	c1 e9 1b             	shr    ecx,0x1b
  7d78ee:	83 c1 01             	add    ecx,0x1
  7d78f1:	89 0a                	mov    DWORD PTR [edx],ecx
  7d78f3:	c3                   	ret
