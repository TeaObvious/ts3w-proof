/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_DumpMemorySummary. Export ordinal(s): 1673.
   Entry VA: 0x1097e1b0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009D2. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl App3D_DumpMemorySummary(short *param_1)

{
  short sVar1;
  void *this;
  undefined1 uVar2;
  wchar_t *pwVar3;
  uint in_EAX;
  undefined4 *puVar4;
  short *psVar5;
  undefined4 uVar6;
  wchar_t *local_10;
  undefined *local_c;
  undefined2 *local_8;
  char *local_4;
  
                    /* 0x97e1b0  1673  App3D_DumpMemorySummary */
  if (param_1 == (short *)0x0) {
    return in_EAX & 0xffffff00;
  }
  puVar4 = (undefined4 *)FUN_10722890();
  this = (void *)*puVar4;
  if (this == (void *)0x0) {
    return (uint)puVar4 & 0xffffff00;
  }
  sVar1 = *param_1;
  local_10 = (wchar_t *)&_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_4 = "Scratch/CLRHosting/App3D_DumpMemorySummary/buffFilePath";
  local_8 = &DAT_10ca8246;
  psVar5 = param_1;
  while (sVar1 != 0) {
    psVar5 = psVar5 + 1;
    sVar1 = *psVar5;
  }
  FUN_1001f8c0(&local_10,param_1,(int *)(param_1 + ((int)psVar5 - (int)param_1 >> 1)));
  pwVar3 = local_10;
  uVar6 = FUN_10724510(this,local_10,(undefined4 *)0x0,0);
  uVar2 = (undefined1)uVar6;
  if ((2 < (int)((int)local_8 - (int)pwVar3 & 0xfffffffeU)) && (pwVar3 != (wchar_t *)0x0)) {
    uVar6 = FUN_10918e90((int)pwVar3);
  }
  return CONCAT31((int3)((uint)uVar6 >> 8),uVar2);
}

