# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00566990, 0x005669e8); analyst name AnimationController_UnregisterListener.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00566990 <.text+0x165990>:
  566990:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  566993:	8d 51 04             	lea    edx,[ecx+0x4]
  566996:	3b c2                	cmp    eax,edx
  566998:	56                   	push   esi
  566999:	74 14                	je     0x5669af
  56699b:	8b 74 24 08          	mov    esi,DWORD PTR [esp+0x8]
  56699f:	90                   	nop
  5669a0:	85 c0                	test   eax,eax
  5669a2:	74 05                	je     0x5669a9
  5669a4:	39 70 08             	cmp    DWORD PTR [eax+0x8],esi
  5669a7:	74 0c                	je     0x5669b5
  5669a9:	8b 00                	mov    eax,DWORD PTR [eax]
  5669ab:	3b c2                	cmp    eax,edx
  5669ad:	75 f1                	jne    0x5669a0
  5669af:	32 c0                	xor    al,al
  5669b1:	5e                   	pop    esi
  5669b2:	c2 04 00             	ret    0x4
  5669b5:	83 79 0c 00          	cmp    DWORD PTR [ecx+0xc],0x0
  5669b9:	75 19                	jne    0x5669d4
  5669bb:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  5669be:	8b 10                	mov    edx,DWORD PTR [eax]
  5669c0:	89 11                	mov    DWORD PTR [ecx],edx
  5669c2:	50                   	push   eax
  5669c3:	89 4a 04             	mov    DWORD PTR [edx+0x4],ecx
  5669c6:	e8 15 db f7 ff       	call   0x4e44e0
  5669cb:	83 c4 04             	add    esp,0x4
  5669ce:	b0 01                	mov    al,0x1
  5669d0:	5e                   	pop    esi
  5669d1:	c2 04 00             	ret    0x4
  5669d4:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
  5669db:	c7 40 0c 00 00 00 00 	mov    DWORD PTR [eax+0xc],0x0
  5669e2:	b0 01                	mov    al,0x1
  5669e4:	5e                   	pop    esi
  5669e5:	c2 04 00             	ret    0x4
