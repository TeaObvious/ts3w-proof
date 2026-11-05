/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtilsWrap_GetRigKey. Export ordinal(s): 1739.
   Entry VA: 0x1097f230. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001C7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtilsWrap_GetRigKey(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 local_10 [4];
  
                    /* 0x97f230  1739  CASUtilsWrap_GetRigKey */
  puVar4 = (undefined4 *)FUN_103a0c00(local_10,param_2);
  uVar1 = puVar4[2];
  uVar2 = *puVar4;
  uVar3 = puVar4[1];
  param_1[3] = puVar4[3];
  param_1[2] = uVar1;
  *param_1 = uVar2;
  param_1[1] = uVar3;
  return;
}

