/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156680 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetFurMapImpl [assembly=ScriptCore token=0x0600036D;
   handle: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_CASUtils__CASUtils_SimOutfitGetFurMapImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar4 = (**(code **)(*piVar3 + 0xcc))(param_2);
    if (iVar4 != 0) {
      uVar1 = *(undefined4 *)(iVar4 + 0x88);
      param_1[1] = *(undefined4 *)(iVar4 + 0x94);
      uVar2 = *(undefined4 *)(iVar4 + 0x8c);
      param_1[2] = uVar1;
      uVar1 = *(undefined4 *)(iVar4 + 0x90);
      param_1[3] = uVar2;
      *param_1 = uVar1;
    }
  }
  return param_1;
}

