/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163620 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetColorTint [assembly=ScriptCore token=0x060007C8; objId:
   System.UInt64, red: System.Single, green: System.Single, blue: System.Single, transitionTime:
   System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetColorTint
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
               float param_6)

{
  void *pvVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (((pvVar1 != (void *)0x0) &&
      (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0
      )) && (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8), pvVar1 != (void *)0x0)) {
    uVar3 = (int)(param_3 * 0.99609375 + 49152.0) + 0xb8c00000;
    uVar2 = (int)(param_5 * 0.99609375 + 49152.0) + 0xb8c00000;
    uVar4 = (int)(param_4 * 0.99609375 + 49152.0) + 0xb8c00000;
    VisualState_SetTintTransition
              (pvVar1,(((uint)(byte)~(byte)((int)uVar3 >> 0x1f) & uVar3 & 0xff |
                       (int)(0xff - uVar3) >> 0x1f & 0xffU) * 0x100 +
                      ((uint)(byte)~(byte)((int)uVar4 >> 0x1f) & uVar4 & 0xff |
                      (int)(0xff - uVar4) >> 0x1f & 0xffU)) * 0x100 +
                      ((uint)(byte)~(byte)((int)uVar2 >> 0x1f) & uVar2 & 0xff |
                      (int)(0xff - uVar2) >> 0x1f & 0xffU),param_6,0,0);
  }
  return;
}

