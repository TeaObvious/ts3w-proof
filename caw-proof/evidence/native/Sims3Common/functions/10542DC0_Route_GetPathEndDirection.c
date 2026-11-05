/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPathEndDirection. Export ordinal(s):
   652. Entry VA: 0x10542dc0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600018E. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_GetPathEndDirection(uint param_1,int param_2,void *param_3)

{
  int *piVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  undefined4 uStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  
  if (DAT_10c78944 == (void *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x10))();
      piVar4 = (int *)piVar3[0x38];
      piVar1 = piVar3 + 0x38;
      if (piVar4 != piVar1) {
        do {
          if (param_2 == 0) break;
          piVar4 = (int *)*piVar4;
          param_2 = param_2 + -1;
        } while (piVar4 != piVar1);
        if ((piVar4 != piVar1) && (piVar1 = (int *)piVar4[2], piVar1 != (int *)0x0)) {
          cVar2 = (**(code **)(*piVar1 + 0x13c))();
          if (cVar2 == '\0') {
            iVar5 = (**(code **)(*piVar1 + 0x4c))();
            (**(code **)(*piVar1 + 0x68))(iVar5 + -1,&fStack_30);
            FUN_1055dbd0(param_3,&uStack_38);
            (**(code **)(*piVar3 + 0x14))();
            return;
          }
          (**(code **)(*piVar1 + 0x140))(&fStack_20);
          uStack_38 = 0;
          fVar6 = (DAT_10acb0d4 * fStack_20 - fStack_1c * 0.0) + fStack_18 * 0.0;
          fVar7 = (fStack_1c * 0.0 - DAT_10acb0d4 * fStack_24) + fStack_18 * 0.0;
          fVar8 = (fStack_24 * 0.0 - fStack_20 * 0.0) + fStack_18 * DAT_10acb0d4;
          fStack_34 = (fVar8 * fStack_20 - fVar7 * fStack_1c) * _DAT_10aadffc + 0.0;
          fStack_30 = (fVar6 * fStack_1c - fVar8 * fStack_24) * _DAT_10aadffc + 0.0;
          fStack_2c = (fVar7 * fStack_24 - fVar6 * fStack_20) * _DAT_10aadffc + DAT_10acb0d4;
          fStack_28 = (fVar6 * fStack_24 - fVar6 * fStack_24) * _DAT_10aadffc + 0.0;
          FUN_1055dbd0(param_3,&fStack_34);
          (**(code **)(*piVar3 + 0x14))();
          return;
        }
      }
    }
  }
  FUN_1055da40(param_3,0,0,0);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x14))();
  }
  return;
}

