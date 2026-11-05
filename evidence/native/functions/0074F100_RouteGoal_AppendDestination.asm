# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f100, 0x0074f136); analyst name RouteGoal_AppendDestination.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f100 <.text+0x34e100>:
  74f100:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  74f104:	83 c1 18             	add    ecx,0x18
  74f107:	85 c0                	test   eax,eax
  74f109:	74 16                	je     0x74f121
  74f10b:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  74f10e:	83 c0 04             	add    eax,0x4
  74f111:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  74f114:	89 08                	mov    DWORD PTR [eax],ecx
  74f116:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  74f119:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  74f11c:	89 01                	mov    DWORD PTR [ecx],eax
  74f11e:	c2 04 00             	ret    0x4
  74f121:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  74f124:	33 c0                	xor    eax,eax
  74f126:	89 50 04             	mov    DWORD PTR [eax+0x4],edx
  74f129:	89 08                	mov    DWORD PTR [eax],ecx
  74f12b:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  74f12e:	8b 48 04             	mov    ecx,DWORD PTR [eax+0x4]
  74f131:	89 01                	mov    DWORD PTR [ecx],eax
  74f133:	c2 04 00             	ret    0x4
