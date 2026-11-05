/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPathDistanceRemaining. Export
   ordinal(s): 651. Entry VA: 0x10542b30. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060001AC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl Route_GetPathDistanceRemaining(uint param_1,int param_2)

{
  float fVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  undefined4 uVar5;
  float *pfVar6;
  float unaff_ESI;
  float unaff_EDI;
  float10 fVar7;
  
                    /* 0x542b30  651  Route_GetPathDistanceRemaining */
  piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 0x10))();
    piVar4 = (int *)piVar3[0x38];
    piVar2 = piVar3 + 0x38;
    if (piVar4 != piVar2) {
      do {
        if (param_2 == 0) break;
        piVar4 = (int *)*piVar4;
        param_2 = param_2 + -1;
      } while (piVar4 != piVar2);
      if ((piVar4 != piVar2) && (piVar2 = (int *)piVar4[2], piVar2 != (int *)0x0)) {
        uVar5 = FUN_1060e0e0(piVar3 + 0x56,0,0x2000,'\0');
        if ((char)uVar5 != '\0') {
          FUN_10639510(piVar3[0xf] & 0xcf7f);
        }
        (**(code **)(*piVar2 + 300))();
        fVar7 = (float10)(**(code **)(*piVar2 + 0xa4))(0,0);
        pfVar6 = (float *)&stack0xfffffff4;
        if (((float10)unaff_ESI - fVar7) - (float10)unaff_EDI <= (float10)0) {
          pfVar6 = (float *)&stack0xfffffff0;
        }
        fVar1 = *pfVar6;
        (**(code **)(*piVar3 + 0x14))();
        return (float10)fVar1;
      }
    }
    (**(code **)(*piVar3 + 0x14))();
  }
  return (float10)0;
}

