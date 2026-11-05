# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x009396d0,0x009396fe); analyst name ParameterTable_CopyRawWordType5.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

009396d0 <.text+0x5386d0>:
  9396d0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9396d4:	56                   	push   esi
  9396d5:	6a 05                	push   0x5
  9396d7:	50                   	push   eax
  9396d8:	8b f1                	mov    esi,ecx
  9396da:	e8 31 ff ff ff       	call   0x939610
  9396df:	85 c0                	test   eax,eax
  9396e1:	75 06                	jne    0x9396e9
  9396e3:	32 c0                	xor    al,al
  9396e5:	5e                   	pop    esi
  9396e6:	c2 08 00             	ret    0x8
  9396e9:	8b 48 08             	mov    ecx,DWORD PTR [eax+0x8]
  9396ec:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  9396ef:	8b 04 11             	mov    eax,DWORD PTR [ecx+edx*1]
  9396f2:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  9396f6:	89 01                	mov    DWORD PTR [ecx],eax
  9396f8:	b0 01                	mov    al,0x1
  9396fa:	5e                   	pop    esi
  9396fb:	c2 08 00             	ret    0x8
