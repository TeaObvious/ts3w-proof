# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0064f9b0,0x0064f9f2); analyst name PortalPermissionCache_FindObjectRoomKey.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0064f9b0 <.text+0x24e9b0>:
  64f9b0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  64f9b4:	85 c0                	test   eax,eax
  64f9b6:	74 35                	je     0x64f9ed
  64f9b8:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  64f9bc:	8d 64 24 00          	lea    esp,[esp+0x0]
  64f9c0:	3b c8                	cmp    ecx,eax
  64f9c2:	74 2b                	je     0x64f9ef
  64f9c4:	8b 11                	mov    edx,DWORD PTR [ecx]
  64f9c6:	3b 10                	cmp    edx,DWORD PTR [eax]
  64f9c8:	75 1c                	jne    0x64f9e6
  64f9ca:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  64f9cd:	3b 50 04             	cmp    edx,DWORD PTR [eax+0x4]
  64f9d0:	75 14                	jne    0x64f9e6
  64f9d2:	66 8b 51 08          	mov    dx,WORD PTR [ecx+0x8]
  64f9d6:	66 3b 50 08          	cmp    dx,WORD PTR [eax+0x8]
  64f9da:	75 0a                	jne    0x64f9e6
  64f9dc:	66 8b 51 0a          	mov    dx,WORD PTR [ecx+0xa]
  64f9e0:	66 3b 50 0a          	cmp    dx,WORD PTR [eax+0xa]
  64f9e4:	74 09                	je     0x64f9ef
  64f9e6:	8b 40 18             	mov    eax,DWORD PTR [eax+0x18]
  64f9e9:	85 c0                	test   eax,eax
  64f9eb:	75 d3                	jne    0x64f9c0
  64f9ed:	33 c0                	xor    eax,eax
  64f9ef:	c2 0c 00             	ret    0xc
