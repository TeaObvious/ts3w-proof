# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete function-body envelope [0x00941f00, 0x00941f0d).
# Analyst name: ComponentDependency_HasTransform; original instruction bytes govern the paired Ghidra pseudocode.
# Paired actual annotated Ghidra pseudocode: 00941F00_ComponentDependency_HasTransform.c

COMPLETE ORIGINAL DISASSEMBLY

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00941f00 <.text+0x540f00>:
  941f00:	a1 58 a1 1e 01       	mov    eax,ds:0x11ea158
  941f05:	85 44 24 04          	test   DWORD PTR [esp+0x4],eax
  941f09:	0f 95 c0             	setne  al
  941f0c:	c3                   	ret
