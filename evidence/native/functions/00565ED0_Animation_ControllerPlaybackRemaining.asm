# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00565ed0, 0x00565ed7); analyst name Animation_ControllerPlaybackRemaining.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00565ed0 <.text+0x164ed0>:
  565ed0:	8b 01                	mov    eax,DWORD PTR [ecx]
  565ed2:	8b 50 1c             	mov    edx,DWORD PTR [eax+0x1c]
  565ed5:	ff e2                	jmp    edx
