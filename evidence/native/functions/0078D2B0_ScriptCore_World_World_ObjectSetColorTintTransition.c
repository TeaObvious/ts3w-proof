/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163628 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectSetColorTintTransition [assembly=ScriptCore token=0x060007C9;
   objId: System.UInt64, red1: System.Single, green1: System.Single, blue1: System.Single,
   transitionTime: System.Single, red2: System.Single, green2: System.Single, blue2: System.Single;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ObjectSetColorTintTransition
               (undefined4 param_1,undefined4 param_2,float param_3,float param_4,float param_5,
               undefined4 param_6)

{
  int iVar1;
  void *pvVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  
  iVar1 = FUN_00937570();
  if (((iVar1 != 0) && (pvVar2 = (void *)FUN_00937f80(iVar1), pvVar2 != (void *)0x0)) &&
     (pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea2a8), pvVar2 != (void *)0x0)) {
    fVar9 = param_3 * DAT_00fb3f64 + DAT_010117f0;
    fVar10 = param_4 * DAT_00fb3f64 + DAT_010117f0;
    fVar11 = param_5 * DAT_00fb3f64 + DAT_010117f0;
    uVar7 = (int)fVar9 + 0xb8c00000;
    uVar4 = (int)fVar9 + 0xb8c00000;
    uVar5 = (int)fVar10 + 0xb8c00000;
    uVar3 = (int)fVar11 + 0xb8c00000;
    uVar6 = (int)fVar11 + 0xb8c00000;
    uVar8 = (int)fVar10 + 0xb8c00000;
    FUN_0095dee0(pvVar2,(((uint)(byte)~(byte)((int)uVar4 >> 0x1f) & uVar4 & 0xff |
                         (int)(0xff - uVar4) >> 0x1f & 0xffU) * 0x100 +
                        ((uint)(byte)~(byte)((int)uVar5 >> 0x1f) & uVar5 & 0xff |
                        (int)(0xff - uVar5) >> 0x1f & 0xffU)) * 0x100 +
                        ((uint)(byte)~(byte)((int)uVar6 >> 0x1f) & uVar6 & 0xff |
                        (int)(0xff - uVar6) >> 0x1f & 0xffU),param_6,
                 (((uint)(byte)~(byte)((int)uVar7 >> 0x1f) & uVar7 & 0xff |
                  (int)(0xff - uVar7) >> 0x1f & 0xffU) * 0x100 +
                 ((uint)(byte)~(byte)((int)uVar8 >> 0x1f) & uVar8 & 0xff |
                 (int)(0xff - uVar8) >> 0x1f & 0xffU)) * 0x100 +
                 ((uint)(byte)~(byte)((int)uVar3 >> 0x1f) & uVar3 & 0xff |
                 (int)(0xff - uVar3) >> 0x1f & 0xffU),1);
  }
  return;
}

