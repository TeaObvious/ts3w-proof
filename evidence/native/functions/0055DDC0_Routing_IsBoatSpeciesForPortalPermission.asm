# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0055ddc0,0x0055de0c); analyst name Routing_IsBoatSpeciesForPortalPermission.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0055ddc0 <.text+0x15cdc0>:
  55ddc0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  55ddc4:	3d 00 0e 00 00       	cmp    eax,0xe00
  55ddc9:	74 3b                	je     0x55de06
  55ddcb:	3d 00 0d 00 00       	cmp    eax,0xd00
  55ddd0:	74 34                	je     0x55de06
  55ddd2:	3d 00 0f 00 00       	cmp    eax,0xf00
  55ddd7:	74 2d                	je     0x55de06
  55ddd9:	3d 00 0c 00 00       	cmp    eax,0xc00
  55ddde:	74 26                	je     0x55de06
  55dde0:	3d 00 41 00 00       	cmp    eax,0x4100
  55dde5:	74 1f                	je     0x55de06
  55dde7:	3d 00 42 00 00       	cmp    eax,0x4200
  55ddec:	74 18                	je     0x55de06
  55ddee:	3d 00 43 00 00       	cmp    eax,0x4300
  55ddf3:	74 11                	je     0x55de06
  55ddf5:	3d 00 45 00 00       	cmp    eax,0x4500
  55ddfa:	74 0a                	je     0x55de06
  55ddfc:	3d 00 46 00 00       	cmp    eax,0x4600
  55de01:	74 03                	je     0x55de06
  55de03:	33 c0                	xor    eax,eax
  55de05:	c3                   	ret
  55de06:	b8 01 00 00 00       	mov    eax,0x1
  55de0b:	c3                   	ret
