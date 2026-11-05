/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163628 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_ObjectSetColorTintTransition [assembly=ScriptCore token=0x060007C9;
   objId: System.UInt64, red1: System.Single, green1: System.Single, blue1: System.Single,
   transitionTime: System.Single, red2: System.Single, green2: System.Single, blue2: System.Single;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetColorTintTransition
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
               float param_6)

{
  void *pvVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  if (((pvVar1 != (void *)0x0) &&
      (pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1)), pvVar1 != (void *)0x0
      )) && (pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea2a8), pvVar1 != (void *)0x0)) {
    fVar8 = param_3 * 0.99609375 + 49152.0;
    fVar9 = param_4 * 0.99609375 + 49152.0;
    fVar10 = param_5 * 0.99609375 + 49152.0;
    uVar6 = (int)fVar8 + 0xb8c00000;
    uVar3 = (int)fVar8 + 0xb8c00000;
    uVar4 = (int)fVar9 + 0xb8c00000;
    uVar2 = (int)fVar10 + 0xb8c00000;
    uVar5 = (int)fVar10 + 0xb8c00000;
    uVar7 = (int)fVar9 + 0xb8c00000;
    VisualState_SetTintTransition
              (pvVar1,(((uint)(byte)~(byte)((int)uVar3 >> 0x1f) & uVar3 & 0xff |
                       (int)(0xff - uVar3) >> 0x1f & 0xffU) * 0x100 +
                      ((uint)(byte)~(byte)((int)uVar4 >> 0x1f) & uVar4 & 0xff |
                      (int)(0xff - uVar4) >> 0x1f & 0xffU)) * 0x100 +
                      ((uint)(byte)~(byte)((int)uVar5 >> 0x1f) & uVar5 & 0xff |
                      (int)(0xff - uVar5) >> 0x1f & 0xffU),param_6,
               (((uint)(byte)~(byte)((int)uVar6 >> 0x1f) & uVar6 & 0xff |
                (int)(0xff - uVar6) >> 0x1f & 0xffU) * 0x100 +
               ((uint)(byte)~(byte)((int)uVar7 >> 0x1f) & uVar7 & 0xff |
               (int)(0xff - uVar7) >> 0x1f & 0xffU)) * 0x100 +
               ((uint)(byte)~(byte)((int)uVar2 >> 0x1f) & uVar2 & 0xff |
               (int)(0xff - uVar2) >> 0x1f & 0xffU),1);
  }
  return;
}

