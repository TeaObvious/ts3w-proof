# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056f940, 0x0056f952); analyst name AnimationTimeScaleController_GetAccumulatedTime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056f940 <.text+0x16e940>:
  56f940:	56                   	push   esi
  56f941:	8b f1                	mov    esi,ecx
  56f943:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56f946:	8b 01                	mov    eax,DWORD PTR [ecx]
  56f948:	8b 50 14             	mov    edx,DWORD PTR [eax+0x14]
  56f94b:	ff d2                	call   edx
  56f94d:	d8 4e 30             	fmul   DWORD PTR [esi+0x30]
  56f950:	5e                   	pop    esi
  56f951:	c3                   	ret
