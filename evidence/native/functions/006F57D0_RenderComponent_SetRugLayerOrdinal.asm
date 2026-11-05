# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x006f57d0,0x006f57fc); analyst name RenderComponent_SetRugLayerOrdinal.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

006f57d0 <.text+0x2f47d0>:
  6f57d0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  6f57d4:	89 81 b8 02 00 00    	mov    DWORD PTR [ecx+0x2b8],eax
  6f57da:	8b 91 f8 01 00 00    	mov    edx,DWORD PTR [ecx+0x1f8]
  6f57e0:	3b 91 fc 01 00 00    	cmp    edx,DWORD PTR [ecx+0x1fc]
  6f57e6:	74 11                	je     0x6f57f9
  6f57e8:	8b c2                	mov    eax,edx
  6f57ea:	8b 08                	mov    ecx,DWORD PTR [eax]
  6f57ec:	c7 44 24 04 00 00 00 00 	mov    DWORD PTR [esp+0x4],0x0
  6f57f4:	e9 c7 19 fc ff       	jmp    0x6b71c0
  6f57f9:	c2 04 00             	ret    0x4
