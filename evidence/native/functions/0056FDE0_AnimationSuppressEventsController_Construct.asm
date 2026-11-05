# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056fde0, 0x0056fe24); analyst name AnimationSuppressEventsController_Construct.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056fde0 <.text+0x16ede0>:
  56fde0:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  56fde4:	56                   	push   esi
  56fde5:	50                   	push   eax
  56fde6:	8b f1                	mov    esi,ecx
  56fde8:	e8 53 60 ff ff       	call   0x565e40
  56fded:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  56fdf1:	85 c0                	test   eax,eax
  56fdf3:	c7 46 28 0c 2c fc 00 	mov    DWORD PTR [esi+0x28],0xfc2c0c
  56fdfa:	c7 06 90 31 fc 00    	mov    DWORD PTR [esi],0xfc3190
  56fe00:	c7 46 08 88 31 fc 00 	mov    DWORD PTR [esi+0x8],0xfc3188
  56fe07:	c7 46 0c 84 31 fc 00 	mov    DWORD PTR [esi+0xc],0xfc3184
  56fe0e:	c7 46 28 0c 2c fc 00 	mov    DWORD PTR [esi+0x28],0xfc2c0c
  56fe15:	89 46 2c             	mov    DWORD PTR [esi+0x2c],eax
  56fe18:	74 04                	je     0x56fe1e
  56fe1a:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  56fe1e:	8b c6                	mov    eax,esi
  56fe20:	5e                   	pop    esi
  56fe21:	c2 08 00             	ret    0x8
