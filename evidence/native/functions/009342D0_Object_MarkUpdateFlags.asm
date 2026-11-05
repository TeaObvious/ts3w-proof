# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009342d0, 0x009342f8); analyst name Object_MarkUpdateFlags.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009342d0 <.text+0x5332d0>:
  9342d0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  9342d4:	56                   	push   esi
  9342d5:	8b f1                	mov    esi,ecx
  9342d7:	09 46 28             	or     DWORD PTR [esi+0x28],eax
  9342da:	f7 46 28 ff ff 7f 00 	test   DWORD PTR [esi+0x28],0x7fffff
  9342e1:	75 11                	jne    0x9342f4
  9342e3:	e8 88 32 00 00       	call   0x937570
  9342e8:	85 c0                	test   eax,eax
  9342ea:	74 08                	je     0x9342f4
  9342ec:	56                   	push   esi
  9342ed:	8b c8                	mov    ecx,eax
  9342ef:	e8 fc 50 00 00       	call   0x9393f0
  9342f4:	5e                   	pop    esi
  9342f5:	c2 04 00             	ret    0x4
