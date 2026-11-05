# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0078d950, 0x0078d98d); analyst name ScriptCore.World::World_ObjectResetFootprintState.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078d950 <.text+0x38c950>:
  78d950:	e8 1b 9c 1a 00       	call   0x937570
  78d955:	85 c0                	test   eax,eax
  78d957:	74 31                	je     0x78d98a
  78d959:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  78d95d:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  78d961:	51                   	push   ecx
  78d962:	52                   	push   edx
  78d963:	8b c8                	mov    ecx,eax
  78d965:	e8 16 a6 1a 00       	call   0x937f80
  78d96a:	85 c0                	test   eax,eax
  78d96c:	74 1c                	je     0x78d98a
  78d96e:	8b 0d a8 9f 1e 01    	mov    ecx,DWORD PTR ds:0x11e9fa8
  78d974:	51                   	push   ecx
  78d975:	8b c8                	mov    ecx,eax
  78d977:	e8 e4 68 1a 00       	call   0x934260
  78d97c:	85 c0                	test   eax,eax
  78d97e:	74 0a                	je     0x78d98a
  78d980:	8b c8                	mov    ecx,eax
  78d982:	e8 99 84 1b 00       	call   0x945e20
  78d987:	b0 01                	mov    al,0x1
  78d989:	c3                   	ret
  78d98a:	32 c0                	xor    al,al
  78d98c:	c3                   	ret
