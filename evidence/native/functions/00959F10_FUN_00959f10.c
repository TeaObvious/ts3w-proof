/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified original contract: ECXchildTransform four stackwords parentObject, rawBoneIdentifier, localOffsetPointer, occupancyBYTE RET10. Parent/Slots missing3; find950960(tail950200), append951BC0 only if absent; failed append8, point virtual+8(1) null2003. Calls958D90 with explicitbone sixthword1 (ordinary959E90 passes0). C prototype conflates rawidentifier andoffset/missesword; physical PUSHasm authoritative. */

undefined4 __thiscall FUN_00959f10(void *this,void *param_1,float *param_2,char param_3)

{
  void *this_00;
  int *piVar1;
  undefined4 uVar2;
  
  if (param_1 != (void *)0x0) {
    this_00 = Object_GetComponentByMask(param_1,DAT_011ea114);
    if (this_00 != (void *)0x0) {
      piVar1 = (int *)SlotComponent_FindBoneBindingByIdentifier(this_00,(int)param_2);
      if (piVar1 == (int *)0x0) {
        piVar1 = (int *)SlotComponent_AppendBonePointByIdentifier(this_00,(int)param_2);
        if (piVar1 == (int *)0x0) {
          return 8;
        }
      }
      piVar1 = (int *)(**(code **)(*piVar1 + 8))(1);
      if (piVar1 == (int *)0x0) {
        return 0x7d3;
      }
      uVar2 = TransformComponent_AttachToSlotPoint
                        (this,param_1,piVar1,param_2,'\0',param_3,'\x01','\0');
      return uVar2;
    }
  }
  return 3;
}
