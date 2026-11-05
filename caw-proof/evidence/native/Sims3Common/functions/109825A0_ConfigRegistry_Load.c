/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ConfigRegistry_Load. Export ordinal(s): 1768.
   Entry VA: 0x109825a0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060005CA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void ConfigRegistry_Load(void)

{
  short sVar1;
  short *psVar2;
  short *psVar3;
  short local_410 [256];
  undefined2 local_210;
  wchar_t local_208 [256];
  undefined2 local_8;
  
                    /* 0x9825a0  1768  ConfigRegistry_Load */
  psVar3 = local_410;
  if (DAT_10cb7f30 != (void *)0x0) {
    local_210 = 0;
    psVar2 = (short *)GetExePath();
    do {
      sVar1 = *psVar2;
      *psVar3 = sVar1;
      psVar2 = psVar2 + 1;
      psVar3 = psVar3 + 1;
    } while (sVar1 != 0);
    FUN_109211c0(local_410,-1);
    local_8 = 0;
    FUN_10926410((int)local_208,0x103,(ushort *)L"%ls%ls");
    FUN_1038ba40(DAT_10cb7f30,local_208);
  }
  return;
}

