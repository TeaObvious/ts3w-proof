# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007d7890 (ResourceKey_ApplySourceNumber)
Complete body envelope: 0x007d7890..0x007d78ad (exclusive end)
Body ranges: [[007d7890, 007d78ac]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007d7890 <.text+0x3d6890>:
  7d7890:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  7d7894:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  7d7898:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  7d789b:	83 c1 ff             	add    ecx,0xffffffff
  7d789e:	c1 e1 1b             	shl    ecx,0x1b
  7d78a1:	81 e2 ff ff ff 0f    	and    edx,0xfffffff
  7d78a7:	0b ca                	or     ecx,edx
  7d78a9:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  7d78ac:	c3                   	ret
