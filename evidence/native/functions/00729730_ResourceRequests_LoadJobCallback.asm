# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00729730 (ResourceRequests_LoadJobCallback)
Complete body envelope: 0x00729730..0x00729744 (exclusive end)
Body ranges: [[00729730, 00729743]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00729730 <.text+0x328730>:
  729730:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  729734:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  729738:	50                   	push   eax
  729739:	51                   	push   ecx
  72973a:	8b 4c 24 10          	mov    ecx,DWORD PTR [esp+0x10]
  72973e:	e8 1d fd ff ff       	call   0x729460
  729743:	c3                   	ret
