/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x011561f8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetColorInfoBytesImpl [assembly=ScriptCore token=0x060002DE; key:
   Sims3.SimIFace.ResourceKey; return=System.Byte[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl
ScriptCore.CASUtils::CASUtils_GetColorInfoBytesImpl
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  int *piVar4;
  undefined4 unaff_EDI;
  undefined1 *puStack_50;
  undefined4 *puStack_4c;
  undefined4 uStack_48;
  int *piStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 *puStack_24;
  undefined1 auStack_14 [4];
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = param_3;
  local_c = param_4;
  local_8 = param_1;
  local_4 = param_2;
  piVar1 = (int *)FUN_004afe80();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  puStack_24 = &local_10;
  uStack_28 = 0x5a753f;
  piVar1 = (int *)(**(code **)(*piVar1 + 0x44))();
  if (piVar1 != (int *)0x0) {
    uStack_28 = 0;
    uStack_2c = 1;
    uStack_30 = 6;
    uStack_34 = 1;
    piStack_38 = (int *)&stack0xffffffe0;
    (**(code **)(*piVar1 + 0x34))();
    if (piStack_38 != (int *)0x0) {
      uStack_48 = 0x5a7578;
      piVar2 = (int *)(**(code **)(*piStack_38 + 0x18))();
      uStack_48 = 0x5a7583;
      uVar3 = (**(code **)(*piVar2 + 0x1c))();
      uStack_48 = 0x5a758c;
      piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
      puStack_4c = &uStack_34;
      puStack_50 = (undefined1 *)0x5a75a4;
      uStack_48 = uVar3;
      (**(code **)(*piVar4 + 0x80))();
      puStack_50 = &stack0xffffffe0;
      (**(code **)(*piVar4 + 0x70))(auStack_14,&piStack_38);
      (**(code **)(*piVar2 + 0x30))(unaff_EDI,uStack_2c);
      uVar3 = uStack_34;
      (**(code **)(*piVar4 + 0x98))(&puStack_50,puStack_4c);
      (**(code **)(*piVar1 + 0x3c))(uVar3);
      (**(code **)(_DAT_00000000 + 8))();
      return uVar3;
    }
  }
  return 0;
}

