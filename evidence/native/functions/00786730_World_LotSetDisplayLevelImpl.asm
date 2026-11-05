# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00786730,0x00786762); analyst name World_LotSetDisplayLevelImpl.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00786730 <.text+0x385730>:
  786730:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  786736:	85 c9                	test   ecx,ecx
  786738:	74 27                	je     0x786761
  78673a:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  78673e:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  786742:	6a 00                	push   0x0
  786744:	50                   	push   eax
  786745:	52                   	push   edx
  786746:	e8 c5 c0 4d 00       	call   0xc62810
  78674b:	85 c0                	test   eax,eax
  78674d:	74 12                	je     0x786761
  78674f:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  786753:	6a 00                	push   0x0
  786755:	6a 01                	push   0x1
  786757:	6a 00                	push   0x0
  786759:	51                   	push   ecx
  78675a:	8b c8                	mov    ecx,eax
  78675c:	e8 bf 8e 33 00       	call   0xabf620
  786761:	c3                   	ret
