# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0056fb60, 0x0056fba6); analyst name AnimationTimeScaleController_Update.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0056fb60 <.text+0x16eb60>:
  56fb60:	56                   	push   esi
  56fb61:	8b f1                	mov    esi,ecx
  56fb63:	85 f6                	test   esi,esi
  56fb65:	74 04                	je     0x56fb6b
  56fb67:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  56fb6b:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  56fb6e:	8b 01                	mov    eax,DWORD PTR [ecx]
  56fb70:	f3 0f 10 46 30       	movss  xmm0,DWORD PTR [esi+0x30]
  56fb75:	f3 0f 59 44 24 08    	mulss  xmm0,DWORD PTR [esp+0x8]
  56fb7b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  56fb7e:	51                   	push   ecx
  56fb7f:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  56fb84:	ff d2                	call   edx
  56fb86:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  56fb89:	83 c0 ff             	add    eax,0xffffffff
  56fb8c:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  56fb8f:	75 11                	jne    0x56fba2
  56fb91:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  56fb98:	8b 06                	mov    eax,DWORD PTR [esi]
  56fb9a:	8b 10                	mov    edx,DWORD PTR [eax]
  56fb9c:	6a 01                	push   0x1
  56fb9e:	8b ce                	mov    ecx,esi
  56fba0:	ff d2                	call   edx
  56fba2:	5e                   	pop    esi
  56fba3:	c2 04 00             	ret    0x4
