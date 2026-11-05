# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x005685d0, 0x005685ef); analyst name AnimationClipController_GetPlaybackRemaining.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

005685d0 <.text+0x1675d0>:
  5685d0:	51                   	push   ecx
  5685d1:	56                   	push   esi
  5685d2:	8b f1                	mov    esi,ecx
  5685d4:	8b 06                	mov    eax,DWORD PTR [esi]
  5685d6:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  5685d9:	ff d2                	call   edx
  5685db:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  5685df:	8b 06                	mov    eax,DWORD PTR [esi]
  5685e1:	8b 50 18             	mov    edx,DWORD PTR [eax+0x18]
  5685e4:	8b ce                	mov    ecx,esi
  5685e6:	ff d2                	call   edx
  5685e8:	d8 6c 24 04          	fsubr  DWORD PTR [esp+0x4]
  5685ec:	5e                   	pop    esi
  5685ed:	59                   	pop    ecx
  5685ee:	c3                   	ret
