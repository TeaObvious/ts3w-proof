# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0073a290, 0x0073a2e7); analyst name AnimationScriptFunctions_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0073a290 <.text+0x339290>:
  73a290:	6a 00                	push   0x0
  73a292:	6a 00                	push   0x0
  73a294:	6a 00                	push   0x0
  73a296:	6a 00                	push   0x0
  73a298:	68 2c f7 fd 00       	push   0xfdf72c
  73a29d:	6a 0c                	push   0xc
  73a29f:	e8 5c a2 da ff       	call   0x4e4500
  73a2a4:	83 c4 18             	add    esp,0x18
  73a2a7:	85 c0                	test   eax,eax
  73a2a9:	74 2d                	je     0x73a2d8
  73a2ab:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  73a2af:	c7 40 04 0c 2c fc 00 	mov    DWORD PTR [eax+0x4],0xfc2c0c
  73a2b6:	c7 00 4c fd ff 00    	mov    DWORD PTR [eax],0xfffd4c
  73a2bc:	c7 40 04 2c fd ff 00 	mov    DWORD PTR [eax+0x4],0xfffd2c
  73a2c3:	c7 40 08 00 00 00 00 	mov    DWORD PTR [eax+0x8],0x0
  73a2ca:	8b 11                	mov    edx,DWORD PTR [ecx]
  73a2cc:	a3 34 4e 1d 01       	mov    ds:0x11d4e34,eax
  73a2d1:	50                   	push   eax
  73a2d2:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  73a2d5:	ff d0                	call   eax
  73a2d7:	c3                   	ret
  73a2d8:	8b 4c 24 04          	mov    ecx,DWORD PTR [esp+0x4]
  73a2dc:	8b 11                	mov    edx,DWORD PTR [ecx]
  73a2de:	33 c0                	xor    eax,eax
  73a2e0:	50                   	push   eax
  73a2e1:	8b 42 48             	mov    eax,DWORD PTR [edx+0x48]
  73a2e4:	ff d0                	call   eax
  73a2e6:	c3                   	ret
