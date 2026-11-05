# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0078d910, 0x0078d950); analyst name ScriptCore.World::World_ObjectIsFootprintEnabled.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078d910 <.text+0x38c910>:
  78d910:	e8 5b 9c 1a 00       	call   0x937570
  78d915:	85 c0                	test   eax,eax
  78d917:	74 34                	je     0x78d94d
  78d919:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  78d91d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  78d921:	51                   	push   ecx
  78d922:	52                   	push   edx
  78d923:	8b c8                	mov    ecx,eax
  78d925:	e8 56 a6 1a 00       	call   0x937f80
  78d92a:	85 c0                	test   eax,eax
  78d92c:	74 1f                	je     0x78d94d
  78d92e:	8b 0d a8 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fa8
  78d934:	51                   	push   ecx
  78d935:	8b c8                	mov    ecx,eax
  78d937:	e8 24 69 1a 00       	call   0x934260
  78d93c:	85 c0                	test   eax,eax
  78d93e:	74 0d                	je     0x78d94d
  78d940:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  78d944:	52                   	push   edx
  78d945:	8b c8                	mov    ecx,eax
  78d947:	e8 94 76 1b 00       	call   0x944fe0
  78d94c:	c3                   	ret
  78d94d:	32 c0                	xor    al,al
  78d94f:	c3                   	ret
