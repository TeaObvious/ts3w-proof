# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056f960, 0x0056f972); analyst name AnimationTimeScaleController_GetClipTime.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056f960 <.text+0x16e960>:
  56f960:	56                   	push   esi
  56f961:	8b f1                	mov    esi,ecx
  56f963:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56f966:	8b 01                	mov    eax,DWORD PTR [ecx]
  56f968:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  56f96b:	ff d2                	call   edx
  56f96d:	d8 4e 30             	fmul   DWORD PTR [esi+0x30]
  56f970:	5e                   	pop    esi
  56f971:	c3                   	ret
