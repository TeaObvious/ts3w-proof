/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161948 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetPathDistanceRemaining [assembly=ScriptCore token=0x06001137; handle:
   System.UInt32, pathIdx: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetPathDistanceRemaining(uint param_1,int param_2)

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
  
  piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
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
        uVar5 = FUN_0081c4e0(piVar3 + 0x56,0,0x2000,'\0');
        if ((char)uVar5 != '\0') {
          FUN_00847a30(piVar3[0xf] & 0xcf7f);
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

