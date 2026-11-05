/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX filter plus one input word, RET4. AL0 accepts
   matching type mask, explicit object, selected scene ancestry or object ancestor flag80 at+208;
   AL1 rejects otherwise, including null object. Upper EAX incidental. Decompiler helper name is not
   a type-width proof; TEST and ancestry instructions are authority. */

uint __thiscall SceneCullFilter_RejectObject(void *this,int *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  
  iVar1 = *param_1;
  if (iVar1 != 0) {
    puVar2 = *(undefined4 **)this;
    piVar3 = (int *)GetNativeDescriptorTypeName_Field44(iVar1);
    if ((puVar2[5] & (uint)piVar3) != 0) {
LAB_006e3e4a:
      return (uint)piVar3 & 0xffffff00;
    }
    for (piVar3 = (int *)*puVar2; piVar3 != (int *)puVar2[1]; piVar3 = piVar3 + 1) {
      if (*piVar3 == iVar1) goto LAB_006e3e4a;
    }
    piVar3 = *(int **)(iVar1 + 0x38);
    if (piVar3 != (int *)0x0) {
      do {
        if (piVar3 == (int *)puVar2[4]) goto LAB_006e3e4a;
        piVar3 = (int *)piVar3[5];
      } while (piVar3 != (int *)0x0);
    }
    for (piVar3 = (int *)FUN_006fa9d0(iVar1); param_1 = (int *)0x0, piVar3 != (int *)0x0;
        piVar3 = (int *)FUN_006fa9d0((int)piVar3)) {
      if ((*(byte *)(piVar3 + 0x82) & 0x80) != 0) goto LAB_006e3e4a;
    }
  }
  return CONCAT31((int3)((uint)param_1 >> 8),1);
}

