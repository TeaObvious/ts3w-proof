/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst original PC1.67 instruction contract. ECX context, no physical stack arguments/plain RET.
   Two disjoint owned ranges contain349B;357B envelope includes8 nonowned bytes. Traverses24B rows
   forward from+28h to+2Ch: childGUID,parentGUID,pointDWORD,occupant byte+14h,bone-mode byte+15h.
   Finds both objects/components; ordinary mode uses name lookup, bone mode forwards opaque
   pointDWORD to950200/951BC0. Links/events/notifications precede957790(parent Slots).
   Missing/failed rows are skipped; no bone ordinal or zero-acceptance inference. */

undefined4 __fastcall TransformContext_ResolveQueuedAttachments(int param_1)

{
  ulonglong *puVar1;
  void *this;
  void *this_00;
  void *this_01;
  void *this_02;
  void *this_03;
  byte *pbVar2;
  int *piVar3;
  void *pvVar4;
  ulonglong *puVar5;
  
  this = ObjectRegistry_GetGlobal();
  puVar5 = *(ulonglong **)(param_1 + 0x28);
  puVar1 = *(ulonglong **)(param_1 + 0x2c);
  pvVar4 = this;
  do {
    if (puVar5 == puVar1) {
      return CONCAT31((int3)((uint)pvVar4 >> 8),1);
    }
    this_00 = ObjectRegistry_FindBorrowed(this,puVar5[1]);
    this_01 = ObjectRegistry_FindBorrowed(this,*puVar5);
    pvVar4 = this_01;
    if ((this_00 != (void *)0x0) && (this_01 != (void *)0x0)) {
      this_02 = Object_GetComponentByMask(this_01,DAT_011ea158);
      pvVar4 = (void *)0x0;
      if (this_02 != (void *)0x0) {
        this_03 = Object_GetComponentByMask(this_00,DAT_011ea114);
        pvVar4 = (void *)0x0;
        if (this_03 != (void *)0x0) {
          if (*(char *)((int)puVar5 + 0x15) == '\0') {
            pbVar2 = SlotComponent_FindFirstNameWordThunk(this_03,(uint)puVar5[2]);
LAB_00959694:
            pvVar4 = (void *)0x0;
            if (pbVar2 == (byte *)0x0) goto LAB_0095971e;
          }
          else {
            pbVar2 = (byte *)SlotComponent_FindBoneBindingByIdentifier(this_03,(int)puVar5[2]);
            if (pbVar2 == (byte *)0x0) {
              pbVar2 = (byte *)SlotComponent_AppendBonePointByIdentifier(this_03,(int)puVar5[2]);
              goto LAB_00959694;
            }
          }
          piVar3 = (int *)(**(code **)(*(int *)pbVar2 + 8))(1);
          pvVar4 = (void *)0x0;
          if (piVar3 != (int *)0x0) {
            *(void **)((int)this_02 + 0x30) = this_00;
            FUN_00951ae0(this_03,(int)this_01,(int)piVar3,*(undefined1 *)((int)puVar5 + 0x15));
            ObjectEvents_Dispatch(0x21,this_01,this_00);
            FUN_00958b10(this_02,*(char *)((int)puVar5 + 0x15),piVar3,this_00);
            if ((*(char *)((int)puVar5 + 0x14) != '\0') &&
               (pvVar4 = (void *)(**(code **)(*piVar3 + 8))(3), pvVar4 != (void *)0x0)) {
              FUN_0080d740(pvVar4,this_01);
            }
            TransformComponent_NotifyPoseChanged(this_02);
            pvVar4 = (void *)TransformComponent_InstallParentSurfaceCutoutIfEligible
                                       (this_02,(int)this_00,this_03,piVar3);
          }
        }
      }
    }
LAB_0095971e:
    puVar5 = puVar5 + 3;
  } while( true );
}

