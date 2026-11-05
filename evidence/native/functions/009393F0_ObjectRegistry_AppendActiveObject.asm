# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009393f0, 0x00939433); analyst name ObjectRegistry_AppendActiveObject.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009393f0 <.text+0x5383f0>:
  9393f0:	8b 81 d8 11 00 00    	mov    eax,DWORD PTR [ecx+0x11d8]
  9393f6:	2b 81 d4 11 00 00    	sub    eax,DWORD PTR [ecx+0x11d4]
  9393fc:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  939400:	81 c1 d4 11 00 00    	add    ecx,0x11d4
  939406:	c1 f8 02             	sar    eax,0x2
  939409:	01 42 28             	add    DWORD PTR [edx+0x28],eax
  93940c:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  93940f:	3b 41 08             	cmp    eax,DWORD PTR [ecx+0x8]
  939412:	73 11                	jae    0x939425
  939414:	85 c0                	test   eax,eax
  939416:	56                   	push   esi
  939417:	8d 70 04             	lea    esi,[eax+0x4]
  93941a:	89 71 04             	mov    DWORD PTR [ecx+0x4],esi
  93941d:	5e                   	pop    esi
  93941e:	74 10                	je     0x939430
  939420:	89 10                	mov    DWORD PTR [eax],edx
  939422:	c2 04 00             	ret    0x4
  939425:	8d 54 24 04          	lea    edx,[esp+0x4]
  939429:	52                   	push   edx
  93942a:	50                   	push   eax
  93942b:	e8 f0 8f 04 00       	call   0x982420
  939430:	c2 04 00             	ret    0x4
