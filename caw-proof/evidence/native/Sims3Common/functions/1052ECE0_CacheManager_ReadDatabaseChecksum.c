/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CacheManager_ReadDatabaseChecksum. Export
   ordinal(s): 265. Entry VA: 0x1052ece0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000B87. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl
CacheManager_ReadDatabaseChecksum(undefined4 param_1,uint *param_2,uint *param_3,uint *param_4)

{
  int *piVar1;
  int *piVar2;
  wint_t *pwVar3;
  uint uVar4;
  int *unaff_EBP;
  undefined4 uVar5;
  int *piStack_18;
  
                    /* 0x52ece0  265  CacheManager_ReadDatabaseChecksum */
  *param_2 = 0;
  param_2[1] = 0;
  *param_3 = 0;
  param_3[1] = 0;
  *param_4 = 0;
  piVar1 = (int *)FUN_108e50d0();
  uVar4 = 0;
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)FUN_1055b120();
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    FUN_105c3980(pwVar3);
    piVar1 = (int *)(**(code **)(*piVar1 + 0x44))(&stack0xffffffd4);
    uVar4 = 0;
    if (piVar1 != (int *)0x0) {
      uVar4 = (**(code **)(*piVar1 + 0x34))(&stack0xffffffd0,&stack0x00000000,1,6,1,0);
      if ((char)uVar4 != '\0') {
        uVar5 = 1;
        piVar1 = (int *)(**(code **)(*piStack_18 + 0x18))();
        FUN_105cc2a0(&stack0xffffffc8,piVar1,uVar5);
        uVar4 = FUN_109126d0(unaff_EBP,param_2);
        FUN_105ca960(&stack0xffffffc8,(byte)uVar4);
        uVar4 = FUN_109126d0(unaff_EBP,param_3);
        FUN_105ca960(&stack0xffffffc8,(byte)uVar4);
        uVar4 = FUN_10912610(unaff_EBP,param_4);
        FUN_105ca960(&stack0xffffffc8,(byte)uVar4);
        (**(code **)(*piStack_18 + 0x20))();
        uVar5 = FUN_105ca900((int)&stack0xffffffc8);
        if (piStack_18 != (int *)0x0) {
          uVar5 = (**(code **)(*piStack_18 + 8))();
        }
        return CONCAT31((int3)((uint)uVar5 >> 8),0x84);
      }
      if (piStack_18 != (int *)0x0) {
        uVar4 = (**(code **)(*piStack_18 + 8))();
      }
    }
  }
  return uVar4 & 0xffffff00;
}

