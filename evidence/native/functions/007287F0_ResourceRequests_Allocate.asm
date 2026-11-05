# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x007287f0 (ResourceRequests_Allocate)
Complete body envelope: 0x007287f0..0x00728818 (exclusive end)
Body ranges: [[007287f0, 00728817]]
Only actual body ranges are disassembled; internal alignment gaps are excluded.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007287f0 <.text+0x3277f0>:
  7287f0:	6a 00                	push   0x0
  7287f2:	6a 00                	push   0x0
  7287f4:	6a 00                	push   0x0
  7287f6:	6a 00                	push   0x0
  7287f8:	68 b8 e4 ff 00       	push   0xffe4b8
  7287fd:	68 a8 03 00 00       	push   0x3a8
  728802:	e8 f9 bc db ff       	call   0x4e4500
  728807:	83 c4 18             	add    esp,0x18
  72880a:	85 c0                	test   eax,eax
  72880c:	74 07                	je     0x728815
  72880e:	8b c8                	mov    ecx,eax
  728810:	e9 eb fd ff ff       	jmp    0x728600
  728815:	33 c0                	xor    eax,eax
  728817:	c3                   	ret
