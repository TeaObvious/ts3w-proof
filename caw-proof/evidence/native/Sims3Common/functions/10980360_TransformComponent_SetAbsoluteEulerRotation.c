/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_SetAbsoluteEulerRotation.
   Export ordinal(s): 2536. Entry VA: 0x10980360. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000003. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl TransformComponent_SetAbsoluteEulerRotation(void *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float10 fVar7;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x980360  2536  TransformComponent_SetAbsoluteEulerRotation */
  fStack_18 = param_2[2];
  local_20 = *param_2;
  fStack_1c = param_2[1];
  fVar7 = (float10)fsin((float10)(local_20 * _DAT_10b310ec));
  fVar1 = (float)fVar7;
  fVar7 = (float10)fcos((float10)(local_20 * _DAT_10b310ec));
  fVar2 = (float)fVar7;
  fVar7 = (float10)fsin((float10)(fStack_1c * _DAT_10b310ec));
  fVar3 = (float)fVar7;
  fVar7 = (float10)fcos((float10)(fStack_1c * _DAT_10b310ec));
  fVar4 = (float)fVar7;
  fVar7 = (float10)fsin((float10)(fStack_18 * _DAT_10b310ec));
  fVar5 = (float)fVar7;
  fVar7 = (float10)fcos((float10)(fStack_18 * _DAT_10b310ec));
  fVar6 = (float)fVar7;
  local_30 = fVar6 * fVar1 * fVar4 - fVar5 * fVar2 * fVar3;
  fStack_2c = fVar5 * fVar1 * fVar4 + fVar6 * fVar2 * fVar3;
  fStack_28 = fVar5 * fVar2 * fVar4 - fVar6 * fVar1 * fVar3;
  fStack_24 = fVar6 * fVar2 * fVar4 + fVar5 * fVar1 * fVar3;
  fStack_14 = local_20;
  FUN_1074ae90(param_1,&local_30);
  return;
}

