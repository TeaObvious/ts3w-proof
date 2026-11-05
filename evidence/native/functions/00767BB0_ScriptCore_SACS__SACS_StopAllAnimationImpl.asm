# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; existing one-byte Ghidra metadata envelope, NOT complete function evidence.
Analyst name: ScriptCore_SACS__SACS_StopAllAnimationImpl
Paired actual annotated Ghidra pseudocode: 00767BB0_ScriptCore_SACS__SACS_StopAllAnimationImpl.c
Owned ranges: [[00767bb0, 00767bb0]]
Envelope bytes=1

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00767bb0  51  .byte (gap/alignment)
Owned instructions=0 owned bytes=0 gap/nonowned bytes=1


NECESSARY INSTRUCTION-QUALIFIED ORIGINAL WINDOW (no Ghidra function repair)
Existing DB body stays[00767BB0,00767BB0], zero owned Listing instructions.
Explicit GhidrAssist get_data_at208bytes matches pristine PE. Only the reachable
179byte region[00767BB0,00767C63) below is retained as the qualified instruction
window:73instructions,3plainRETs at7C2C/7C34/7C62, all non-call branches internal.
13followingCCpadding bytes and16bytesofnext routine are excluded. This is not a
new Ghidra-owned Listing/body claim, reanalysis, mutator, annotation or save.
Actual import consumes two caller-cleanedGUIDwords and returns signedEAX:
missingobject-9; SACSreset/drain94D490 precedes Animation lookup, so missing
Animation-8 can follow completedreset; valid interface+8virtual18 then release/0.

ORIGINAL INSTRUCTION-WINDOW BYTES
00767bb0: 51 56 e8 b9 f9 1c 00 8b 4c 24 10 8b 54 24 0c 51
00767bc0: 52 8b c8 e8 b8 03 1d 00 8b f0 85 f6 74 5f 57 8d
00767bd0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 f0
00767be0: a0 1e 01 52 8b ce e8 75 c6 1c 00 85 c0 74 07 8b
00767bf0: c8 e8 9a 58 1e 00 a1 84 d4 1d 01 50 8b ce e8 5d
00767c00: c6 1c 00 85 c0 75 2e 8b cf 83 ca ff f0 0f c1 11
00767c10: 4a 75 11 b8 01 00 00 00 87 07 8b 16 8b 02 6a 01
00767c20: 8b ce ff d0 5f b8 f8 ff ff ff 5e 59 c3 b8 f7 ff
00767c30: ff ff 5e 59 c3 8b 50 08 8d 48 08 8b 42 18 ff d0
00767c40: 8b cf 83 ca ff f0 0f c1 11 4a 75 11 b8 01 00 00
00767c50: 00 87 07 8b 16 8b 02 6a 01 8b ce ff d0 5f 33 c0
00767c60: 5e 59 c3

INDEPENDENT DECODE OF THE QUALIFIED ORIGINAL REGION

/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

00767bb0 <.text+0x366bb0>:
  767bb0:	51                                              	push   ecx
  767bb1:	56                                              	push   esi
  767bb2:	e8 b9 f9 1c 00                                  	call   0x937570
  767bb7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  767bbb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  767bbf:	51                                              	push   ecx
  767bc0:	52                                              	push   edx
  767bc1:	8b c8                                           	mov    ecx,eax
  767bc3:	e8 b8 03 1d 00                                  	call   0x937f80
  767bc8:	8b f0                                           	mov    esi,eax
  767bca:	85 f6                                           	test   esi,esi
  767bcc:	74 5f                                           	je     0x767c2d
  767bce:	57                                              	push   edi
  767bcf:	8d 7e 04                                        	lea    edi,[esi+0x4]
  767bd2:	8b c7                                           	mov    eax,edi
  767bd4:	b9 01 00 00 00                                  	mov    ecx,0x1
  767bd9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  767bdd:	8b 15 f0 a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0f0
  767be3:	52                                              	push   edx
  767be4:	8b ce                                           	mov    ecx,esi
  767be6:	e8 75 c6 1c 00                                  	call   0x934260
  767beb:	85 c0                                           	test   eax,eax
  767bed:	74 07                                           	je     0x767bf6
  767bef:	8b c8                                           	mov    ecx,eax
  767bf1:	e8 9a 58 1e 00                                  	call   0x94d490
  767bf6:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  767bfb:	50                                              	push   eax
  767bfc:	8b ce                                           	mov    ecx,esi
  767bfe:	e8 5d c6 1c 00                                  	call   0x934260
  767c03:	85 c0                                           	test   eax,eax
  767c05:	75 2e                                           	jne    0x767c35
  767c07:	8b cf                                           	mov    ecx,edi
  767c09:	83 ca ff                                        	or     edx,0xffffffff
  767c0c:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  767c10:	4a                                              	dec    edx
  767c11:	75 11                                           	jne    0x767c24
  767c13:	b8 01 00 00 00                                  	mov    eax,0x1
  767c18:	87 07                                           	xchg   DWORD PTR [edi],eax
  767c1a:	8b 16                                           	mov    edx,DWORD PTR [esi]
  767c1c:	8b 02                                           	mov    eax,DWORD PTR [edx]
  767c1e:	6a 01                                           	push   0x1
  767c20:	8b ce                                           	mov    ecx,esi
  767c22:	ff d0                                           	call   eax
  767c24:	5f                                              	pop    edi
  767c25:	b8 f8 ff ff ff                                  	mov    eax,0xfffffff8
  767c2a:	5e                                              	pop    esi
  767c2b:	59                                              	pop    ecx
  767c2c:	c3                                              	ret
  767c2d:	b8 f7 ff ff ff                                  	mov    eax,0xfffffff7
  767c32:	5e                                              	pop    esi
  767c33:	59                                              	pop    ecx
  767c34:	c3                                              	ret
  767c35:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  767c38:	8d 48 08                                        	lea    ecx,[eax+0x8]
  767c3b:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  767c3e:	ff d0                                           	call   eax
  767c40:	8b cf                                           	mov    ecx,edi
  767c42:	83 ca ff                                        	or     edx,0xffffffff
  767c45:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  767c49:	4a                                              	dec    edx
  767c4a:	75 11                                           	jne    0x767c5d
  767c4c:	b8 01 00 00 00                                  	mov    eax,0x1
  767c51:	87 07                                           	xchg   DWORD PTR [edi],eax
  767c53:	8b 16                                           	mov    edx,DWORD PTR [esi]
  767c55:	8b 02                                           	mov    eax,DWORD PTR [edx]
  767c57:	6a 01                                           	push   0x1
  767c59:	8b ce                                           	mov    ecx,esi
  767c5b:	ff d0                                           	call   eax
  767c5d:	5f                                              	pop    edi
  767c5e:	33 c0                                           	xor    eax,eax
  767c60:	5e                                              	pop    esi
  767c61:	59                                              	pop    ecx
  767c62:	c3                                              	ret
