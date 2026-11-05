# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x007453c0, 0x0074540e); analyst name Objects_GetLocation.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007453c0 <.text+0x3443c0>:
  7453c0:	e8 ab 21 1f 00       	call   0x937570
  7453c5:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  7453c9:	8b 54 24 04          	mov    edx,DWORD PTR [esp+0x4]
  7453cd:	51                   	push   ecx
  7453ce:	52                   	push   edx
  7453cf:	8b c8                	mov    ecx,eax
  7453d1:	e8 aa 2b 1f 00       	call   0x937f80
  7453d6:	85 c0                	test   eax,eax
  7453d8:	74 33                	je     0x74540d
  7453da:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  7453e0:	51                   	push   ecx
  7453e1:	8b c8                	mov    ecx,eax
  7453e3:	e8 78 ee 1e 00       	call   0x934260
  7453e8:	85 c0                	test   eax,eax
  7453ea:	74 21                	je     0x74540d
  7453ec:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  7453ef:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  7453f3:	89 11                	mov    DWORD PTR [ecx],edx
  7453f5:	8b 50 0c             	mov    edx,DWORD PTR [eax+0xc]
  7453f8:	89 51 04             	mov    DWORD PTR [ecx+0x4],edx
  7453fb:	8b 48 18             	mov    ecx,DWORD PTR [eax+0x18]
  7453fe:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  745402:	89 0a                	mov    DWORD PTR [edx],ecx
  745404:	8b 40 20             	mov    eax,DWORD PTR [eax+0x20]
  745407:	8b 4c 24 14          	mov    ecx,DWORD PTR [esp+0x14]
  74540b:	89 01                	mov    DWORD PTR [ecx],eax
  74540d:	c3                   	ret
