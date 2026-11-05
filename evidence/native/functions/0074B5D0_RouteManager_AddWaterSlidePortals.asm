# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0074b5d0,0x0074b5f6); analyst name RouteManager_AddWaterSlidePortals.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074b5d0 <.text+0x34a5d0>:
  74b5d0:	56                   	push   esi
  74b5d1:	33 f6                	xor    esi,esi
  74b5d3:	e8 18 d7 0d 00       	call   0x828cf0
  74b5d8:	85 c0                	test   eax,eax
  74b5da:	74 13                	je     0x74b5ef
  74b5dc:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  74b5e0:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  74b5e4:	51                   	push   ecx
  74b5e5:	52                   	push   edx
  74b5e6:	8b c8                	mov    ecx,eax
  74b5e8:	e8 73 3b 0e 00       	call   0x82f160
  74b5ed:	8b f0                	mov    esi,eax
  74b5ef:	85 f6                	test   esi,esi
  74b5f1:	0f 97 c0             	seta   al
  74b5f4:	5e                   	pop    esi
  74b5f5:	c3                   	ret
