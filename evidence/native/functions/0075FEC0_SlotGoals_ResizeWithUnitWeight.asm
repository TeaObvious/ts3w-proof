# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0075fec0, 0x0075ff1e); analyst name SlotGoals_ResizeWithUnitWeight.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0075fec0 <.text+0x35eec0>:
  75fec0:	8b 11                	mov    edx,DWORD PTR [ecx]
  75fec2:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  75fec6:	83 ec 08             	sub    esp,0x8
  75fec9:	56                   	push   esi
  75feca:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  75fecd:	57                   	push   edi
  75fece:	8b fe                	mov    edi,esi
  75fed0:	2b fa                	sub    edi,edx
  75fed2:	c1 ff 03             	sar    edi,0x3
  75fed5:	3b c7                	cmp    eax,edi
  75fed7:	76 33                	jbe    0x75ff0c
  75fed9:	f3 0f 10 05 f8 98 f9 00 	movss  xmm0,DWORD PTR ds:0xf998f8
  75fee1:	8d 7c 24 08          	lea    edi,[esp+0x8]
  75fee5:	57                   	push   edi
  75fee6:	8b fe                	mov    edi,esi
  75fee8:	2b fa                	sub    edi,edx
  75feea:	c1 ff 03             	sar    edi,0x3
  75feed:	2b c7                	sub    eax,edi
  75feef:	50                   	push   eax
  75fef0:	56                   	push   esi
  75fef1:	c7 44 24 14 00 00 00 00 	mov    DWORD PTR [esp+0x14],0x0
  75fef9:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  75feff:	e8 fc 22 ec ff       	call   0x622200
  75ff04:	5f                   	pop    edi
  75ff05:	5e                   	pop    esi
  75ff06:	83 c4 08             	add    esp,0x8
  75ff09:	c2 04 00             	ret    0x4
  75ff0c:	56                   	push   esi
  75ff0d:	8d 04 c2             	lea    eax,[edx+eax*8]
  75ff10:	50                   	push   eax
  75ff11:	e8 3a 86 53 00       	call   0xc98550
  75ff16:	5f                   	pop    edi
  75ff17:	5e                   	pop    esi
  75ff18:	83 c4 08             	add    esp,0x8
  75ff1b:	c2 04 00             	ret    0x4
