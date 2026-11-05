/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX model plus source descriptor stack word, RET04. Nonnull descriptor
   calls complete006F5D50 and tests AL only. If that bounds path declines, iterate actual unsigned
   part count from0060FC70, copy two aligned16-byte rows from each real0068F300 bound into model+288
   storage at0x40 strides, then read descriptor bounds005044D0 and publish through006FCC10. Null
   descriptor returns. Body envelope contains eight non-owned alignment bytes006F6058..006F605F,
   kept explicitly separate. Actual vtable references exist, but this body alone does not connect
   every animation dirty item to this call or prove current vertex-union parity. */

void __thiscall SceneModel_RefreshBoundsOrCopyResourceFallback(void *this,int param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  uint uVar4;
  undefined4 *puVar5;
  int iVar6;
  undefined4 *puVar7;
  uint uVar8;
  
  if ((param_1 != 0) &&
     (uVar3 = SceneModel_RefreshSimAndPartBounds(this,param_1), (char)uVar3 == '\0')) {
    uVar4 = GetNativeDescriptorTypeName_Field44(param_1);
    uVar8 = 0;
    if (uVar4 != 0) {
      iVar6 = 0;
      do {
        puVar7 = (undefined4 *)(*(int *)((int)this + 0x288) + iVar6);
        puVar5 = (undefined4 *)FUN_0068f300(*(int *)(*(int *)(param_1 + 0x40) + uVar8 * 4));
        uVar3 = puVar5[1];
        uVar1 = puVar5[2];
        uVar2 = puVar5[3];
        *puVar7 = *puVar5;
        puVar7[1] = uVar3;
        puVar7[2] = uVar1;
        puVar7[3] = uVar2;
        uVar3 = puVar5[5];
        uVar1 = puVar5[6];
        uVar2 = puVar5[7];
        uVar8 = uVar8 + 1;
        iVar6 = iVar6 + 0x40;
        puVar7[4] = puVar5[4];
        puVar7[5] = uVar3;
        puVar7[6] = uVar1;
        puVar7[7] = uVar2;
      } while (uVar8 < uVar4);
    }
    puVar5 = (undefined4 *)FUN_005044d0(param_1);
    SceneObject_SetLocalBoundsAndRefresh(this,puVar5);
  }
  return;
}

