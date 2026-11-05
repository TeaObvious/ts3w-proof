# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00565f00, 0x00565f26); analyst name AnimationController_DestroyBase.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00565f00 <.text+0x164f00>:
  565f00:	56                   	push   esi
  565f01:	8b f1                	mov    esi,ecx
  565f03:	8d 4e 0c             	lea    ecx,[esi+0xc]
  565f06:	c7 06 f8 29 fc 00    	mov    DWORD PTR [esi],0xfc29f8
  565f0c:	c7 46 08 ec 29 fc 00 	mov    DWORD PTR [esi+0x8],0xfc29ec
  565f13:	c7 01 e8 29 fc 00    	mov    DWORD PTR [ecx],0xfc29e8
  565f19:	e8 72 fe ff ff       	call   0x565d90
  565f1e:	c7 06 a4 bb 02 01    	mov    DWORD PTR [esi],0x102bba4
  565f24:	5e                   	pop    esi
  565f25:	c3                   	ret
