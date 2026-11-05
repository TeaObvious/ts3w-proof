# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0062c0d0, 0x0062c0fb); analyst name Int32Vector_AppendValue.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0062c0d0 <.text+0x22b0d0>:
  62c0d0:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  62c0d3:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  62c0d6:	73 15                	jae    0x62c0ed
  62c0d8:	85 c0                	test   eax,eax
  62c0da:	8d 50 04             	lea    edx,[eax+0x4]
  62c0dd:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  62c0e0:	74 16                	je     0x62c0f8
  62c0e2:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  62c0e6:	8b 11                	mov    edx,DWORD PTR [ecx]
  62c0e8:	89 10                	mov    DWORD PTR [eax],edx
  62c0ea:	c2 04 00             	ret    0x4
  62c0ed:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  62c0f1:	52                   	push   edx
  62c0f2:	50                   	push   eax
  62c0f3:	e8 28 63 35 00       	call   0x982420
  62c0f8:	c2 04 00             	ret    0x4
