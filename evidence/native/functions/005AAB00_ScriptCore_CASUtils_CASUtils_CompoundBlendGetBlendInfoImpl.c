/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011565a8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_CompoundBlendGetBlendInfoImpl [assembly=ScriptCore
   token=0x0600035B; handle: System.UInt32, index: System.UInt32;
   return=Sims3.SimIFace.CAS.CompoundBlend+BlendInfo]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int * ScriptCore_CASUtils__CASUtils_CompoundBlendGetBlendInfoImpl(int *param_1,uint param_2)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  void *this;
  uint uVar4;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar3 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      piVar3 = *(int **)((int)this + 0x40);
      uVar4 = 0;
      if (piVar3 != (int *)((int)this + 0x40)) {
        do {
          piVar3 = (int *)*piVar3;
          uVar4 = uVar4 + 1;
        } while (piVar3 != (int *)((int)this + 0x40));
        if (param_2 < uVar4) {
          piVar3 = FUN_005a96f0(this,param_2);
          iVar1 = *piVar3;
          param_1[4] = piVar3[4];
          iVar2 = piVar3[1];
          param_1[2] = iVar1;
          iVar1 = piVar3[3];
          param_1[3] = iVar2;
          iVar2 = piVar3[2];
          param_1[1] = iVar1;
          *param_1 = iVar2;
        }
      }
    }
  }
  return param_1;
}

