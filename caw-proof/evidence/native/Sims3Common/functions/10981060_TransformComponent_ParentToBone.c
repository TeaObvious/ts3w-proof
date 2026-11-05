/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_ParentToBone. Export
   ordinal(s): 2535. Entry VA: 0x10981060. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000007. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl
TransformComponent_ParentToBone
          (void *param_1,undefined4 param_2,undefined4 param_3,float *param_4,undefined4 *param_5)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  undefined4 local_50 [19];
  
                    /* 0x981060  2535  TransformComponent_ParentToBone */
  iVar2 = FUN_1072a1a0();
  if (iVar2 != 0) {
    puVar3 = (undefined4 *)FUN_1072abb0(iVar2);
    if (puVar3 != (undefined4 *)0x0) {
      LOCK();
      puVar3[1] = puVar3[1] + 1;
      UNLOCK();
    }
    FUN_10980160(local_50,param_5);
    uVar4 = FUN_1074c790(param_1,puVar3,param_4,(char)local_50);
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
    return uVar4;
  }
  return 0;
}

