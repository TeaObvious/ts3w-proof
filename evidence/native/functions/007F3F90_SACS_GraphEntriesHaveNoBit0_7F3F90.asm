# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe: 0x007f3f90 SACS_GraphEntriesHaveNoBit0_7F3F90
# Complete current Ghidra body [007f3f90, 007f404c] inclusive: 82 body instructions, 189 instruction bytes.
# Exact pristine byte-bearing objdump for each body interval follows; gaps are excluded.
# Binary identity: ../../../README.md.
# Actual annotated C and ABI limits: 007F3F90_SACS_GraphEntriesHaveNoBit0_7F3F90.c
# Relevant boolean result defines AL only; upper24 EAX bits are not a normalized boolean.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007f3f90 <.text+0x3f2f90>:
  7f3f90:	8b 91 88 00 00 00                               	mov    edx,DWORD PTR [ecx+0x88]
  7f3f96:	85 d2                                           	test   edx,edx
  7f3f98:	56                                              	push   esi
  7f3f99:	57                                              	push   edi
  7f3f9a:	74 57                                           	je     0x7f3ff3
  7f3f9c:	8b 4a 04                                        	mov    ecx,DWORD PTR [edx+0x4]
  7f3f9f:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7f3fa1:	85 c0                                           	test   eax,eax
  7f3fa3:	75 15                                           	jne    0x7f3fba
  7f3fa5:	83 c1 04                                        	add    ecx,0x4
  7f3fa8:	39 01                                           	cmp    DWORD PTR [ecx],eax
  7f3faa:	75 0c                                           	jne    0x7f3fb8
  7f3fac:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  7f3fb0:	83 c1 04                                        	add    ecx,0x4
  7f3fb3:	83 39 00                                        	cmp    DWORD PTR [ecx],0x0
  7f3fb6:	74 f8                                           	je     0x7f3fb0
  7f3fb8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7f3fba:	8b 72 08                                        	mov    esi,DWORD PTR [edx+0x8]
  7f3fbd:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
  7f3fc0:	8b 3c b2                                        	mov    edi,DWORD PTR [edx+esi*4]
  7f3fc3:	3b c7                                           	cmp    eax,edi
  7f3fc5:	74 27                                           	je     0x7f3fee
  7f3fc7:	8b 70 10                                        	mov    esi,DWORD PTR [eax+0x10]
  7f3fca:	85 f6                                           	test   esi,esi
  7f3fcc:	74 07                                           	je     0x7f3fd5
  7f3fce:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7f3fd0:	f6 c2 01                                        	test   dl,0x1
  7f3fd3:	75 73                                           	jne    0x7f4048
  7f3fd5:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  7f3fd8:	85 c0                                           	test   eax,eax
  7f3fda:	75 0e                                           	jne    0x7f3fea
  7f3fdc:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  7f3fe0:	8b 41 04                                        	mov    eax,DWORD PTR [ecx+0x4]
  7f3fe3:	83 c1 04                                        	add    ecx,0x4
  7f3fe6:	85 c0                                           	test   eax,eax
  7f3fe8:	74 f6                                           	je     0x7f3fe0
  7f3fea:	3b c7                                           	cmp    eax,edi
  7f3fec:	75 d9                                           	jne    0x7f3fc7
  7f3fee:	5f                                              	pop    edi
  7f3fef:	b0 01                                           	mov    al,0x1
  7f3ff1:	5e                                              	pop    esi
  7f3ff2:	c3                                              	ret
  7f3ff3:	8b 51 6c                                        	mov    edx,DWORD PTR [ecx+0x6c]
  7f3ff6:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7f3ff8:	85 c0                                           	test   eax,eax
  7f3ffa:	75 11                                           	jne    0x7f400d
  7f3ffc:	83 c2 04                                        	add    edx,0x4
  7f3fff:	39 02                                           	cmp    DWORD PTR [edx],eax
  7f4001:	75 08                                           	jne    0x7f400b
  7f4003:	83 c2 04                                        	add    edx,0x4
  7f4006:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
  7f4009:	74 f8                                           	je     0x7f4003
  7f400b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7f400d:	8b 71 70                                        	mov    esi,DWORD PTR [ecx+0x70]
  7f4010:	8b 49 6c                                        	mov    ecx,DWORD PTR [ecx+0x6c]
  7f4013:	8b 3c b1                                        	mov    edi,DWORD PTR [ecx+esi*4]
  7f4016:	3b c7                                           	cmp    eax,edi
  7f4018:	74 d4                                           	je     0x7f3fee
  7f401a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  7f4020:	8b 70 10                                        	mov    esi,DWORD PTR [eax+0x10]
  7f4023:	85 f6                                           	test   esi,esi
  7f4025:	74 07                                           	je     0x7f402e
  7f4027:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  7f4029:	f6 c1 01                                        	test   cl,0x1
  7f402c:	75 1a                                           	jne    0x7f4048
  7f402e:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
  7f4031:	85 c0                                           	test   eax,eax
  7f4033:	75 0a                                           	jne    0x7f403f
  7f4035:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7f4038:	83 c2 04                                        	add    edx,0x4
  7f403b:	85 c0                                           	test   eax,eax
  7f403d:	74 f6                                           	je     0x7f4035
  7f403f:	3b c7                                           	cmp    eax,edi
  7f4041:	75 dd                                           	jne    0x7f4020
  7f4043:	5f                                              	pop    edi
  7f4044:	b0 01                                           	mov    al,0x1
  7f4046:	5e                                              	pop    esi
  7f4047:	c3                                              	ret
  7f4048:	5f                                              	pop    edi
  7f4049:	32 c0                                           	xor    al,al
  7f404b:	5e                                              	pop    esi
  7f404c:	c3                                              	ret
