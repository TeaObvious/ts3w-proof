# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00744bc0, 0x00744bdd); analyst name Objects_IsValid.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00744bc0 <.text+0x343bc0>:
  744bc0:	e8 ab 29 1f 00       	call   0x937570
  744bc5:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  744bc9:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  744bcd:	51                   	push   ecx
  744bce:	52                   	push   edx
  744bcf:	8b c8                	mov    ecx,eax
  744bd1:	e8 aa 33 1f 00       	call   0x937f80
  744bd6:	f7 d8                	neg    eax
  744bd8:	1b c0                	sbb    eax,eax
  744bda:	f7 d8                	neg    eax
  744bdc:	c3                   	ret
