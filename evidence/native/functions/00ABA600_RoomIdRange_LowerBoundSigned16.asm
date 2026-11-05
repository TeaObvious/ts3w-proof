# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00aba600,0x00aba640); analyst name RoomIdRange_LowerBoundSigned16.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00aba600 <.text+0x6b9600>:
  aba600:	8b 54 24 08          	mov    edx,DWORD PTR [esp+0x8]
  aba604:	8b 44 24 04          	mov    eax,DWORD PTR [esp+0x4]
  aba608:	2b d0                	sub    edx,eax
  aba60a:	d1 fa                	sar    edx,1
  aba60c:	85 d2                	test   edx,edx
  aba60e:	7e 2f                	jle    0xaba63f
  aba610:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  aba614:	56                   	push   esi
  aba615:	0f b7 31             	movzx  esi,WORD PTR [ecx]
  aba618:	57                   	push   edi
  aba619:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  aba620:	8b ca                	mov    ecx,edx
  aba622:	d1 f9                	sar    ecx,1
  aba624:	66 39 34 48          	cmp    WORD PTR [eax+ecx*2],si
  aba628:	7d 0d                	jge    0xaba637
  aba62a:	83 cf ff             	or     edi,0xffffffff
  aba62d:	2b f9                	sub    edi,ecx
  aba62f:	8d 44 48 02          	lea    eax,[eax+ecx*2+0x2]
  aba633:	03 d7                	add    edx,edi
  aba635:	eb 02                	jmp    0xaba639
  aba637:	8b d1                	mov    edx,ecx
  aba639:	85 d2                	test   edx,edx
  aba63b:	7f e3                	jg     0xaba620
  aba63d:	5f                   	pop    edi
  aba63e:	5e                   	pop    esi
  aba63f:	c3                   	ret
