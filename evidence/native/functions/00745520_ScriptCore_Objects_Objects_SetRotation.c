/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161438 (TS3W.exe).
   ScriptCore.Objects::Objects_SetRotation [assembly=ScriptCore token=0x06000008; id: System.UInt64,
   angle: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: PC 1.67 original contract. FullGUID andfloatradianangle; originalsin/cos(angle/2)
   produce Y-axisquaternion. Animationflush/dirtybeforestore; spatialflag10; WorldQuaternion setter;
   gatedlotrefresh, finalcomponent vtable+38. */

void __cdecl ScriptCore.Objects::Objects_SetRotation(ulonglong guid,float angleRadians)

{
  void *pvVar1;
  void *pvVar2;
  int *piVar3;
  undefined4 uVar4;
  int *piVar5;
  float10 fVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fStack_70;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,guid);
  if (pvVar1 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011dd484);
    if (pvVar2 == (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
      if (pvVar2 != (void *)0x0) {
        TransformComponent_MarkDerivedStateDirty(pvVar2);
      }
    }
    else {
      (**(code **)(*(int *)((int)pvVar2 + 8) + 0x28))();
    }
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011edf08);
    if (pvVar2 != (void *)0x0) {
      *(uint *)((int)pvVar2 + 0x2c) = *(uint *)((int)pvVar2 + 0x2c) | 0x10;
    }
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea158);
    if (pvVar2 != (void *)0x0) {
      auVar7._4_4_ = angleRadians;
      auVar7._0_4_ = angleRadians;
      auVar7._8_4_ = angleRadians;
      auVar7._12_4_ = angleRadians;
      auVar8._4_4_ = DAT_0103fd88;
      auVar8._0_4_ = DAT_0103fd88;
      auVar8._8_4_ = DAT_0103fd88;
      auVar8._12_4_ = DAT_0103fd88;
      auVar8 = divps(auVar7,auVar8);
      fStack_70 = auVar8._0_4_;
      fVar6 = (float10)fsin((float10)fStack_70);
      fStack_14 = (float)fVar6;
      fVar6 = (float10)fcos((float10)fStack_70);
      fStack_40 = fStack_14 * 0.0;
      fStack_3c = fStack_14 * 0.0;
      fStack_48 = fStack_14 * 0.0;
      fStack_34 = fStack_14 * 0.0;
      fStack_30 = DAT_00f998f8 * fStack_14;
      fStack_4c = DAT_00f998f8 * fStack_14;
      fStack_28 = DAT_00f998f8 * fStack_14;
      fStack_24 = DAT_00f998f8 * fStack_14;
      fStack_50 = fStack_14 * 0.0;
      fStack_1c = fStack_14 * 0.0;
      fStack_18 = fStack_14 * 0.0;
      fStack_14 = fStack_14 * 0.0;
      fStack_44 = (float)fVar6;
      fStack_38 = fStack_48;
      fStack_2c = fStack_4c;
      fStack_20 = fStack_50;
      TransformComponent_SetWorldQuaternion(pvVar2,&fStack_50);
    }
    pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011ea0fc);
    piVar3 = Object_GetComponentByMask(pvVar1,DAT_011ea138);
    if (((pvVar2 == (void *)0x0) &&
        (((piVar3 == (int *)0x0 || (uVar4 = FUN_009521f0((int)piVar3), (char)uVar4 == '\0')) &&
         (pvVar2 = Object_GetComponentByMask(pvVar1,DAT_011edf08), pvVar2 != (void *)0x0)))) &&
       ((piVar5 = (int *)FUN_0068f130((int)pvVar1), piVar5 != (int *)0x0 &&
        (pvVar2 = (void *)(**(code **)(*piVar5 + 0xc))(0x90566b0e), pvVar2 != (void *)0x0)))) {
      Lot_NotifyObjectLocationChanged(pvVar2,pvVar1);
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x38))();
    }
    return;
  }
  return;
}

