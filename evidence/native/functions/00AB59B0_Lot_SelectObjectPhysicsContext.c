/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXlot+1object/RET4, EAXcontext or0. Find Location
   component; signed level at+18 uses7FFFFFFF sentinel->0, flagbit5 adds1, signed clamp at lot+17C,
   then segmented contextstorage select. Logical level and selected Physics floor are distinct.
   Current fresh-host family has no flag5 and projects this with Max(level,lotMinimum); not full
   native segmentedstore/lifetime parity. */

undefined4 __thiscall Lot_SelectObjectPhysicsContext(void *this,void *param_1)

{
  uint uVar1;
  void *pvVar2;
  int iVar3;
  int iVar4;
  void **ppvVar5;
  
  if (param_1 != (void *)0x0) {
    pvVar2 = Object_GetComponentByMask(param_1,DAT_011edf08);
    if (pvVar2 != (void *)0x0) {
      uVar1 = *(uint *)((int)pvVar2 + 0x18);
      if ((*(uint *)((int)pvVar2 + 0x2c) >> 5 & 1) == 0) {
        param_1 = (void *)(-(uint)(uVar1 != 0x7fffffff) & uVar1);
      }
      else {
        param_1 = (void *)((-(uint)(uVar1 != 0x7fffffff) & uVar1) + 1);
      }
      ppvVar5 = (void **)((int)this + 0x17c);
      if (*(int *)((int)this + 0x17c) <= (int)param_1) {
        ppvVar5 = &param_1;
      }
      iVar3 = (*(int *)((int)this + 0x378) - *(int *)((int)this + 0x37c) >> 2) -
              (int)*(void **)((int)this + 0x17c);
      iVar4 = (int)*ppvVar5 + iVar3 + 0x1000000;
      iVar4 = ((int)(iVar4 + (iVar4 >> 0x1f & 0x3fU)) >> 6) + -0x40000;
      return *(undefined4 *)
              (*(int *)(*(int *)((int)this + 900) + iVar4 * 4) +
              ((int)*ppvVar5 + iVar4 * -0x40 + iVar3) * 4);
    }
  }
  return 0;
}

