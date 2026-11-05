# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009c8b60,0x009c8b75); analyst name SimStorage_DeleteTravelResource.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009c8b60 <.text+0x5c7b60>:
  9c8b60:	32 c0                	xor    al,al
  9c8b62:	83 79 70 00          	cmp    DWORD PTR [ecx+0x70],0x0
  9c8b66:	74 0a                	je     0x9c8b72
  9c8b68:	8b 49 70             	mov    ecx,DWORD PTR [ecx+0x70]
  9c8b6b:	8b 01                	mov    eax,DWORD PTR [ecx]
  9c8b6d:	8b 40 40             	mov    eax,DWORD PTR [eax+0x40]
  9c8b70:	ff e0                	jmp    eax
  9c8b72:	c2 04 00             	ret    0x4
