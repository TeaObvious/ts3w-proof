/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetPathData. Export ordinal(s): 693. Entry
   VA: 0x10542d80. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000187. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetPathData(uint param_1,undefined4 *param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 auStack_30 [2];
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if ((DAT_10c78944 != (void *)0x0) &&
     (piVar2 = (int *)FUN_1053c0f0(DAT_10c78944,param_1), piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 0x10))();
    uStack_28 = param_2[2];
    uStack_24 = param_2[3];
    auStack_30[0] = *param_2;
    uStack_34 = 0;
    uStack_38 = 0;
    uStack_3c = 0;
    uStack_40 = 0;
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    puVar3 = (undefined4 *)FUN_1055db20(param_2 + 4,&uStack_40);
    uStack_20 = *puVar3;
    uStack_1c = puVar3[1];
    uStack_18 = puVar3[2];
    uStack_14 = puVar3[3];
    for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
      (**(code **)(*(int *)piVar1[2] + 0x34))(auStack_30);
    }
    (**(code **)(*piVar2 + 0x14))();
  }
  return;
}

