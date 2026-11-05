# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00acd210, 0x00acd232); analyst name Lot_NotifyObjectLocationChanged.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00acd210 <.text+0x6cc210>:
  acd210:	56                   	push   esi
  acd211:	57                   	push   edi
  acd212:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  acd216:	57                   	push   edi
  acd217:	8b f1                	mov    esi,ecx
  acd219:	e8 02 f7 ff ff       	call   0xacc920
  acd21e:	57                   	push   edi
  acd21f:	8b ce                	mov    ecx,esi
  acd221:	e8 8a f0 ff ff       	call   0xacc2b0
  acd226:	5f                   	pop    edi
  acd227:	c6 86 25 04 00 00 01 	mov    BYTE PTR [esi+0x425],0x1
  acd22e:	5e                   	pop    esi
  acd22f:	c2 04 00             	ret    0x4
