# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00d4b3a0 (ResourceCallback_InvokeVirtual04)
Complete body envelope: 0x00d4b3a0..0x00d4b3ab (exclusive end)
Body ranges: [[00d4b3a0, 00d4b3aa]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d4b3a0 <.text+0x94a3a0>:
  d4b3a0:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  d4b3a4:	8b 01                	mov    eax,DWORD PTR [ecx]
  d4b3a6:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  d4b3a9:	ff e2                	jmp    edx
