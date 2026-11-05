/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156840 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_GetDefaultThumbnailCASPartKeyImpl [assembly=ScriptCore
   token=0x060003A7; ageGenderFlags: System.UInt32, category: System.UInt32, bodyType:
   System.UInt32; return=Sims3.SimIFace.ResourceKey]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * __cdecl
ScriptCore.CASUtils::CASUtils_GetDefaultThumbnailCASPartKeyImpl
          (undefined4 *param_1,uint param_2,uint param_3,uint param_4)

{
  void *this;
  uint uVar1;
  uint *puVar2;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  puVar2 = &local_10;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  this = (void *)FUN_005df4d0();
  uVar1 = FUN_005dfcc0(this,param_2,param_3,param_4,puVar2);
  if ((char)uVar1 != '\0') {
    *param_1 = local_8;
    param_1[2] = local_10;
    param_1[3] = local_c;
    param_1[1] = local_4;
  }
  return param_1;
}

