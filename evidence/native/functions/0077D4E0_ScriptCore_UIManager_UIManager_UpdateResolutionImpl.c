/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163078 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_UpdateResolutionImpl [assembly=ScriptCore token=0x06000E4A;
   width: System.UInt32, height: System.UInt32, refresh: System.UInt32, fullScreen: System.Boolean;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.UIManager::UIManager_UpdateResolutionImpl(int param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uStack_10;
  undefined4 uStack_c;
  float fStack_8;
  float fStack_4;
  
  piVar1 = (int *)FUN_0050af90();
  piVar1 = (int *)(**(code **)(*piVar1 + 4))();
  if (piVar1 != (int *)0x0) {
    fStack_8 = (float)param_1;
    uStack_10 = 0;
    uStack_c = 0;
    if (param_1 < 0) {
      fStack_8 = fStack_8 + 4.2949673e+09;
    }
    fStack_4 = (float)param_2;
    if (param_2 < 0) {
      fStack_4 = fStack_4 + 4.2949673e+09;
    }
    puVar3 = &DAT_01162c48;
    do {
      piVar2 = (int *)(**(code **)(*piVar1 + 0xf4))(*puVar3,1);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 100))(&uStack_10);
      }
      puVar3 = puVar3 + 1;
    } while ((int)puVar3 < 0x1162c94);
  }
  return;
}

