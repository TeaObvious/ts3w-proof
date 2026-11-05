# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete function-body envelope [0x0095dbc0, 0x0095dbd9).
# Analyst name: VisualStateDependency_HasVisualSource; original instruction bytes govern the paired Ghidra pseudocode.
# Paired actual annotated Ghidra pseudocode: 0095DBC0_VisualStateDependency_HasVisualSource.c

COMPLETE ORIGINAL DISASSEMBLY

TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095dbc0 <.text+0x55cbc0>:
  95dbc0:	a1 90 9e 1e 01       	mov    eax,ds:0x11e9e90
  95dbc5:	0b 05 c4 9f 1e 01    	or     eax,DWORD PTR ds:0x11e9fc4
  95dbcb:	0b 05 f8 a0 1e 01    	or     eax,DWORD PTR ds:0x11ea0f8
  95dbd1:	85 44 24 04          	test   DWORD PTR [esp+0x4],eax
  95dbd5:	0f 95 c0             	setne  al
  95dbd8:	c3                   	ret
