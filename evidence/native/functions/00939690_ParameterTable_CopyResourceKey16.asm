# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939690,0x009396cf); analyst name ParameterTable_CopyResourceKey16.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939690 <.text+0x538690>:
  939690:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  939694:	56                   	push   esi
  939695:	6a 03                	push   0x3
  939697:	50                   	push   eax
  939698:	8b f1                	mov    esi,ecx
  93969a:	e8 71 ff ff ff       	call   0x939610
  93969f:	85 c0                	test   eax,eax
  9396a1:	75 06                	jne    0x9396a9
  9396a3:	32 c0                	xor    al,al
  9396a5:	5e                   	pop    esi
  9396a6:	c2 08 00             	ret    0x8
  9396a9:	8b 40 08             	mov    eax,DWORD PTR [eax+0x8]
  9396ac:	03 46 08             	add    eax,DWORD PTR [esi+0x8]
  9396af:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  9396b3:	8b 10                	mov    edx,DWORD PTR [eax]
  9396b5:	89 11                	mov    DWORD PTR [ecx],edx
  9396b7:	8b 50 04             	mov    edx,DWORD PTR [eax+0x4]
  9396ba:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  9396bd:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  9396c0:	89 51 08             	mov    DWORD PTR [ecx+0x8],edx
  9396c3:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  9396c6:	89 41 0c             	mov    DWORD PTR [ecx+0xc],eax
  9396c9:	b0 01                	mov    al,0x1
  9396cb:	5e                   	pop    esi
  9396cc:	c2 08 00             	ret    0x8
