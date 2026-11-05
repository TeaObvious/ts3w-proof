# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074f240, 0x0074f298); analyst name SlotArrayDestination_Initialize.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074f240 <.text+0x34e240>:
  74f240:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  74f248:	8b c1                	mov    eax,ecx
  74f24a:	33 c9                	xor    ecx,ecx
  74f24c:	89 48 04             	mov    DWORD PTR [eax+0x4],ecx
  74f24f:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  74f252:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  74f255:	f3 0f 11 40 2c       	movss  DWORD PTR [eax+0x2c],xmm0
  74f25a:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  74f25d:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  74f260:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  74f263:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  74f266:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  74f269:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  74f26c:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  74f26f:	c7 00 8c 52 00 01    	mov    DWORD PTR [eax],0x100528c
  74f275:	89 48 30             	mov    DWORD PTR [eax+0x30],ecx
  74f278:	89 48 34             	mov    DWORD PTR [eax+0x34],ecx
  74f27b:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  74f27e:	c7 40 3c 58 52 00 01 	mov    DWORD PTR [eax+0x3c],0x1005258
  74f285:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  74f288:	89 48 44             	mov    DWORD PTR [eax+0x44],ecx
  74f28b:	89 48 48             	mov    DWORD PTR [eax+0x48],ecx
  74f28e:	89 48 4c             	mov    DWORD PTR [eax+0x4c],ecx
  74f291:	89 48 50             	mov    DWORD PTR [eax+0x50],ecx
  74f294:	88 48 54             	mov    BYTE PTR [eax+0x54],cl
  74f297:	c3                   	ret
