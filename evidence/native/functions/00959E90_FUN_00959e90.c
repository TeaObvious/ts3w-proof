/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXchildTransform four stackwords parentObject, rawSlotName, localOffsetPointer, occupancyBYTE RET10; actual C omits a word/mislabels name as offset. Null parent/noSlots returns3; slot readiness9500F0 false, firstName950950 missing or point virtual+8(1) absent returns4. Passes seven words parent,point,offset,0,occupancy,0,0 into958D90. Ordinary76E650 uses THIS frontend, not959F10. No generalized rollback/status equivalence inferred. */

undefined4 __thiscall FUN_00959e90(void *this,void *param_1,float *param_2,char param_3)

{
  void *this_00;
  int iVar1;
  byte *pbVar2;
  int *piVar3;
  undefined4 uVar4;
  
  if (param_1 != (void *)0x0) {
    this_00 = Object_GetComponentByMask(param_1,DAT_011ea114);
    if (this_00 != (void *)0x0) {
      iVar1 = FUN_009500f0((int)this_00);
      if (iVar1 != 0) {
        pbVar2 = SlotComponent_FindFirstNameWordThunk(this_00,(uint)param_2);
        if (pbVar2 != (byte *)0x0) {
          piVar3 = (int *)(**(code **)(*(int *)pbVar2 + 8))(1);
          if (piVar3 != (int *)0x0) {
            uVar4 = TransformComponent_AttachToSlotPoint
                              (this,param_1,piVar3,param_2,'\0',param_3,'\0','\0');
            return uVar4;
          }
        }
      }
      return 4;
    }
  }
  return 3;
}
