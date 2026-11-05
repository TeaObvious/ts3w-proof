# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00745240, 0x00745274); analyst name Objects_DoPreLeavingValidSpatialConfiguration.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00745240 <.text+0x344240>:
  745240:	e8 2b 23 1f 00       	call   0x937570
  745245:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  745249:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  74524d:	51                   	push   ecx
  74524e:	52                   	push   edx
  74524f:	8b c8                	mov    ecx,eax
  745251:	e8 2a 2d 1f 00       	call   0x937f80
  745256:	85 c0                	test   eax,eax
  745258:	74 19                	je     0x745273
  74525a:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  745260:	51                   	push   ecx
  745261:	8b c8                	mov    ecx,eax
  745263:	e8 f8 ef 1e 00       	call   0x934260
  745268:	85 c0                	test   eax,eax
  74526a:	74 07                	je     0x745273
  74526c:	8b c8                	mov    ecx,eax
  74526e:	e9 ed 43 54 00       	jmp    0xc89660
  745273:	c3                   	ret
