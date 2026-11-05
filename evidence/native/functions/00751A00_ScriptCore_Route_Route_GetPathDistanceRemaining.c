/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161948 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  float fStack_4;
  
  piVar3 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
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
        uVar5 = RoutingOptions_TestMask(piVar3 + 0x56,0,0x2000,'\0');
        if ((char)uVar5 != '\0') {
          FUN_00847a30(piVar3[0xf] & 0xcf7f);
        }
        (**(code **)(*piVar2 + 300))();
        fVar7 = (float10)(**(code **)(*piVar2 + 0xa4))(0,0);
        pfVar6 = (float *)((int)register0x00000010 + -0xc);
        if (((float10)unaff_ESI - fVar7) - (float10)unaff_EDI <= (float10)0) {
          pfVar6 = (float *)((int)register0x00000010 + -0x10);
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

