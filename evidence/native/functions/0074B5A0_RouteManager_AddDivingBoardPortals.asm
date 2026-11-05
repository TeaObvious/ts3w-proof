# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b5a0,0x0074b5c6); analyst name RouteManager_AddDivingBoardPortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b5a0 <.text+0x34a5a0>:
  74b5a0:	56                   	push   esi
  74b5a1:	33 f6                	xor    esi,esi
  74b5a3:	e8 48 d7 0d 00       	call   0x828cf0
  74b5a8:	85 c0                	test   eax,eax
  74b5aa:	74 13                	je     0x74b5bf
  74b5ac:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  74b5b0:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74b5b4:	51                   	push   ecx
  74b5b5:	52                   	push   edx
  74b5b6:	8b c8                	mov    ecx,eax
  74b5b8:	e8 83 3b 0e 00       	call   0x82f140
  74b5bd:	8b f0                	mov    esi,eax
  74b5bf:	85 f6                	test   esi,esi
  74b5c1:	0f 97 c0             	seta   al
  74b5c4:	5e                   	pop    esi
  74b5c5:	c3                   	ret
