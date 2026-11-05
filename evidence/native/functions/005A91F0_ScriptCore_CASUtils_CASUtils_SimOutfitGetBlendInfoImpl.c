/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011566b0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetBlendInfoImpl [assembly=ScriptCore token=0x06000373;
   handle: System.UInt32, index: System.UInt32; return=Sims3.SimIFace.CAS.SimOutfit+BlendInfo]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_CASUtils__CASUtils_SimOutfitGetBlendInfoImpl(undefined4 *param_1,uint param_2)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar5 = (**(code **)(*piVar4 + 0xcc))(param_2);
    if (iVar5 != 0) {
      if (param_2 < (uint)((*(int *)(iVar5 + 700) - *(int *)(iVar5 + 0x2b8)) / 0x18)) {
        iVar1 = *(int *)(iVar5 + 0x2b8);
        uVar2 = *(undefined4 *)(iVar1 + param_2 * 0x18);
        iVar5 = iVar1 + param_2 * 0x18;
        param_1[4] = *(undefined4 *)(iVar1 + 0x10 + param_2 * 0x18);
        uVar3 = *(undefined4 *)(iVar5 + 4);
        param_1[2] = uVar2;
        uVar2 = *(undefined4 *)(iVar5 + 0xc);
        param_1[3] = uVar3;
        uVar3 = *(undefined4 *)(iVar5 + 8);
        param_1[1] = uVar2;
        *param_1 = uVar3;
      }
    }
  }
  return param_1;
}

