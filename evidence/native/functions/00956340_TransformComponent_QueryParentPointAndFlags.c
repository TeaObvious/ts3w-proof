/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX Transform receiver plus three output pointers
   at stack+4,+8,+0Ch; RET0Ch, meaningful low AL. Initially zeroes bone-mode, occupant and point
   outputs. Missing parent returns AL0; existing parent path returns AL1 even without a child
   binding. Binding mode selects ordinary point+4 or bone point+10h. A matching Container occupant
   sets SECOND output, leaving FIRST bone-mode output independent. Physical9563B3 MOV EDX,[ESP+18h]
   follows four saved registers and addresses entryESP+8; the inferred C final assignment to
   firstout is a false alias. Canonical950FB0 consumes two words; point virtual+8 consumes one. */

undefined4 __thiscall
TransformComponent_QueryParentPointAndFlags
          (void *this,char *param_1,undefined1 *param_2,int *param_3)

{
  void *this_00;
  int *piVar1;
  int iVar2;
  
  *param_1 = '\0';
  *param_2 = 0;
  *param_3 = 0;
  if (*(void **)((int)this + 0x30) == (void *)0x0) {
    return (uint)param_2 & 0xffffff00;
  }
  this_00 = Object_GetComponentByMask(*(void **)((int)this + 0x30),DAT_011ea114);
  iVar2 = 0;
  if (this_00 != (void *)0x0) {
    piVar1 = (int *)SlotsComponent_FindChildSlotBinding(this_00,*(int *)((int)this + 4),param_1);
    iVar2 = 0;
    if (piVar1 != (int *)0x0) {
      if (*param_1 == '\0') {
        iVar2 = piVar1[1];
      }
      else {
        iVar2 = FUN_009de7f0((int)piVar1);
      }
      *param_3 = iVar2;
      iVar2 = (**(code **)(*piVar1 + 8))(3);
      if ((iVar2 != 0) && (*(int *)(iVar2 + 0x1c) == *(int *)((int)this + 4))) {
        *param_1 = '\x01';
      }
    }
  }
  return CONCAT31((int3)((uint)iVar2 >> 8),1);
}

