/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original note: ECXdriver plus actorHash and resolved object-pointer words RET8, not a raw64GUID argument here.803C00 resolves/creates definedwalker; absent calls8025D0(format,hash), exact Message payload remains callee boundary; absent entity+8 returns. Null object clears driver sync/master only if selected walker current/pending, clears800C70 then5822A0(entity,0). Nonnull visits other bound entities and581870(entity,0), resolves Animation mask11DD484 and Sim11EA0FC (932A30 registration producer; zero BSS is not runtime mask). Animation present+Sim absent+Animation virtual20 returnsnull skips5822A0 but still7F5250(driver+44). Otherwise binds through5822A0 then refresh7F5250. Native object/entity/ref/component/refresh/boolean/private ownership belongs these callees; no whole CLR GUID-map parity. */
void __thiscall FUN_00803c60(void *this,int param_1,void *param_2)

{
  void *this_00;
  int iVar1;
  void *pvVar2;
  void *pvVar3;
  int iVar4;
  
  pvVar2 = (void *)SACS_LookupDestinationWalker_803c00(this,param_1);
  if (pvVar2 == (void *)0x0) {
    FUN_008025d0(this,"No actor <0x%08x> defined by this state machine.");
    return;
  }
  this_00 = *(void **)((int)pvVar2 + 8);
  if (this_00 == (void *)0x0) {
    return;
  }
  if (param_2 == (void *)0x0) {
    if ((*(char *)((int)this + 0x3c) != '\0') &&
       ((*(int *)((int)pvVar2 + 0x10) != 0 || (*(int *)((int)pvVar2 + 0x1c) != 0)))) {
      *(undefined1 *)((int)this + 0x3c) = 0;
      *(undefined4 *)((int)this + 0x40) = 0;
    }
    SACS_ClearWalker_800c70(pvVar2);
    param_2 = (void *)0x0;
  }
  else {
    iVar1 = *(int *)((int)this + 0x14);
    for (iVar4 = *(int *)((int)this + 0x10); iVar4 != iVar1; iVar4 = iVar4 + 8) {
      pvVar3 = *(void **)(iVar4 + 4);
      if (((pvVar3 != pvVar2) && (pvVar3 != (void *)0x0)) &&
         (*(void **)((int)pvVar3 + 8) != (void *)0x0)) {
        FUN_00581870(*(void **)((int)pvVar3 + 8),'\0');
      }
    }
    pvVar2 = Object_GetComponentByMask(param_2,DAT_011dd484);
    pvVar3 = Object_GetComponentByMask(param_2,DAT_011ea0fc);
    if (((pvVar2 != (void *)0x0) && (pvVar3 == (void *)0x0)) &&
       (iVar4 = (**(code **)(*(int *)((int)pvVar2 + 8) + 0x20))(), iVar4 == 0)) goto LAB_00803d2e;
  }
  FUN_005822a0(this_00,(int)param_2);
LAB_00803d2e:
  FUN_007f5250((int)this + 0x44);
  return;
}

