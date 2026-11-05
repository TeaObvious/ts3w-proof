# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00819740, 0x0081977f); analyst name RoutingJob_ReleaseCandidateStorage.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00819740 <.text+0x418740>:
  819740:	56                   	push   esi
  819741:	8b f1                	mov    esi,ecx
  819743:	8d 4e 40             	lea    ecx,[esi+0x40]
  819746:	c7 06 90 22 02 01    	mov    DWORD PTR [esi],0x1022290
  81974c:	e8 df 30 00 00       	call   0x81c830
  819751:	8b 46 28             	mov    eax,DWORD PTR [esi+0x28]
  819754:	85 c0                	test   eax,eax
  819756:	74 09                	je     0x819761
  819758:	50                   	push   eax
  819759:	e8 82 ad cc ff       	call   0x4e44e0
  81975e:	83 c4 04             	add    esp,0x4
  819761:	8b 46 18             	mov    eax,DWORD PTR [esi+0x18]
  819764:	85 c0                	test   eax,eax
  819766:	74 09                	je     0x819771
  819768:	50                   	push   eax
  819769:	e8 72 ad cc ff       	call   0x4e44e0
  81976e:	83 c4 04             	add    esp,0x4
  819771:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  819774:	85 c9                	test   ecx,ecx
  819776:	5e                   	pop    esi
  819777:	74 05                	je     0x81977e
  819779:	e9 d2 1b d8 ff       	jmp    0x59b350
  81977e:	c3                   	ret
