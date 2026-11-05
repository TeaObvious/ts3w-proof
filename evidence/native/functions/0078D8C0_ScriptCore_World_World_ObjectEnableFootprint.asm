# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0078d8c0, 0x0078d907); analyst name ScriptCore.World::World_ObjectEnableFootprint.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078d8c0 <.text+0x38c8c0>:
  78d8c0:	e8 ab 9c 1a 00       	call   0x937570
  78d8c5:	85 c0                	test   eax,eax
  78d8c7:	74 3b                	je     0x78d904
  78d8c9:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  78d8cd:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  78d8d1:	51                   	push   ecx
  78d8d2:	52                   	push   edx
  78d8d3:	8b c8                	mov    ecx,eax
  78d8d5:	e8 a6 a6 1a 00       	call   0x937f80
  78d8da:	85 c0                	test   eax,eax
  78d8dc:	74 26                	je     0x78d904
  78d8de:	8b 0d a8 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fa8
  78d8e4:	51                   	push   ecx
  78d8e5:	8b c8                	mov    ecx,eax
  78d8e7:	e8 74 69 1a 00       	call   0x934260
  78d8ec:	85 c0                	test   eax,eax
  78d8ee:	74 14                	je     0x78d904
  78d8f0:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  78d8f4:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  78d8f8:	52                   	push   edx
  78d8f9:	51                   	push   ecx
  78d8fa:	8b c8                	mov    ecx,eax
  78d8fc:	e8 1f 83 1b 00       	call   0x945c20
  78d901:	b0 01                	mov    al,0x1
  78d903:	c3                   	ret
  78d904:	32 c0                	xor    al,al
  78d906:	c3                   	ret
