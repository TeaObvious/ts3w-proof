/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec18 (original PC 1.67 TS3W.exe).
   ScriptCore.CacheManager::CacheManager_ReadDatabaseChecksum [assembly=ScriptCore token=0x06000DA2;
   databaseName: System.String, checksum: System.UInt64&, dataSize: System.UInt64&, recordCount:
   System.Int32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl
ScriptCore.CacheManager::CacheManager_ReadDatabaseChecksum
          (undefined4 param_1,uint *param_2,uint *param_3,uint *param_4)

{
  int *piVar1;
  int *piVar2;
  wint_t *pwVar3;
  uint uVar4;
  int *unaff_EBP;
  undefined4 uVar5;
  int *piStack_18;
  
  *param_2 = 0;
  param_2[1] = 0;
  *param_3 = 0;
  param_3[1] = 0;
  *param_4 = 0;
  piVar1 = (int *)FUN_004afe80();
  uVar4 = 0;
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    FUN_007d00c0(pwVar3);
    piVar1 = (int *)(**(code **)(*piVar1 + 0x44))(&stack0xffffffd4);
    uVar4 = 0;
    if (piVar1 != (int *)0x0) {
      uVar4 = (**(code **)(*piVar1 + 0x34))(&stack0xffffffd0,&stack0x00000000,1,6,1,0);
      if ((char)uVar4 != '\0') {
        uVar5 = 1;
        piVar1 = (int *)(**(code **)(*piStack_18 + 0x18))();
        FUN_007d93e0(&stack0xffffffc8,piVar1,uVar5);
        uVar4 = FUN_004ddab0(unaff_EBP,param_2);
        FUN_007d79f0(&stack0xffffffc8,(byte)uVar4);
        uVar4 = FUN_004ddab0(unaff_EBP,param_3);
        FUN_007d79f0(&stack0xffffffc8,(byte)uVar4);
        uVar4 = FUN_004dd980(unaff_EBP,param_4);
        FUN_007d79f0(&stack0xffffffc8,(byte)uVar4);
        (**(code **)(*piStack_18 + 0x20))();
        uVar5 = FUN_007d7990((int)&stack0xffffffc8);
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

