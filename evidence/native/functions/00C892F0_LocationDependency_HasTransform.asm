# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete function-body envelope [0x00c892f0, 0x00c89300).
# Analyst name: LocationDependency_HasTransform; original instruction bytes govern the paired Ghidra pseudocode.
# Paired actual annotated Ghidra pseudocode: 00C892F0_LocationDependency_HasTransform.c

COMPLETE ORIGINAL DISASSEMBLY

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00c892f0 <.text+0x8882f0>:
  c892f0:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  c892f5:	23 44 24 04          	and    eax,DWORD PTR [esp+0x4]
  c892f9:	f7 d8                	neg    eax
  c892fb:	1b c0                	sbb    eax,eax
  c892fd:	f7 d8                	neg    eax
  c892ff:	c3                   	ret
