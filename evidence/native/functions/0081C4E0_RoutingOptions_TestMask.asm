# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0081c4e0, 0x0081c50e); analyst name RoutingOptions_TestMask.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0081c4e0 <.text+0x41b4e0>:
  81c4e0:	80 7c 24 0c 00       	cmp    BYTE PTR [esp+0xc],0x0
  81c4e5:	74 08                	je     0x81c4ef
  81c4e7:	8b 41 30             	mov    eax,DWORD PTR [ecx+0x30]
  81c4ea:	8b 49 34             	mov    ecx,DWORD PTR [ecx+0x34]
  81c4ed:	eb 06                	jmp    0x81c4f5
  81c4ef:	8b 41 28             	mov    eax,DWORD PTR [ecx+0x28]
  81c4f2:	8b 49 2c             	mov    ecx,DWORD PTR [ecx+0x2c]
  81c4f5:	23 44 24 04          	and    eax,DWORD PTR [esp+0x4]
  81c4f9:	23 4c 24 08          	and    ecx,DWORD PTR [esp+0x8]
  81c4fd:	0b c1                	or     eax,ecx
  81c4ff:	74 08                	je     0x81c509
  81c501:	b8 01 00 00 00       	mov    eax,0x1
  81c506:	c2 0c 00             	ret    0xc
  81c509:	33 c0                	xor    eax,eax
  81c50b:	c2 0c 00             	ret    0xc
