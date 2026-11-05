# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b660,0x0074b67d); analyst name RouteManager_SetOceanPortalOwner.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b660 <.text+0x34a660>:
  74b660:	e8 8b d6 0d 00       	call   0x828cf0
  74b665:	85 c0                	test   eax,eax
  74b667:	74 11                	je     0x74b67a
  74b669:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  74b66d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  74b671:	51                   	push   ecx
  74b672:	52                   	push   edx
  74b673:	8b c8                	mov    ecx,eax
  74b675:	e8 c6 d8 0d 00       	call   0x828f40
  74b67a:	b0 01                	mov    al,0x1
  74b67c:	c3                   	ret
