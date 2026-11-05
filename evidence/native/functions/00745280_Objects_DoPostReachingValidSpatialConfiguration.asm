# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00745280, 0x007452b4); analyst name Objects_DoPostReachingValidSpatialConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00745280 <.text+0x344280>:
  745280:	e8 eb 22 1f 00       	call   0x937570
  745285:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  745289:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  74528d:	51                   	push   ecx
  74528e:	52                   	push   edx
  74528f:	8b c8                	mov    ecx,eax
  745291:	e8 ea 2c 1f 00       	call   0x937f80
  745296:	85 c0                	test   eax,eax
  745298:	74 19                	je     0x7452b3
  74529a:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  7452a0:	51                   	push   ecx
  7452a1:	8b c8                	mov    ecx,eax
  7452a3:	e8 b8 ef 1e 00       	call   0x934260
  7452a8:	85 c0                	test   eax,eax
  7452aa:	74 07                	je     0x7452b3
  7452ac:	8b c8                	mov    ecx,eax
  7452ae:	e9 bd 43 54 00       	jmp    0xc89670
  7452b3:	c3                   	ret
