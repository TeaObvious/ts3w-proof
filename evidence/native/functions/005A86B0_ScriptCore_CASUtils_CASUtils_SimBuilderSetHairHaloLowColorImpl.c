/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011562a0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderSetHairHaloLowColorImpl [assembly=ScriptCore
   token=0x06000383; handle: System.UInt32, color: Sims3.SimIFace.Vector3; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.CASUtils::CASUtils_SimBuilderSetHairHaloLowColorImpl
          (uint param_1,float param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 uStack_28;
  float fStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x35000000)) {
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      fStack_24 = param_2;
      uStack_20 = param_3;
      uStack_1c = param_4;
      uStack_18 = DAT_00f998f8;
      FUN_0060d360(&uStack_28,&fStack_24);
      *(uint *)(iVar2 + 0x1c) = *(uint *)(iVar2 + 0x1c) | 0x104;
      *(undefined4 *)(iVar2 + 0x48) = uStack_28;
    }
  }
  return;
}

