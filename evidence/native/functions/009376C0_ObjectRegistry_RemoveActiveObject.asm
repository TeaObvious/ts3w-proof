# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009376c0, 0x00937720); analyst name ObjectRegistry_RemoveActiveObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009376c0 <.text+0x5366c0>:
  9376c0:	56                   	push   esi
  9376c1:	57                   	push   edi
  9376c2:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  9376c6:	8b 77 28             	mov    esi,DWORD PTR [edi+0x28]
  9376c9:	8b d6                	mov    edx,esi
  9376cb:	81 e2 ff ff 3f 00    	and    edx,0x3fffff
  9376d1:	74 48                	je     0x93771b
  9376d3:	8b 81 d8 11 00 00    	mov    eax,DWORD PTR [ecx+0x11d8]
  9376d9:	2b 81 d4 11 00 00    	sub    eax,DWORD PTR [ecx+0x11d4]
  9376df:	c1 f8 02             	sar    eax,0x2
  9376e2:	83 e8 01             	sub    eax,0x1
  9376e5:	3b c2                	cmp    eax,edx
  9376e7:	74 22                	je     0x93770b
  9376e9:	53                   	push   ebx
  9376ea:	8b 99 d4 11 00 00    	mov    ebx,DWORD PTR [ecx+0x11d4]
  9376f0:	8b 04 83             	mov    eax,DWORD PTR [ebx+eax*4]
  9376f3:	8b 58 28             	mov    ebx,DWORD PTR [eax+0x28]
  9376f6:	81 e3 00 00 80 ff    	and    ebx,0xff800000
  9376fc:	03 da                	add    ebx,edx
  9376fe:	89 58 28             	mov    DWORD PTR [eax+0x28],ebx
  937701:	8b 99 d4 11 00 00    	mov    ebx,DWORD PTR [ecx+0x11d4]
  937707:	89 04 93             	mov    DWORD PTR [ebx+edx*4],eax
  93770a:	5b                   	pop    ebx
  93770b:	81 e6 00 00 80 ff    	and    esi,0xff800000
  937711:	89 77 28             	mov    DWORD PTR [edi+0x28],esi
  937714:	83 81 d8 11 00 00 fc 	add    DWORD PTR [ecx+0x11d8],0xfffffffc
  93771b:	5f                   	pop    edi
  93771c:	5e                   	pop    esi
  93771d:	c2 04 00             	ret    0x4
