# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete function-body envelope [0x00944940, 0x0094494d).
# Analyst name: FootprintDependency_HasSim; original instruction bytes govern the paired Ghidra pseudocode.
# Paired actual annotated Ghidra pseudocode: 00944940_FootprintDependency_HasSim.c

COMPLETE ORIGINAL DISASSEMBLY

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00944940 <.text+0x543940>:
  944940:	a1 fc a0 1e 01       	mov    eax,ds:0x11ea0fc
  944945:	85 44 24 04          	test   DWORD PTR [esp+0x4],eax
  944949:	0f 95 c0             	setne  al
  94494c:	c3                   	ret
