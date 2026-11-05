# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056f980, 0x0056f992); analyst name Animation_TimeScaleLifetime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056f980 <.text+0x16e980>:
  56f980:	56                   	push   esi
  56f981:	8b f1                	mov    esi,ecx
  56f983:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56f986:	8b 01                	mov    eax,DWORD PTR [ecx]
  56f988:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  56f98b:	ff d2                	call   edx
  56f98d:	d8 4e 30             	fmul   DWORD PTR [esi+0x30]
  56f990:	5e                   	pop    esi
  56f991:	c3                   	ret
