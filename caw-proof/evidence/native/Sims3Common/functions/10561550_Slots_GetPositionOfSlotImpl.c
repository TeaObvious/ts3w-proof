/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_GetPositionOfSlotImpl. Export ordinal(s):
   781. Entry VA: 0x10561550. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600108B. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float * __cdecl
Slots_GetPositionOfSlotImpl
          (float *param_1,undefined4 param_2,undefined4 param_3,int param_4,uint param_5,
          char param_6)

{
  float fVar1;
  float *pfVar2;
  float local_c [3];
  
                    /* 0x561550  781  Slots_GetPositionOfSlotImpl */
  pfVar2 = FUN_10560e70(local_c,param_2,param_3,param_4,param_5,param_6);
  *param_1 = *pfVar2;
  fVar1 = pfVar2[2];
  param_1[1] = pfVar2[1];
  param_1[2] = fVar1;
  return param_1;
}

