/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetWorldPositionImpl. Export ordinal(s):
   1391. Entry VA: 0x10581310. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C11. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
World_GetWorldPositionImpl
          (int param_1,int param_2,int param_3,int param_4,char param_5,float *param_6)

{
  int *this;
  float fVar1;
  float fVar2;
  float fVar3;
  float local_3c;
  float local_38;
  int local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20 [7];
  
                    /* 0x581310  1391  World_GetWorldPositionImpl */
  local_30 = 0.0;
  fStack_2c = 0.0;
  fStack_28 = 0.0;
  uStack_24 = 0;
  fVar1 = 0.0;
  fVar2 = 0.0;
  fVar3 = 0.0;
  if ((DAT_10c700c4 != (void *)0x0) &&
     (this = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0), fVar1 = local_30,
     fVar2 = fStack_2c, fVar3 = fStack_28, this != (int *)0x0)) {
    local_34 = (int)param_5;
    local_3c = (float)param_3 + _DAT_10b310ec;
    local_38 = (float)param_4 + _DAT_10b310ec;
    FUN_100a2fd0((int)this,&local_3c,local_20);
    FUN_1007c560(this,local_20,&local_30);
    fVar1 = local_30;
    fVar2 = fStack_2c;
    fVar3 = fStack_28;
  }
  *param_6 = fVar1;
  param_6[1] = fVar2;
  param_6[2] = fVar3;
  return;
}

