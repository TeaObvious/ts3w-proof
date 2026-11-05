# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00955ed0, 0x00955ee7); analyst name TransformComponent_MarkDerivedStateDirty.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00955ed0 <.text+0x554ed0>:
  955ed0:	a1 50 a1 1e 01       	mov    eax,ds:0x11ea150
  955ed5:	56                   	push   esi
  955ed6:	8b f1                	mov    esi,ecx
  955ed8:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  955edb:	50                   	push   eax
  955edc:	e8 ef e3 fd ff       	call   0x9342d0
  955ee1:	83 4e 34 02          	or     DWORD PTR [esi+0x34],0x2
  955ee5:	5e                   	pop    esi
  955ee6:	c3                   	ret
