/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156630 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetRigKeyImpl [assembly=ScriptCore token=0x06000363;
   handle: System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_SimOutfitGetRigKeyImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int *piVar4;
  int iVar5;
  
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar4 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar5 = (**(code **)(*piVar4 + 0xcc))(param_2);
    if (iVar5 != 0) {
      uVar1 = *(undefined4 *)(iVar5 + 0xb4);
      uVar2 = *(undefined4 *)(iVar5 + 0xa8);
      uVar3 = *(undefined4 *)(iVar5 + 0xac);
      *param_1 = *(undefined4 *)(iVar5 + 0xb0);
      param_1[1] = uVar1;
      param_1[2] = uVar2;
      param_1[3] = uVar3;
      return;
    }
  }
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  return;
}

