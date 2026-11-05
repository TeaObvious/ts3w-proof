# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x009331d0, 0x00933239); analyst name FootprintResource_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

009331d0 <.text+0x5321d0>:
  9331d0:	8b c1                	mov    eax,ecx
  9331d2:	c7 00 14 3c fb 00    	mov    DWORD PTR [eax],0xfb3c14
  9331d8:	33 c9                	xor    ecx,ecx
  9331da:	8d 50 04             	lea    edx,[eax+0x4]
  9331dd:	87 0a                	xchg   DWORD PTR [edx],ecx
  9331df:	33 c9                	xor    ecx,ecx
  9331e1:	89 48 08             	mov    DWORD PTR [eax+0x8],ecx
  9331e4:	89 48 0c             	mov    DWORD PTR [eax+0xc],ecx
  9331e7:	89 48 10             	mov    DWORD PTR [eax+0x10],ecx
  9331ea:	89 48 14             	mov    DWORD PTR [eax+0x14],ecx
  9331ed:	89 48 20             	mov    DWORD PTR [eax+0x20],ecx
  9331f0:	89 48 24             	mov    DWORD PTR [eax+0x24],ecx
  9331f3:	89 48 1c             	mov    DWORD PTR [eax+0x1c],ecx
  9331f6:	89 48 18             	mov    DWORD PTR [eax+0x18],ecx
  9331f9:	c7 00 ec 3b 04 01    	mov    DWORD PTR [eax],0x1043bec
  9331ff:	89 48 28             	mov    DWORD PTR [eax+0x28],ecx
  933202:	89 48 2c             	mov    DWORD PTR [eax+0x2c],ecx
  933205:	89 48 30             	mov    DWORD PTR [eax+0x30],ecx
  933208:	ba d0 3b 04 01       	mov    edx,0x1043bd0
  93320d:	89 50 34             	mov    DWORD PTR [eax+0x34],edx
  933210:	89 48 38             	mov    DWORD PTR [eax+0x38],ecx
  933213:	89 48 3c             	mov    DWORD PTR [eax+0x3c],ecx
  933216:	89 48 40             	mov    DWORD PTR [eax+0x40],ecx
  933219:	89 50 44             	mov    DWORD PTR [eax+0x44],edx
  93321c:	89 48 48             	mov    DWORD PTR [eax+0x48],ecx
  93321f:	89 48 4c             	mov    DWORD PTR [eax+0x4c],ecx
  933222:	89 48 50             	mov    DWORD PTR [eax+0x50],ecx
  933225:	89 50 54             	mov    DWORD PTR [eax+0x54],edx
  933228:	c7 40 58 09 00 00 00 	mov    DWORD PTR [eax+0x58],0x9
  93322f:	88 48 5c             	mov    BYTE PTR [eax+0x5c],cl
  933232:	88 48 5d             	mov    BYTE PTR [eax+0x5d],cl
  933235:	88 48 5e             	mov    BYTE PTR [eax+0x5e],cl
  933238:	c3                   	ret
