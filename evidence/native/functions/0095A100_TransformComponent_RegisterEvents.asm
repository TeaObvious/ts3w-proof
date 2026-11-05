# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0095a100, 0x0095a14f); analyst name TransformComponent_RegisterEvents.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0095a100 <.text+0x559100>:
  95a100:	56                   	push   esi
  95a101:	6a 00                	push   0x0
  95a103:	68 d0 a0 95 00       	push   0x95a0d0
  95a108:	6a 06                	push   0x6
  95a10a:	e8 e1 b4 fd ff       	call   0x9355f0
  95a10f:	6a 00                	push   0x0
  95a111:	68 30 7c 95 00       	push   0x957c30
  95a116:	6a 12                	push   0x12
  95a118:	e8 d3 b4 fd ff       	call   0x9355f0
  95a11d:	6a 00                	push   0x0
  95a11f:	68 40 8d 95 00       	push   0x958d40
  95a124:	6a 04                	push   0x4
  95a126:	e8 c5 b4 fd ff       	call   0x9355f0
  95a12b:	83 c4 24             	add    esp,0x24
  95a12e:	e8 3d d4 fd ff       	call   0x937570
  95a133:	8b f0                	mov    esi,eax
  95a135:	8b ce                	mov    ecx,esi
  95a137:	e8 54 d5 fd ff       	call   0x937690
  95a13c:	8b ce                	mov    ecx,esi
  95a13e:	a3 54 a1 1e 01       	mov    ds:0x11ea154,eax
  95a143:	e8 28 d5 fd ff       	call   0x937670
  95a148:	a3 50 a1 1e 01       	mov    ds:0x11ea150,eax
  95a14d:	5e                   	pop    esi
  95a14e:	c3                   	ret
