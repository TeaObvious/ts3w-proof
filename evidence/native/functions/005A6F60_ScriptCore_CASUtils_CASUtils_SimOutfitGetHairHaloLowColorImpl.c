/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011566e0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimOutfitGetHairHaloLowColorImpl [assembly=ScriptCore
   token=0x06000379; handle: System.UInt32; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float * ScriptCore_CASUtils__CASUtils_SimOutfitGetHairHaloLowColorImpl(float *param_1,uint param_2)

{
  uint uVar1;
  float fVar2;
  int *piVar3;
  int iVar4;
  
  *param_1 = 0.0;
  param_1[1] = 0.0;
  param_1[2] = 0.0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar4 = (**(code **)(*piVar3 + 0xcc))(param_2);
    fVar2 = DAT_00fae564;
    if (iVar4 != 0) {
      uVar1 = *(uint *)(iVar4 + 0x60);
      *param_1 = (float)(uVar1 >> 0x10 & 0xff) * DAT_00fae564;
      param_1[1] = (float)(uVar1 >> 8 & 0xff) * fVar2;
      param_1[2] = (float)(uVar1 & 0xff) * fVar2;
    }
  }
  return param_1;
}

