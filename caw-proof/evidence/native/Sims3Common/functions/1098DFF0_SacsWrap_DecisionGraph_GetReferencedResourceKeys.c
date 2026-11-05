/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraph_GetReferencedResourceKeys.
   Export ordinal(s): 2136. Entry VA: 0x1098dff0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000DAE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
SacsWrap_DecisionGraph_GetReferencedResourceKeys(char *param_1,uint param_2,int param_3)

{
  undefined4 uVar1;
  char *this;
  int iVar2;
  void *pvVar3;
  undefined4 *puVar4;
  uint uVar5;
  undefined4 *local_10;
  int local_c;
  undefined4 *local_8;
  
  iVar2 = param_3;
                    /* 0x98dff0  2136  SacsWrap_DecisionGraph_GetReferencedResourceKeys */
  this = param_1;
  if ((param_1 == (char *)0x0) || (param_3 == 0)) {
    return 0;
  }
  pvVar3 = (void *)FUN_10918eb0(0x20,"SacsWrap/DecisionGraph/ResourceKeySet",0);
  if (pvVar3 == (void *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    param_1 = "Animation/SACSWrap";
    pvVar3 = (void *)FUN_10050d40(pvVar3,&param_1);
  }
  FUN_105e4ce0(this,pvVar3);
  FUN_103255b0(pvVar3,(int *)&local_10);
  local_8 = *(undefined4 **)(*(int *)((int)pvVar3 + 4) + *(int *)((int)pvVar3 + 8) * 4);
  uVar5 = 0;
  if (param_2 != 0) {
    puVar4 = (undefined4 *)(iVar2 + 8);
    do {
      if (local_10 == local_8) break;
      puVar4[-2] = local_10[2];
      puVar4[-1] = local_10[3];
      *puVar4 = *local_10;
      puVar4[1] = local_10[1];
      for (local_10 = (undefined4 *)local_10[4]; local_10 == (undefined4 *)0x0;
          local_10 = (undefined4 *)*local_10) {
        local_10 = (undefined4 *)(local_c + 4);
        local_c = local_c + 4;
      }
      uVar5 = uVar5 + 1;
      puVar4 = puVar4 + 4;
    } while (uVar5 < param_2);
  }
  uVar1 = *(undefined4 *)((int)pvVar3 + 0xc);
  FUN_104f31c0(*(int *)((int)pvVar3 + 4),*(uint *)((int)pvVar3 + 8));
  *(undefined4 *)((int)pvVar3 + 0xc) = 0;
  if (1 < *(uint *)((int)pvVar3 + 8)) {
    FUN_10918e90(*(int *)((int)pvVar3 + 4));
  }
  FUN_10918e90((int)pvVar3);
  return uVar1;
}

