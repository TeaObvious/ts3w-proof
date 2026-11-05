/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 428 complete owned bytes/118 actual Listing
   instructions. No runtime execution.
   ECX lot and output pointer, RET4. Active flag+0x444 and nonzero objectID+0x460/+0x464 admit
   registry lookup/component mask011EA158 and existing world quaternion/translation getter00957910.
   Stored lot quaternion+0x470 and translation+0x480 are combined with object transform. Missing
   admission/object/component writes identity quaternion and zero translation. Preserve exact SSE
   lane/order rather than assuming only an XZ angle. */

void __thiscall Lot_GetAttachedWorldQuaternionTranslation(void *this,float *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  void *pvVar17;
  float *pfVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float local_30 [11];
  
  if ((*(char *)((int)this + 0x444) != '\0') &&
     (*(int *)((int)this + 0x460) != 0 || *(int *)((int)this + 0x464) != 0)) {
    pvVar17 = ObjectRegistry_GetGlobal();
    pvVar17 = ObjectRegistry_FindBorrowed(pvVar17,*(ulonglong *)((int)this + 0x460));
    if (pvVar17 != (void *)0x0) {
      pvVar17 = Object_GetComponentByMask(pvVar17,DAT_011ea158);
      if (pvVar17 != (void *)0x0) {
        fVar9 = *(float *)((int)this + 0x470);
        fVar10 = *(float *)((int)this + 0x474);
        fVar11 = *(float *)((int)this + 0x478);
        fVar12 = *(float *)((int)this + 0x47c);
        fVar13 = *(float *)((int)this + 0x480);
        fVar14 = *(float *)((int)this + 0x484);
        fVar15 = *(float *)((int)this + 0x488);
        fVar16 = *(float *)((int)this + 0x48c);
        pfVar18 = TransformComponent_GetWorldQuaternionTranslation(pvVar17,local_30);
        fVar1 = *pfVar18;
        fVar2 = pfVar18[1];
        fVar3 = pfVar18[2];
        fVar4 = pfVar18[3];
        fVar19 = (fVar15 * fVar2 - fVar14 * fVar3) + fVar4 * fVar13;
        fVar20 = (fVar13 * fVar3 - fVar15 * fVar1) + fVar4 * fVar14;
        fVar21 = (fVar14 * fVar1 - fVar13 * fVar2) + fVar4 * fVar15;
        fVar5 = pfVar18[4];
        fVar6 = pfVar18[5];
        fVar7 = pfVar18[6];
        fVar8 = pfVar18[7];
        *param_1 = (fVar11 * fVar2 - fVar10 * fVar3) + fVar4 * fVar9 + fVar1 * fVar12;
        param_1[1] = (fVar9 * fVar3 - fVar11 * fVar1) + fVar4 * fVar10 + fVar2 * fVar12;
        param_1[2] = (fVar10 * fVar1 - fVar9 * fVar2) + fVar4 * fVar11 + fVar3 * fVar12;
        param_1[3] = fVar12 * fVar4 - (fVar3 * fVar11 + fVar2 * fVar10 + fVar1 * fVar9);
        param_1[4] = (fVar21 * fVar2 - fVar20 * fVar3) * 2.0 + fVar13 + fVar5;
        param_1[5] = (fVar19 * fVar3 - fVar21 * fVar1) * 2.0 + fVar14 + fVar6;
        param_1[6] = (fVar20 * fVar1 - fVar19 * fVar2) * 2.0 + fVar15 + fVar7;
        param_1[7] = (fVar19 * fVar1 - fVar19 * fVar1) * 2.0 + fVar16 + fVar8;
        return;
      }
    }
  }
  *param_1 = 0.0;
  param_1[1] = 0.0;
  param_1[2] = 0.0;
  param_1[3] = 1.0;
  param_1[4] = 0.0;
  param_1[5] = 0.0;
  param_1[6] = 0.0;
  param_1[7] = 0.0;
  return;
}

