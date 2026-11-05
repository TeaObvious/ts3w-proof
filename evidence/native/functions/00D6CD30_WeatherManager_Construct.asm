# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6cd30 <.text+0x96bd30>:
  d6cd30:	53                   	push   ebx
  d6cd31:	55                   	push   ebp
  d6cd32:	56                   	push   esi
  d6cd33:	8b f1                	mov    esi,ecx
  d6cd35:	c7 46 04 cc 3c fb 00 	mov    DWORD PTR [esi+0x4],0xfb3ccc
  d6cd3c:	57                   	push   edi
  d6cd3d:	8d 4e 10             	lea    ecx,[esi+0x10]
  d6cd40:	c7 06 b8 b7 08 01    	mov    DWORD PTR [esi],0x108b7b8
  d6cd46:	c7 46 04 b0 b7 08 01 	mov    DWORD PTR [esi+0x4],0x108b7b0
  d6cd4d:	e8 be 92 ea ff       	call   0xc16010
  d6cd52:	0f 57 c0             	xorps  xmm0,xmm0
  d6cd55:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  d6cd5c:	00 
  d6cd5d:	f3 0f 10 15 18 b2 fa 	movss  xmm2,DWORD PTR ds:0xfab218
  d6cd64:	00 
  d6cd65:	8b 3d 24 61 f9 00    	mov    edi,DWORD PTR ds:0xf96124
  d6cd6b:	f3 0f 11 8e cc 08 00 	movss  DWORD PTR [esi+0x8cc],xmm1
  d6cd72:	00 
  d6cd73:	f3 0f 11 86 d0 08 00 	movss  DWORD PTR [esi+0x8d0],xmm0
  d6cd7a:	00 
  d6cd7b:	f3 0f 11 86 d8 08 00 	movss  DWORD PTR [esi+0x8d8],xmm0
  d6cd82:	00 
  d6cd83:	f3 0f 11 86 dc 08 00 	movss  DWORD PTR [esi+0x8dc],xmm0
  d6cd8a:	00 
  d6cd8b:	f3 0f 11 86 e0 08 00 	movss  DWORD PTR [esi+0x8e0],xmm0
  d6cd92:	00 
  d6cd93:	f3 0f 11 86 e4 08 00 	movss  DWORD PTR [esi+0x8e4],xmm0
  d6cd9a:	00 
  d6cd9b:	f3 0f 11 86 e8 08 00 	movss  DWORD PTR [esi+0x8e8],xmm0
  d6cda2:	00 
  d6cda3:	f3 0f 11 86 f0 08 00 	movss  DWORD PTR [esi+0x8f0],xmm0
  d6cdaa:	00 
  d6cdab:	c6 86 f4 08 00 00 01 	mov    BYTE PTR [esi+0x8f4],0x1
  d6cdb2:	f3 0f 11 86 f8 08 00 	movss  DWORD PTR [esi+0x8f8],xmm0
  d6cdb9:	00 
  d6cdba:	f3 0f 11 96 fc 08 00 	movss  DWORD PTR [esi+0x8fc],xmm2
  d6cdc1:	00 
  d6cdc2:	f3 0f 11 86 0c 09 00 	movss  DWORD PTR [esi+0x90c],xmm0
  d6cdc9:	00 
  d6cdca:	f3 0f 11 86 10 09 00 	movss  DWORD PTR [esi+0x910],xmm0
  d6cdd1:	00 
  d6cdd2:	f3 0f 11 86 14 09 00 	movss  DWORD PTR [esi+0x914],xmm0
  d6cdd9:	00 
  d6cdda:	f3 0f 11 86 18 09 00 	movss  DWORD PTR [esi+0x918],xmm0
  d6cde1:	00 
  d6cde2:	f3 0f 11 86 1c 09 00 	movss  DWORD PTR [esi+0x91c],xmm0
  d6cde9:	00 
  d6cdea:	f3 0f 11 86 20 09 00 	movss  DWORD PTR [esi+0x920],xmm0
  d6cdf1:	00 
  d6cdf2:	33 db                	xor    ebx,ebx
  d6cdf4:	89 9e c8 08 00 00    	mov    DWORD PTR [esi+0x8c8],ebx
  d6cdfa:	89 9e d4 08 00 00    	mov    DWORD PTR [esi+0x8d4],ebx
  d6ce00:	88 9e ec 08 00 00    	mov    BYTE PTR [esi+0x8ec],bl
  d6ce06:	8d 86 80 09 00 00    	lea    eax,[esi+0x980]
  d6ce0c:	50                   	push   eax
  d6ce0d:	89 9e 24 09 00 00    	mov    DWORD PTR [esi+0x924],ebx
  d6ce13:	f3 0f 11 8e 28 09 00 	movss  DWORD PTR [esi+0x928],xmm1
  d6ce1a:	00 
  d6ce1b:	f3 0f 11 86 2c 09 00 	movss  DWORD PTR [esi+0x92c],xmm0
  d6ce22:	00 
  d6ce23:	89 9e 30 09 00 00    	mov    DWORD PTR [esi+0x930],ebx
  d6ce29:	f3 0f 11 86 34 09 00 	movss  DWORD PTR [esi+0x934],xmm0
  d6ce30:	00 
  d6ce31:	f3 0f 11 86 38 09 00 	movss  DWORD PTR [esi+0x938],xmm0
  d6ce38:	00 
  d6ce39:	f3 0f 11 86 3c 09 00 	movss  DWORD PTR [esi+0x93c],xmm0
  d6ce40:	00 
  d6ce41:	f3 0f 11 86 40 09 00 	movss  DWORD PTR [esi+0x940],xmm0
  d6ce48:	00 
  d6ce49:	f3 0f 11 86 44 09 00 	movss  DWORD PTR [esi+0x944],xmm0
  d6ce50:	00 
  d6ce51:	88 9e 48 09 00 00    	mov    BYTE PTR [esi+0x948],bl
  d6ce57:	f3 0f 11 86 4c 09 00 	movss  DWORD PTR [esi+0x94c],xmm0
  d6ce5e:	00 
  d6ce5f:	c6 86 50 09 00 00 01 	mov    BYTE PTR [esi+0x950],0x1
  d6ce66:	f3 0f 11 86 54 09 00 	movss  DWORD PTR [esi+0x954],xmm0
  d6ce6d:	00 
  d6ce6e:	f3 0f 11 96 58 09 00 	movss  DWORD PTR [esi+0x958],xmm2
  d6ce75:	00 
  d6ce76:	f3 0f 11 86 68 09 00 	movss  DWORD PTR [esi+0x968],xmm0
  d6ce7d:	00 
  d6ce7e:	f3 0f 11 86 6c 09 00 	movss  DWORD PTR [esi+0x96c],xmm0
  d6ce85:	00 
  d6ce86:	f3 0f 11 86 70 09 00 	movss  DWORD PTR [esi+0x970],xmm0
  d6ce8d:	00 
  d6ce8e:	f3 0f 11 86 74 09 00 	movss  DWORD PTR [esi+0x974],xmm0
  d6ce95:	00 
  d6ce96:	f3 0f 11 86 78 09 00 	movss  DWORD PTR [esi+0x978],xmm0
  d6ce9d:	00 
  d6ce9e:	f3 0f 11 86 7c 09 00 	movss  DWORD PTR [esi+0x97c],xmm0
  d6cea5:	00 
  d6cea6:	ff d7                	call   edi
  d6cea8:	33 c9                	xor    ecx,ecx
  d6ceaa:	8d 96 a0 09 00 00    	lea    edx,[esi+0x9a0]
  d6ceb0:	87 0a                	xchg   DWORD PTR [edx],ecx
  d6ceb2:	8d 86 a8 09 00 00    	lea    eax,[esi+0x9a8]
  d6ceb8:	50                   	push   eax
  d6ceb9:	ff d7                	call   edi
  d6cebb:	8d 8e c8 09 00 00    	lea    ecx,[esi+0x9c8]
  d6cec1:	51                   	push   ecx
  d6cec2:	ff d7                	call   edi
  d6cec4:	0f 57 c0             	xorps  xmm0,xmm0
  d6cec7:	f3 0f 10 0d f8 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f8
  d6cece:	00 
  d6cecf:	88 9e e8 09 00 00    	mov    BYTE PTR [esi+0x9e8],bl
  d6ced5:	89 9e ec 09 00 00    	mov    DWORD PTR [esi+0x9ec],ebx
  d6cedb:	f3 0f 11 8e f0 09 00 	movss  DWORD PTR [esi+0x9f0],xmm1
  d6cee2:	00 
  d6cee3:	f3 0f 11 86 f4 09 00 	movss  DWORD PTR [esi+0x9f4],xmm0
  d6ceea:	00 
  d6ceeb:	89 9e f8 09 00 00    	mov    DWORD PTR [esi+0x9f8],ebx
  d6cef1:	f3 0f 11 86 fc 09 00 	movss  DWORD PTR [esi+0x9fc],xmm0
  d6cef8:	00 
  d6cef9:	f3 0f 11 86 00 0a 00 	movss  DWORD PTR [esi+0xa00],xmm0
  d6cf00:	00 
  d6cf01:	f3 0f 11 86 04 0a 00 	movss  DWORD PTR [esi+0xa04],xmm0
  d6cf08:	00 
  d6cf09:	f3 0f 11 86 08 0a 00 	movss  DWORD PTR [esi+0xa08],xmm0
  d6cf10:	00 
  d6cf11:	f3 0f 11 86 0c 0a 00 	movss  DWORD PTR [esi+0xa0c],xmm0
  d6cf18:	00 
  d6cf19:	88 9e 10 0a 00 00    	mov    BYTE PTR [esi+0xa10],bl
  d6cf1f:	f3 0f 11 86 14 0a 00 	movss  DWORD PTR [esi+0xa14],xmm0
  d6cf26:	00 
  d6cf27:	c6 86 18 0a 00 00 01 	mov    BYTE PTR [esi+0xa18],0x1
  d6cf2e:	f3 0f 11 86 1c 0a 00 	movss  DWORD PTR [esi+0xa1c],xmm0
  d6cf35:	00 
  d6cf36:	f3 0f 11 86 30 0a 00 	movss  DWORD PTR [esi+0xa30],xmm0
  d6cf3d:	00 
  d6cf3e:	f3 0f 11 86 34 0a 00 	movss  DWORD PTR [esi+0xa34],xmm0
  d6cf45:	00 
  d6cf46:	f3 0f 11 86 38 0a 00 	movss  DWORD PTR [esi+0xa38],xmm0
  d6cf4d:	00 
  d6cf4e:	f3 0f 11 86 3c 0a 00 	movss  DWORD PTR [esi+0xa3c],xmm0
  d6cf55:	00 
  d6cf56:	f3 0f 11 86 40 0a 00 	movss  DWORD PTR [esi+0xa40],xmm0
  d6cf5d:	00 
  d6cf5e:	f3 0f 11 86 44 0a 00 	movss  DWORD PTR [esi+0xa44],xmm0
  d6cf65:	00 
  d6cf66:	f3 0f 10 15 18 b2 fa 	movss  xmm2,DWORD PTR ds:0xfab218
  d6cf6d:	00 
  d6cf6e:	f3 0f 11 96 20 0a 00 	movss  DWORD PTR [esi+0xa20],xmm2
  d6cf75:	00 
  d6cf76:	89 9e 48 0a 00 00    	mov    DWORD PTR [esi+0xa48],ebx
  d6cf7c:	f3 0f 11 8e 4c 0a 00 	movss  DWORD PTR [esi+0xa4c],xmm1
  d6cf83:	00 
  d6cf84:	f3 0f 11 86 50 0a 00 	movss  DWORD PTR [esi+0xa50],xmm0
  d6cf8b:	00 
  d6cf8c:	89 9e 54 0a 00 00    	mov    DWORD PTR [esi+0xa54],ebx
  d6cf92:	f3 0f 11 86 58 0a 00 	movss  DWORD PTR [esi+0xa58],xmm0
  d6cf99:	00 
  d6cf9a:	f3 0f 11 86 5c 0a 00 	movss  DWORD PTR [esi+0xa5c],xmm0
  d6cfa1:	00 
  d6cfa2:	f3 0f 11 86 60 0a 00 	movss  DWORD PTR [esi+0xa60],xmm0
  d6cfa9:	00 
  d6cfaa:	f3 0f 11 86 64 0a 00 	movss  DWORD PTR [esi+0xa64],xmm0
  d6cfb1:	00 
  d6cfb2:	f3 0f 11 86 68 0a 00 	movss  DWORD PTR [esi+0xa68],xmm0
  d6cfb9:	00 
  d6cfba:	88 9e 6c 0a 00 00    	mov    BYTE PTR [esi+0xa6c],bl
  d6cfc0:	f3 0f 11 86 70 0a 00 	movss  DWORD PTR [esi+0xa70],xmm0
  d6cfc7:	00 
  d6cfc8:	c6 86 74 0a 00 00 01 	mov    BYTE PTR [esi+0xa74],0x1
  d6cfcf:	f3 0f 11 86 78 0a 00 	movss  DWORD PTR [esi+0xa78],xmm0
  d6cfd6:	00 
  d6cfd7:	f3 0f 11 96 7c 0a 00 	movss  DWORD PTR [esi+0xa7c],xmm2
  d6cfde:	00 
  d6cfdf:	f3 0f 11 86 8c 0a 00 	movss  DWORD PTR [esi+0xa8c],xmm0
  d6cfe6:	00 
  d6cfe7:	f3 0f 11 86 90 0a 00 	movss  DWORD PTR [esi+0xa90],xmm0
  d6cfee:	00 
  d6cfef:	f3 0f 11 86 94 0a 00 	movss  DWORD PTR [esi+0xa94],xmm0
  d6cff6:	00 
  d6cff7:	f3 0f 11 86 98 0a 00 	movss  DWORD PTR [esi+0xa98],xmm0
  d6cffe:	00 
  d6cfff:	f3 0f 11 86 9c 0a 00 	movss  DWORD PTR [esi+0xa9c],xmm0
  d6d006:	00 
  d6d007:	f3 0f 11 86 a0 0a 00 	movss  DWORD PTR [esi+0xaa0],xmm0
  d6d00e:	00 
  d6d00f:	8d be 48 0a 00 00    	lea    edi,[esi+0xa48]
  d6d015:	89 9e a4 0a 00 00    	mov    DWORD PTR [esi+0xaa4],ebx
  d6d01b:	f3 0f 11 8e a8 0a 00 	movss  DWORD PTR [esi+0xaa8],xmm1
  d6d022:	00 
  d6d023:	f3 0f 11 86 ac 0a 00 	movss  DWORD PTR [esi+0xaac],xmm0
  d6d02a:	00 
  d6d02b:	89 9e b0 0a 00 00    	mov    DWORD PTR [esi+0xab0],ebx
  d6d031:	f3 0f 11 86 b4 0a 00 	movss  DWORD PTR [esi+0xab4],xmm0
  d6d038:	00 
  d6d039:	f3 0f 11 86 b8 0a 00 	movss  DWORD PTR [esi+0xab8],xmm0
  d6d040:	00 
  d6d041:	f3 0f 11 86 bc 0a 00 	movss  DWORD PTR [esi+0xabc],xmm0
  d6d048:	00 
  d6d049:	f3 0f 11 86 c0 0a 00 	movss  DWORD PTR [esi+0xac0],xmm0
  d6d050:	00 
  d6d051:	f3 0f 11 86 c4 0a 00 	movss  DWORD PTR [esi+0xac4],xmm0
  d6d058:	00 
  d6d059:	88 9e c8 0a 00 00    	mov    BYTE PTR [esi+0xac8],bl
  d6d05f:	f3 0f 11 86 cc 0a 00 	movss  DWORD PTR [esi+0xacc],xmm0
  d6d066:	00 
  d6d067:	c6 86 d0 0a 00 00 01 	mov    BYTE PTR [esi+0xad0],0x1
  d6d06e:	f3 0f 11 86 d4 0a 00 	movss  DWORD PTR [esi+0xad4],xmm0
  d6d075:	00 
  d6d076:	f3 0f 11 96 d8 0a 00 	movss  DWORD PTR [esi+0xad8],xmm2
  d6d07d:	00 
  d6d07e:	f3 0f 11 86 e8 0a 00 	movss  DWORD PTR [esi+0xae8],xmm0
  d6d085:	00 
  d6d086:	f3 0f 11 86 ec 0a 00 	movss  DWORD PTR [esi+0xaec],xmm0
  d6d08d:	00 
  d6d08e:	f3 0f 11 86 f0 0a 00 	movss  DWORD PTR [esi+0xaf0],xmm0
  d6d095:	00 
  d6d096:	f3 0f 11 86 f4 0a 00 	movss  DWORD PTR [esi+0xaf4],xmm0
  d6d09d:	00 
  d6d09e:	f3 0f 11 86 f8 0a 00 	movss  DWORD PTR [esi+0xaf8],xmm0
  d6d0a5:	00 
  d6d0a6:	f3 0f 11 86 fc 0a 00 	movss  DWORD PTR [esi+0xafc],xmm0
  d6d0ad:	00 
  d6d0ae:	68 7c bf 08 01       	push   0x108bf7c
  d6d0b3:	8d 8e 08 0b 00 00    	lea    ecx,[esi+0xb08]
  d6d0b9:	88 9e 04 0b 00 00    	mov    BYTE PTR [esi+0xb04],bl
  d6d0bf:	88 9e 05 0b 00 00    	mov    BYTE PTR [esi+0xb05],bl
  d6d0c5:	e8 46 68 df ff       	call   0xb63910
  d6d0ca:	68 60 bf 08 01       	push   0x108bf60
  d6d0cf:	8d 8e 4c 0b 00 00    	lea    ecx,[esi+0xb4c]
  d6d0d5:	e8 36 68 df ff       	call   0xb63910
  d6d0da:	f3 0f 10 05 c8 f8 06 	movss  xmm0,DWORD PTR ds:0x106f8c8
  d6d0e1:	01 
  d6d0e2:	f3 0f 10 0d f4 98 f9 	movss  xmm1,DWORD PTR ds:0xf998f4
  d6d0e9:	00 
  d6d0ea:	f3 0f 10 15 d0 96 ff 	movss  xmm2,DWORD PTR ds:0xff96d0
  d6d0f1:	00 
  d6d0f2:	f3 0f 10 1d 38 c9 fb 	movss  xmm3,DWORD PTR ds:0xfbc938
  d6d0f9:	00 
  d6d0fa:	f3 0f 10 25 60 bf fe 	movss  xmm4,DWORD PTR ds:0xfebf60
  d6d101:	00 
  d6d102:	88 9e 90 0b 00 00    	mov    BYTE PTR [esi+0xb90],bl
  d6d108:	8d ae b8 0b 00 00    	lea    ebp,[esi+0xbb8]
  d6d10e:	83 c8 ff             	or     eax,0xffffffff
  d6d111:	89 86 98 0b 00 00    	mov    DWORD PTR [esi+0xb98],eax
  d6d117:	89 86 9c 0b 00 00    	mov    DWORD PTR [esi+0xb9c],eax
  d6d11d:	c6 86 a0 0b 00 00 01 	mov    BYTE PTR [esi+0xba0],0x1
  d6d124:	f3 0f 11 86 a4 0b 00 	movss  DWORD PTR [esi+0xba4],xmm0
  d6d12b:	00 
  d6d12c:	f3 0f 11 8e a8 0b 00 	movss  DWORD PTR [esi+0xba8],xmm1
  d6d133:	00 
  d6d134:	f3 0f 11 96 ac 0b 00 	movss  DWORD PTR [esi+0xbac],xmm2
  d6d13b:	00 
  d6d13c:	f3 0f 11 9e b0 0b 00 	movss  DWORD PTR [esi+0xbb0],xmm3
  d6d143:	00 
  d6d144:	f3 0f 11 a6 b4 0b 00 	movss  DWORD PTR [esi+0xbb4],xmm4
  d6d14b:	00 
  d6d14c:	c6 45 00 01          	mov    BYTE PTR [ebp+0x0],0x1
  d6d150:	f3 0f 11 45 04       	movss  DWORD PTR [ebp+0x4],xmm0
  d6d155:	f3 0f 11 4d 08       	movss  DWORD PTR [ebp+0x8],xmm1
  d6d15a:	f3 0f 11 55 0c       	movss  DWORD PTR [ebp+0xc],xmm2
  d6d15f:	f3 0f 11 5d 10       	movss  DWORD PTR [ebp+0x10],xmm3
  d6d164:	f3 0f 11 65 14       	movss  DWORD PTR [ebp+0x14],xmm4
  d6d169:	f3 0f 11 86 d4 0b 00 	movss  DWORD PTR [esi+0xbd4],xmm0
  d6d170:	00 
  d6d171:	0f 57 c0             	xorps  xmm0,xmm0
  d6d174:	c6 86 d0 0b 00 00 01 	mov    BYTE PTR [esi+0xbd0],0x1
  d6d17b:	f3 0f 11 8e d8 0b 00 	movss  DWORD PTR [esi+0xbd8],xmm1
  d6d182:	00 
  d6d183:	f3 0f 11 96 dc 0b 00 	movss  DWORD PTR [esi+0xbdc],xmm2
  d6d18a:	00 
  d6d18b:	f3 0f 11 9e e0 0b 00 	movss  DWORD PTR [esi+0xbe0],xmm3
  d6d192:	00 
  d6d193:	f3 0f 11 a6 e4 0b 00 	movss  DWORD PTR [esi+0xbe4],xmm4
  d6d19a:	00 
  d6d19b:	c6 86 e8 0b 00 00 01 	mov    BYTE PTR [esi+0xbe8],0x1
  d6d1a2:	c6 86 e9 0b 00 00 01 	mov    BYTE PTR [esi+0xbe9],0x1
  d6d1a9:	c6 86 ea 0b 00 00 01 	mov    BYTE PTR [esi+0xbea],0x1
  d6d1b0:	c6 86 eb 0b 00 00 01 	mov    BYTE PTR [esi+0xbeb],0x1
  d6d1b7:	f3 0f 11 86 ec 0b 00 	movss  DWORD PTR [esi+0xbec],xmm0
  d6d1be:	00 
  d6d1bf:	f3 0f 11 86 f0 0b 00 	movss  DWORD PTR [esi+0xbf0],xmm0
  d6d1c6:	00 
  d6d1c7:	89 9e f4 0b 00 00    	mov    DWORD PTR [esi+0xbf4],ebx
  d6d1cd:	88 9e f8 0b 00 00    	mov    BYTE PTR [esi+0xbf8],bl
  d6d1d3:	e8 f8 36 83 ff       	call   0x5a08d0
  d6d1d8:	3b c3                	cmp    eax,ebx
  d6d1da:	74 13                	je     0xd6d1ef
  d6d1dc:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d1de:	68 98 3a 00 00       	push   0x3a98
  d6d1e3:	8b c8                	mov    ecx,eax
  d6d1e5:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  d6d1e8:	68 04 69 07 01       	push   0x1076904
  d6d1ed:	ff d0                	call   eax
  d6d1ef:	e8 dc 36 83 ff       	call   0x5a08d0
  d6d1f4:	3b c3                	cmp    eax,ebx
  d6d1f6:	74 15                	je     0xd6d20d
  d6d1f8:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d1fa:	68 70 b7 08 01       	push   0x108b770
  d6d1ff:	8d 8e 04 0b 00 00    	lea    ecx,[esi+0xb04]
  d6d205:	51                   	push   ecx
  d6d206:	8b c8                	mov    ecx,eax
  d6d208:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  d6d20b:	ff d0                	call   eax
  d6d20d:	e8 be 36 83 ff       	call   0x5a08d0
  d6d212:	3b c3                	cmp    eax,ebx
  d6d214:	74 14                	je     0xd6d22a
  d6d216:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d218:	6a 01                	push   0x1
  d6d21a:	6a 06                	push   0x6
  d6d21c:	53                   	push   ebx
  d6d21d:	68 48 b7 08 01       	push   0x108b748
  d6d222:	8b c8                	mov    ecx,eax
  d6d224:	8b 42 34             	mov    eax,DWORD PTR [edx+0x34]
  d6d227:	57                   	push   edi
  d6d228:	ff d0                	call   eax
  d6d22a:	e8 a1 36 83 ff       	call   0x5a08d0
  d6d22f:	3b c3                	cmp    eax,ebx
  d6d231:	74 2d                	je     0xd6d260
  d6d233:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  d6d239:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d23b:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d23e:	83 ec 0c             	sub    esp,0xc
  d6d241:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d245:	8d 8e 4c 0a 00 00    	lea    ecx,[esi+0xa4c]
  d6d24b:	d9 e8                	fld1
  d6d24d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d251:	d9 ee                	fldz
  d6d253:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d256:	68 18 b7 08 01       	push   0x108b718
  d6d25b:	51                   	push   ecx
  d6d25c:	8b c8                	mov    ecx,eax
  d6d25e:	ff d2                	call   edx
  d6d260:	e8 6b 36 83 ff       	call   0x5a08d0
  d6d265:	3b c3                	cmp    eax,ebx
  d6d267:	74 2d                	je     0xd6d296
  d6d269:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d26f:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d271:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d274:	83 ec 0c             	sub    esp,0xc
  d6d277:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d27b:	8d 8e 50 0a 00 00    	lea    ecx,[esi+0xa50]
  d6d281:	d9 e8                	fld1
  d6d283:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d287:	d9 ee                	fldz
  d6d289:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d28c:	68 fc b6 08 01       	push   0x108b6fc
  d6d291:	51                   	push   ecx
  d6d292:	8b c8                	mov    ecx,eax
  d6d294:	ff d2                	call   edx
  d6d296:	e8 35 36 83 ff       	call   0x5a08d0
  d6d29b:	3b c3                	cmp    eax,ebx
  d6d29d:	74 2d                	je     0xd6d2cc
  d6d29f:	d9 05 88 d7 06 01    	fld    DWORD PTR ds:0x106d788
  d6d2a5:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d2a7:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d2aa:	83 ec 0c             	sub    esp,0xc
  d6d2ad:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d2b1:	8d 8e 60 0a 00 00    	lea    ecx,[esi+0xa60]
  d6d2b7:	d9 e8                	fld1
  d6d2b9:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d2bd:	d9 ee                	fldz
  d6d2bf:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d2c2:	68 d0 b6 08 01       	push   0x108b6d0
  d6d2c7:	51                   	push   ecx
  d6d2c8:	8b c8                	mov    ecx,eax
  d6d2ca:	ff d2                	call   edx
  d6d2cc:	e8 ff 35 83 ff       	call   0x5a08d0
  d6d2d1:	3b c3                	cmp    eax,ebx
  d6d2d3:	74 2d                	je     0xd6d302
  d6d2d5:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d2db:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d2dd:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d2e0:	83 ec 0c             	sub    esp,0xc
  d6d2e3:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d2e7:	8d 8e 68 0a 00 00    	lea    ecx,[esi+0xa68]
  d6d2ed:	d9 e8                	fld1
  d6d2ef:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d2f3:	d9 ee                	fldz
  d6d2f5:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d2f8:	68 b0 b6 08 01       	push   0x108b6b0
  d6d2fd:	51                   	push   ecx
  d6d2fe:	8b c8                	mov    ecx,eax
  d6d300:	ff d2                	call   edx
  d6d302:	e8 c9 35 83 ff       	call   0x5a08d0
  d6d307:	3b c3                	cmp    eax,ebx
  d6d309:	74 2d                	je     0xd6d338
  d6d30b:	d9 05 88 d7 06 01    	fld    DWORD PTR ds:0x106d788
  d6d311:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d313:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d316:	83 ec 0c             	sub    esp,0xc
  d6d319:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d31d:	8d 8e 64 0a 00 00    	lea    ecx,[esi+0xa64]
  d6d323:	d9 e8                	fld1
  d6d325:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d329:	d9 ee                	fldz
  d6d32b:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d32e:	68 80 b6 08 01       	push   0x108b680
  d6d333:	51                   	push   ecx
  d6d334:	8b c8                	mov    ecx,eax
  d6d336:	ff d2                	call   edx
  d6d338:	e8 93 35 83 ff       	call   0x5a08d0
  d6d33d:	3b c3                	cmp    eax,ebx
  d6d33f:	74 15                	je     0xd6d356
  d6d341:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d343:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  d6d346:	68 60 b6 08 01       	push   0x108b660
  d6d34b:	8d 8e 6c 0a 00 00    	lea    ecx,[esi+0xa6c]
  d6d351:	51                   	push   ecx
  d6d352:	8b c8                	mov    ecx,eax
  d6d354:	ff d2                	call   edx
  d6d356:	e8 75 35 83 ff       	call   0x5a08d0
  d6d35b:	3b c3                	cmp    eax,ebx
  d6d35d:	74 15                	je     0xd6d374
  d6d35f:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d361:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  d6d364:	68 18 b6 08 01       	push   0x108b618
  d6d369:	8d 8e 74 0a 00 00    	lea    ecx,[esi+0xa74]
  d6d36f:	51                   	push   ecx
  d6d370:	8b c8                	mov    ecx,eax
  d6d372:	ff d2                	call   edx
  d6d374:	e8 57 35 83 ff       	call   0x5a08d0
  d6d379:	3b c3                	cmp    eax,ebx
  d6d37b:	74 2d                	je     0xd6d3aa
  d6d37d:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d383:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d385:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d388:	83 ec 0c             	sub    esp,0xc
  d6d38b:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d38f:	8d 8e 70 0a 00 00    	lea    ecx,[esi+0xa70]
  d6d395:	d9 e8                	fld1
  d6d397:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d39b:	d9 ee                	fldz
  d6d39d:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d3a0:	68 f0 b5 08 01       	push   0x108b5f0
  d6d3a5:	51                   	push   ecx
  d6d3a6:	8b c8                	mov    ecx,eax
  d6d3a8:	ff d2                	call   edx
  d6d3aa:	e8 21 35 83 ff       	call   0x5a08d0
  d6d3af:	3b c3                	cmp    eax,ebx
  d6d3b1:	74 2d                	je     0xd6d3e0
  d6d3b3:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d3b9:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d3bb:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d3be:	83 ec 0c             	sub    esp,0xc
  d6d3c1:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d3c5:	8d 8e 78 0a 00 00    	lea    ecx,[esi+0xa78]
  d6d3cb:	d9 e8                	fld1
  d6d3cd:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d3d1:	d9 ee                	fldz
  d6d3d3:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d3d6:	68 cc b5 08 01       	push   0x108b5cc
  d6d3db:	51                   	push   ecx
  d6d3dc:	8b c8                	mov    ecx,eax
  d6d3de:	ff d2                	call   edx
  d6d3e0:	e8 eb 34 83 ff       	call   0x5a08d0
  d6d3e5:	3b c3                	cmp    eax,ebx
  d6d3e7:	74 2d                	je     0xd6d416
  d6d3e9:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d3ef:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d3f1:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d3f4:	83 ec 0c             	sub    esp,0xc
  d6d3f7:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d3fb:	8d 8e 90 0a 00 00    	lea    ecx,[esi+0xa90]
  d6d401:	d9 e8                	fld1
  d6d403:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d407:	d9 ee                	fldz
  d6d409:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d40c:	68 a8 b5 08 01       	push   0x108b5a8
  d6d411:	51                   	push   ecx
  d6d412:	8b c8                	mov    ecx,eax
  d6d414:	ff d2                	call   edx
  d6d416:	e8 b5 34 83 ff       	call   0x5a08d0
  d6d41b:	3b c3                	cmp    eax,ebx
  d6d41d:	74 35                	je     0xd6d454
  d6d41f:	d9 05 f4 98 f9 00    	fld    DWORD PTR ds:0xf998f4
  d6d425:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d427:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d42a:	83 ec 0c             	sub    esp,0xc
  d6d42d:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d431:	8d 8e 7c 0a 00 00    	lea    ecx,[esi+0xa7c]
  d6d437:	d9 05 88 f4 fd 00    	fld    DWORD PTR ds:0xfdf488
  d6d43d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d441:	d9 05 18 b2 fa 00    	fld    DWORD PTR ds:0xfab218
  d6d447:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d44a:	68 3c bf 08 01       	push   0x108bf3c
  d6d44f:	51                   	push   ecx
  d6d450:	8b c8                	mov    ecx,eax
  d6d452:	ff d2                	call   edx
  d6d454:	e8 77 34 83 ff       	call   0x5a08d0
  d6d459:	3b c3                	cmp    eax,ebx
  d6d45b:	74 31                	je     0xd6d48e
  d6d45d:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  d6d463:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d465:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d468:	83 ec 0c             	sub    esp,0xc
  d6d46b:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d46f:	8d 8e 98 0a 00 00    	lea    ecx,[esi+0xa98]
  d6d475:	d9 05 7c 3f fb 00    	fld    DWORD PTR ds:0xfb3f7c
  d6d47b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d47f:	d9 ee                	fldz
  d6d481:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d484:	68 18 bf 08 01       	push   0x108bf18
  d6d489:	51                   	push   ecx
  d6d48a:	8b c8                	mov    ecx,eax
  d6d48c:	ff d2                	call   edx
  d6d48e:	e8 3d 34 83 ff       	call   0x5a08d0
  d6d493:	3b c3                	cmp    eax,ebx
  d6d495:	74 31                	je     0xd6d4c8
  d6d497:	d9 ee                	fldz
  d6d499:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d49b:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d49e:	83 ec 0c             	sub    esp,0xc
  d6d4a1:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d4a5:	8d 8e 58 0a 00 00    	lea    ecx,[esi+0xa58]
  d6d4ab:	d9 05 7c 3f fb 00    	fld    DWORD PTR ds:0xfb3f7c
  d6d4b1:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d4b5:	d9 05 58 e5 fe 00    	fld    DWORD PTR ds:0xfee558
  d6d4bb:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d4be:	68 60 b5 08 01       	push   0x108b560
  d6d4c3:	51                   	push   ecx
  d6d4c4:	8b c8                	mov    ecx,eax
  d6d4c6:	ff d2                	call   edx
  d6d4c8:	e8 03 34 83 ff       	call   0x5a08d0
  d6d4cd:	3b c3                	cmp    eax,ebx
  d6d4cf:	74 31                	je     0xd6d502
  d6d4d1:	d9 ee                	fldz
  d6d4d3:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d4d5:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d4d8:	83 ec 0c             	sub    esp,0xc
  d6d4db:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d4df:	8d 8e 5c 0a 00 00    	lea    ecx,[esi+0xa5c]
  d6d4e5:	d9 05 7c 3f fb 00    	fld    DWORD PTR ds:0xfb3f7c
  d6d4eb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d4ef:	d9 05 58 e5 fe 00    	fld    DWORD PTR ds:0xfee558
  d6d4f5:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d4f8:	68 38 b5 08 01       	push   0x108b538
  d6d4fd:	51                   	push   ecx
  d6d4fe:	8b c8                	mov    ecx,eax
  d6d500:	ff d2                	call   edx
  d6d502:	e8 c9 33 83 ff       	call   0x5a08d0
  d6d507:	3b c3                	cmp    eax,ebx
  d6d509:	74 27                	je     0xd6d532
  d6d50b:	d9 ee                	fldz
  d6d50d:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d50f:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d512:	83 ec 0c             	sub    esp,0xc
  d6d515:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  d6d519:	8d 8e 94 0a 00 00    	lea    ecx,[esi+0xa94]
  d6d51f:	d9 e8                	fld1
  d6d521:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d525:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d528:	68 10 b5 08 01       	push   0x108b510
  d6d52d:	51                   	push   ecx
  d6d52e:	8b c8                	mov    ecx,eax
  d6d530:	ff d2                	call   edx
  d6d532:	e8 99 33 83 ff       	call   0x5a08d0
  d6d537:	3b c3                	cmp    eax,ebx
  d6d539:	74 2f                	je     0xd6d56a
  d6d53b:	d9 05 e8 98 f9 00    	fld    DWORD PTR ds:0xf998e8
  d6d541:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d543:	83 ec 0c             	sub    esp,0xc
  d6d546:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d54a:	8b c8                	mov    ecx,eax
  d6d54c:	d9 05 f4 98 f9 00    	fld    DWORD PTR ds:0xf998f4
  d6d552:	8b 42 30             	mov    eax,DWORD PTR [edx+0x30]
  d6d555:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d559:	d9 ee                	fldz
  d6d55b:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d55e:	68 f0 b4 08 01       	push   0x108b4f0
  d6d563:	68 84 2d 19 01       	push   0x1192d84
  d6d568:	ff d0                	call   eax
  d6d56a:	e8 61 33 83 ff       	call   0x5a08d0
  d6d56f:	3b c3                	cmp    eax,ebx
  d6d571:	74 0f                	je     0xd6d582
  d6d573:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d575:	68 bc b4 08 01       	push   0x108b4bc
  d6d57a:	8b c8                	mov    ecx,eax
  d6d57c:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  d6d57f:	55                   	push   ebp
  d6d580:	ff d0                	call   eax
  d6d582:	e8 49 33 83 ff       	call   0x5a08d0
  d6d587:	3b c3                	cmp    eax,ebx
  d6d589:	74 2d                	je     0xd6d5b8
  d6d58b:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d591:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d593:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d596:	83 ec 0c             	sub    esp,0xc
  d6d599:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d59d:	8d 8e bc 0b 00 00    	lea    ecx,[esi+0xbbc]
  d6d5a3:	d9 e8                	fld1
  d6d5a5:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d5a9:	d9 ee                	fldz
  d6d5ab:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d5ae:	68 84 b4 08 01       	push   0x108b484
  d6d5b3:	51                   	push   ecx
  d6d5b4:	8b c8                	mov    ecx,eax
  d6d5b6:	ff d2                	call   edx
  d6d5b8:	e8 13 33 83 ff       	call   0x5a08d0
  d6d5bd:	3b c3                	cmp    eax,ebx
  d6d5bf:	74 35                	je     0xd6d5f6
  d6d5c1:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d5c7:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d5c9:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d5cc:	83 ec 0c             	sub    esp,0xc
  d6d5cf:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d5d3:	8d 8e c0 0b 00 00    	lea    ecx,[esi+0xbc0]
  d6d5d9:	d9 05 f4 6b 0f 01    	fld    DWORD PTR ds:0x10f6bf4
  d6d5df:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d5e3:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  d6d5e9:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d5ec:	68 40 b4 08 01       	push   0x108b440
  d6d5f1:	51                   	push   ecx
  d6d5f2:	8b c8                	mov    ecx,eax
  d6d5f4:	ff d2                	call   edx
  d6d5f6:	e8 d5 32 83 ff       	call   0x5a08d0
  d6d5fb:	3b c3                	cmp    eax,ebx
  d6d5fd:	74 35                	je     0xd6d634
  d6d5ff:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d605:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d607:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d60a:	83 ec 0c             	sub    esp,0xc
  d6d60d:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d611:	8d 8e c4 0b 00 00    	lea    ecx,[esi+0xbc4]
  d6d617:	d9 05 74 99 f9 00    	fld    DWORD PTR ds:0xf99974
  d6d61d:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d621:	d9 05 ec e6 06 01    	fld    DWORD PTR ds:0x106e6ec
  d6d627:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d62a:	68 d0 be 08 01       	push   0x108bed0
  d6d62f:	51                   	push   ecx
  d6d630:	8b c8                	mov    ecx,eax
  d6d632:	ff d2                	call   edx
  d6d634:	e8 97 32 83 ff       	call   0x5a08d0
  d6d639:	3b c3                	cmp    eax,ebx
  d6d63b:	74 31                	je     0xd6d66e
  d6d63d:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d643:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d645:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d648:	83 ec 0c             	sub    esp,0xc
  d6d64b:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d64f:	8d 8e c8 0b 00 00    	lea    ecx,[esi+0xbc8]
  d6d655:	d9 05 74 99 f9 00    	fld    DWORD PTR ds:0xf99974
  d6d65b:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d65f:	d9 ee                	fldz
  d6d661:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d664:	68 f8 b3 08 01       	push   0x108b3f8
  d6d669:	51                   	push   ecx
  d6d66a:	8b c8                	mov    ecx,eax
  d6d66c:	ff d2                	call   edx
  d6d66e:	e8 5d 32 83 ff       	call   0x5a08d0
  d6d673:	3b c3                	cmp    eax,ebx
  d6d675:	74 31                	je     0xd6d6a8
  d6d677:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d67d:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d67f:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d682:	83 ec 0c             	sub    esp,0xc
  d6d685:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d689:	8d 8e cc 0b 00 00    	lea    ecx,[esi+0xbcc]
  d6d68f:	d9 05 74 99 f9 00    	fld    DWORD PTR ds:0xf99974
  d6d695:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d699:	d9 ee                	fldz
  d6d69b:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d69e:	68 b0 b3 08 01       	push   0x108b3b0
  d6d6a3:	51                   	push   ecx
  d6d6a4:	8b c8                	mov    ecx,eax
  d6d6a6:	ff d2                	call   edx
  d6d6a8:	e8 23 32 83 ff       	call   0x5a08d0
  d6d6ad:	3b c3                	cmp    eax,ebx
  d6d6af:	74 2d                	je     0xd6d6de
  d6d6b1:	d9 05 b4 35 fb 00    	fld    DWORD PTR ds:0xfb35b4
  d6d6b7:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d6b9:	8b 52 30             	mov    edx,DWORD PTR [edx+0x30]
  d6d6bc:	83 ec 0c             	sub    esp,0xc
  d6d6bf:	d9 5c 24 08          	fstp   DWORD PTR [esp+0x8]
  d6d6c3:	8d 8e 8c 0a 00 00    	lea    ecx,[esi+0xa8c]
  d6d6c9:	d9 e8                	fld1
  d6d6cb:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  d6d6cf:	d9 ee                	fldz
  d6d6d1:	d9 1c 24             	fstp   DWORD PTR [esp]
  d6d6d4:	68 74 b3 08 01       	push   0x108b374
  d6d6d9:	51                   	push   ecx
  d6d6da:	8b c8                	mov    ecx,eax
  d6d6dc:	ff d2                	call   edx
  d6d6de:	e8 ed 31 83 ff       	call   0x5a08d0
  d6d6e3:	3b c3                	cmp    eax,ebx
  d6d6e5:	74 0f                	je     0xd6d6f6
  d6d6e7:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d6e9:	68 ff ff ff 7f       	push   0x7fffffff
  d6d6ee:	8b c8                	mov    ecx,eax
  d6d6f0:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  d6d6f3:	53                   	push   ebx
  d6d6f4:	ff d0                	call   eax
  d6d6f6:	e8 d5 31 83 ff       	call   0x5a08d0
  d6d6fb:	3b c3                	cmp    eax,ebx
  d6d6fd:	74 13                	je     0xd6d712
  d6d6ff:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d701:	68 99 3a 00 00       	push   0x3a99
  d6d706:	8b c8                	mov    ecx,eax
  d6d708:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  d6d70b:	68 b0 be 08 01       	push   0x108beb0
  d6d710:	ff d0                	call   eax
  d6d712:	e8 b9 31 83 ff       	call   0x5a08d0
  d6d717:	3b c3                	cmp    eax,ebx
  d6d719:	74 15                	je     0xd6d730
  d6d71b:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d71d:	68 3c b3 08 01       	push   0x108b33c
  d6d722:	8d 8e e8 0b 00 00    	lea    ecx,[esi+0xbe8]
  d6d728:	51                   	push   ecx
  d6d729:	8b c8                	mov    ecx,eax
  d6d72b:	8b 42 28             	mov    eax,DWORD PTR [edx+0x28]
  d6d72e:	ff d0                	call   eax
  d6d730:	e8 9b 31 83 ff       	call   0x5a08d0
  d6d735:	3b c3                	cmp    eax,ebx
  d6d737:	74 15                	je     0xd6d74e
  d6d739:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d73b:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  d6d73e:	68 0c b3 08 01       	push   0x108b30c
  d6d743:	8d 8e e9 0b 00 00    	lea    ecx,[esi+0xbe9]
  d6d749:	51                   	push   ecx
  d6d74a:	8b c8                	mov    ecx,eax
  d6d74c:	ff d2                	call   edx
  d6d74e:	e8 7d 31 83 ff       	call   0x5a08d0
  d6d753:	3b c3                	cmp    eax,ebx
  d6d755:	74 15                	je     0xd6d76c
  d6d757:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d759:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  d6d75c:	68 d8 b2 08 01       	push   0x108b2d8
  d6d761:	8d 8e ea 0b 00 00    	lea    ecx,[esi+0xbea]
  d6d767:	51                   	push   ecx
  d6d768:	8b c8                	mov    ecx,eax
  d6d76a:	ff d2                	call   edx
  d6d76c:	e8 5f 31 83 ff       	call   0x5a08d0
  d6d771:	3b c3                	cmp    eax,ebx
  d6d773:	74 15                	je     0xd6d78a
  d6d775:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d777:	8b 52 28             	mov    edx,DWORD PTR [edx+0x28]
  d6d77a:	68 b4 b2 08 01       	push   0x108b2b4
  d6d77f:	8d 8e eb 0b 00 00    	lea    ecx,[esi+0xbeb]
  d6d785:	51                   	push   ecx
  d6d786:	8b c8                	mov    ecx,eax
  d6d788:	ff d2                	call   edx
  d6d78a:	e8 41 31 83 ff       	call   0x5a08d0
  d6d78f:	3b c3                	cmp    eax,ebx
  d6d791:	74 0f                	je     0xd6d7a2
  d6d793:	8b 10                	mov    edx,DWORD PTR [eax]
  d6d795:	68 ff ff ff 7f       	push   0x7fffffff
  d6d79a:	8b c8                	mov    ecx,eax
  d6d79c:	8b 42 18             	mov    eax,DWORD PTR [edx+0x18]
  d6d79f:	53                   	push   ebx
  d6d7a0:	ff d0                	call   eax
  d6d7a2:	e8 49 ed 6d ff       	call   0x44c4f0
  d6d7a7:	8b f8                	mov    edi,eax
  d6d7a9:	3b fb                	cmp    edi,ebx
  d6d7ab:	74 36                	je     0xd6d7e3
  d6d7ad:	8b 17                	mov    edx,DWORD PTR [edi]
  d6d7af:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  d6d7b2:	53                   	push   ebx
  d6d7b3:	53                   	push   ebx
  d6d7b4:	68 ff 43 a6 08       	push   0x8a643ff
  d6d7b9:	8d 6e 04             	lea    ebp,[esi+0x4]
  d6d7bc:	55                   	push   ebp
  d6d7bd:	8b cf                	mov    ecx,edi
  d6d7bf:	ff d0                	call   eax
  d6d7c1:	8b 17                	mov    edx,DWORD PTR [edi]
  d6d7c3:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  d6d7c6:	53                   	push   ebx
  d6d7c7:	53                   	push   ebx
  d6d7c8:	68 be 44 e8 0d       	push   0xde844be
  d6d7cd:	55                   	push   ebp
  d6d7ce:	8b cf                	mov    ecx,edi
  d6d7d0:	ff d0                	call   eax
  d6d7d2:	8b 17                	mov    edx,DWORD PTR [edi]
  d6d7d4:	8b 42 24             	mov    eax,DWORD PTR [edx+0x24]
  d6d7d7:	53                   	push   ebx
  d6d7d8:	53                   	push   ebx
  d6d7d9:	68 28 62 61 0e       	push   0xe616228
  d6d7de:	55                   	push   ebp
  d6d7df:	8b cf                	mov    ecx,edi
  d6d7e1:	ff d0                	call   eax
  d6d7e3:	53                   	push   ebx
  d6d7e4:	53                   	push   ebx
  d6d7e5:	53                   	push   ebx
  d6d7e6:	53                   	push   ebx
  d6d7e7:	68 9c b2 08 01       	push   0x108b29c
  d6d7ec:	6a 38                	push   0x38
  d6d7ee:	e8 0d 6d 77 ff       	call   0x4e4500
  d6d7f3:	83 c4 18             	add    esp,0x18
  d6d7f6:	3b c3                	cmp    eax,ebx
  d6d7f8:	74 09                	je     0xd6d803
  d6d7fa:	8b c8                	mov    ecx,eax
  d6d7fc:	e8 3f 91 ff ff       	call   0xd66940
  d6d801:	eb 02                	jmp    0xd6d805
  d6d803:	33 c0                	xor    eax,eax
  d6d805:	8b 8e f4 0b 00 00    	mov    ecx,DWORD PTR [esi+0xbf4]
  d6d80b:	3b c1                	cmp    eax,ecx
  d6d80d:	74 2e                	je     0xd6d83d
  d6d80f:	3b c3                	cmp    eax,ebx
  d6d811:	74 04                	je     0xd6d817
  d6d813:	83 40 04 01          	add    DWORD PTR [eax+0x4],0x1
  d6d817:	3b cb                	cmp    ecx,ebx
  d6d819:	89 86 f4 0b 00 00    	mov    DWORD PTR [esi+0xbf4],eax
  d6d81f:	74 1c                	je     0xd6d83d
  d6d821:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  d6d824:	83 c0 ff             	add    eax,0xffffffff
  d6d827:	3b c3                	cmp    eax,ebx
  d6d829:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  d6d82c:	75 0f                	jne    0xd6d83d
  d6d82e:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  d6d835:	8b 11                	mov    edx,DWORD PTR [ecx]
  d6d837:	8b 02                	mov    eax,DWORD PTR [edx]
  d6d839:	6a 01                	push   0x1
  d6d83b:	ff d0                	call   eax
  d6d83d:	5f                   	pop    edi
  d6d83e:	8b c6                	mov    eax,esi
  d6d840:	5e                   	pop    esi
  d6d841:	5d                   	pop    ebp
  d6d842:	5b                   	pop    ebx
  d6d843:	c3                   	ret
