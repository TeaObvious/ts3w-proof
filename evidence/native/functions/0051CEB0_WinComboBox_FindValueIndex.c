/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original combo-control comparison; no execution. ECX control subobject and one
   stack word; RET4. Scans stored UTF16 values in order using case-sensitive code-unit/length
   comparison and returns first index in EAX, elseFFFFFFFF; a null input pointer returnsFFFFFFFF.
   The registered global string conversion precedes this child, so that fact alone does not
   establish managed-null behavior. The9-byte gap between owned ranges is outside Listing. */

uint __thiscall WinComboBox_FindValueIndex(void *this,ushort *param_1)

{
  ushort uVar1;
  uint uVar2;
  ushort *puVar3;
  ushort *puVar4;
  uint uVar5;
  undefined4 *puVar6;
  int *piVar7;
  int iVar8;
  uint local_10;
  int local_c;
  int local_8 [2];
  
  if (param_1 != (ushort *)0x0) {
    local_10 = 0;
    uVar2 = *(int *)((int)this + 0x48) - *(int *)((int)this + 0x44) >> 4;
    if (uVar2 != 0) {
      puVar6 = *(undefined4 **)((int)this + 0x44);
      do {
        uVar1 = *param_1;
        puVar3 = param_1;
        while (uVar1 != 0) {
          puVar3 = puVar3 + 1;
          uVar1 = *puVar3;
        }
        puVar4 = (ushort *)*puVar6;
        local_8[0] = puVar6[1] - (int)puVar4 >> 1;
        local_c = ((int)puVar3 - (int)param_1 >> 1) * 2 >> 1;
        piVar7 = &local_c;
        if (local_8[0] <= local_c) {
          piVar7 = local_8;
        }
        puVar3 = param_1;
        for (iVar8 = *piVar7; iVar8 != 0; iVar8 = iVar8 + -1) {
          if (*puVar4 != *puVar3) {
            uVar5 = (-(uint)(*puVar4 < *puVar3) & 0xfffffffe) + 1;
            if (uVar5 != 0) goto LAB_0051cf66;
            break;
          }
          puVar4 = puVar4 + 1;
          puVar3 = puVar3 + 1;
        }
        if (local_c <= local_8[0]) {
          uVar5 = (uint)(local_c < local_8[0]);
LAB_0051cf66:
          if (uVar5 == 0) {
            return local_10;
          }
        }
        puVar6 = puVar6 + 4;
        local_10 = local_10 + 1;
      } while (local_10 < uVar2);
    }
  }
  return 0xffffffff;
}

