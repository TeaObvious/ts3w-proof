/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SimBuilderWrap_SaveOutfit. Export ordinal(s):
   2347. Entry VA: 0x1098ffc0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000C77. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
SimBuilderWrap_SaveOutfit
          (undefined4 *param_1,void *param_2,undefined4 param_3,undefined4 param_4,char param_5)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 local_20 [4];
  undefined4 local_10 [4];
  
                    /* 0x98ffc0  2347  SimBuilderWrap_SaveOutfit */
  if (param_5 == '\0') {
    puVar4 = (undefined4 *)FUN_103daf90(local_10);
  }
  else {
    puVar4 = FUN_103dc890(param_2,local_20,(int *)0xffffffff,0xffffffff);
  }
  uVar1 = *puVar4;
  uVar2 = puVar4[1];
  uVar3 = puVar4[2];
  param_1[1] = puVar4[3];
  *param_1 = uVar3;
  param_1[2] = uVar1;
  param_1[3] = uVar2;
  return;
}

