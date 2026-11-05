# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0078db40,0x0078dba4); analyst name World_ClearRoomMarkerSeed.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0078db40 <.text+0x38cb40>:
  78db40:	e8 2b 9a 1a 00       	call   0x937570
  78db45:	85 c0                	test   eax,eax
  78db47:	74 5a                	je     0x78dba3
  78db49:	56                   	push   esi
  78db4a:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  78db4e:	57                   	push   edi
  78db4f:	8b 7c 24 0c          	mov    edi,DWORD PTR [esp+0xc]
  78db53:	56                   	push   esi
  78db54:	57                   	push   edi
  78db55:	8b c8                	mov    ecx,eax
  78db57:	e8 24 a4 1a 00       	call   0x937f80
  78db5c:	85 c0                	test   eax,eax
  78db5e:	74 41                	je     0x78dba1
  78db60:	8b 0d 08 df 1e 01    	mov    ecx,DWORD PTR ds:0x11edf08
  78db66:	51                   	push   ecx
  78db67:	8b c8                	mov    ecx,eax
  78db69:	e8 f2 66 1a 00       	call   0x934260
  78db6e:	85 c0                	test   eax,eax
  78db70:	74 2f                	je     0x78dba1
  78db72:	8b 0d c4 db 1e 01    	mov    ecx,DWORD PTR ds:0x11edbc4
  78db78:	85 c9                	test   ecx,ecx
  78db7a:	74 25                	je     0x78dba1
  78db7c:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  78db7f:	8b 40 0c             	mov    eax,DWORD PTR [eax+0xc]
  78db82:	6a 00                	push   0x0
  78db84:	50                   	push   eax
  78db85:	52                   	push   edx
  78db86:	e8 85 4c 4d 00       	call   0xc62810
  78db8b:	85 c0                	test   eax,eax
  78db8d:	74 12                	je     0x78dba1
  78db8f:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  78db93:	8b 88 98 02 00 00    	mov    ecx,DWORD PTR [eax+0x298]
  78db99:	56                   	push   esi
  78db9a:	57                   	push   edi
  78db9b:	52                   	push   edx
  78db9c:	e8 cf 55 3c 00       	call   0xb53170
  78dba1:	5f                   	pop    edi
  78dba2:	5e                   	pop    esi
  78dba3:	c3                   	ret
