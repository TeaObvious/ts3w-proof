# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00625050,0x00625069); analyst name Portal_BypassesEndPositionCheck.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00625050 <.text+0x224050>:
  625050:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  625054:	85 c0                	test   eax,eax
  625056:	74 0c                	je     0x625064
  625058:	0f b6 40 58          	movzx  eax,BYTE PTR [eax+0x58]
  62505c:	d1 e8                	shr    eax,1
  62505e:	83 e0 01             	and    eax,0x1
  625061:	c2 04 00             	ret    0x4
  625064:	32 c0                	xor    al,al
  625066:	c2 04 00             	ret    0x4
