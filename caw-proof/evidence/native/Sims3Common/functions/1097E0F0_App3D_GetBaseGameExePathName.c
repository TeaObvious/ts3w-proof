/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_GetBaseGameExePathName. Export ordinal(s):
   1677. Entry VA: 0x1097e0f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009D1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 App3D_GetBaseGameExePathName(void)

{
  int iVar1;
  short *psVar2;
  undefined4 uVar4;
  int unaff_ESI;
  undefined *local_10;
  undefined *local_c;
  undefined2 *local_8;
  char *local_4;
  short *psVar3;
  
                    /* 0x97e0f0  1677  App3D_GetBaseGameExePathName */
  local_10 = &_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "Scratch/Path";
  local_8 = &DAT_10ca8246;
  iVar1 = FUN_105c4440(&local_10);
  if (-1 < iVar1) {
    psVar2 = (short *)&DAT_10b960a0;
    do {
      psVar3 = psVar2;
      psVar2 = psVar3 + 1;
    } while (*psVar2 != 0);
    FUN_1001f3b0(&local_10,(int *)&DAT_10b960a0,
                 (int *)(&DAT_10b960a0 + ((int)(psVar3 + -0x85cb04f) >> 1) * 2));
    uVar4 = Ordinal_2(local_10);
    if ((2 < (int)((int)local_c - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_10918e90(unaff_ESI);
    }
    return uVar4;
  }
  if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (undefined *)0x0)) {
    FUN_10918e90((int)local_10);
  }
  return 0;
}

