# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0057ab00, 0x0057ab25); analyst name AnimationClipResource_GetDuration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0057ab00 <.text+0x179b00>:
  57ab00:	51                   	push   ecx
  57ab01:	8b 41 4c             	mov    eax,DWORD PTR [ecx+0x4c]
  57ab04:	85 c0                	test   eax,eax
  57ab06:	74 19                	je     0x57ab21
  57ab08:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  57ab0b:	85 c0                	test   eax,eax
  57ab0d:	74 12                	je     0x57ab21
  57ab0f:	0f b7 48 14          	movzx  ecx,WORD PTR [eax+0x14]
  57ab13:	83 e9 01             	sub    ecx,0x1
  57ab16:	89 0c 24             	mov    DWORD PTR [esp],ecx
  57ab19:	db 04 24             	fild   DWORD PTR [esp]
  57ab1c:	d8 48 10             	fmul   DWORD PTR [eax+0x10]
  57ab1f:	59                   	pop    ecx
  57ab20:	c3                   	ret
  57ab21:	d9 ee                	fldz
  57ab23:	59                   	pop    ecx
  57ab24:	c3                   	ret
