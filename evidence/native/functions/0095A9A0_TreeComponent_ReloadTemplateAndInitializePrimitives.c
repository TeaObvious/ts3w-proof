/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 variation/leaf metadata contract. ECX owner, no stack args, RET. Release old
   template, resource lookup using type021D7E8C; missing lookup allocates
   SpeedTree/TreeTemplateData. Per 0x50-byte primitive, local sample starts0.5, conditionally
   obtains 004FAA60(global011EA294) and stores FLOAT32. SSE separate operations compute
   ((sample*2-1)*template[54]+template[50])/template[50] -> primitive[48]. For template variance
   outside inclusive +/-2^-23 (NaN also arithmetic branch), primitive[4C]=sample. Otherwise
   Lookup1999(owner[4]->DWORD+8), FILD signed32 word, if negative FADD double2^32, FMUL double
   constant01045940(bits3DF0000000100000, rounded reciprocal4294967295, NOT exact2^-32), one
   FSTPfloat to[4C]. No early float store before unsigned correction. Template[50] is dereferenced
   before later null test: this body does not establish graceful OOM/null fallback.
   Resource/allocation helpers and random producer admission remain separate. */

void __thiscall TreeComponent_ReloadTemplateAndInitializePrimitives(void *this)

{
  int *piVar1;
  float fVar2;
  int *piVar3;
  int iVar4;
  char cVar5;
  undefined4 *puVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  float10 fVar10;
  float fVar11;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = *(undefined4 *)((int)this + 0x10);
  local_c = *(undefined4 *)((int)this + 0x14);
  local_4 = *(undefined4 *)((int)this + 0x1c);
  local_8 = 0x21d7e8c;
  puVar6 = (undefined4 *)FUN_0072f140();
  piVar7 = *(int **)((int)this + 0xc);
  piVar1 = (int *)((int)this + 0xc);
  if (piVar7 != (int *)0x0) {
    *piVar1 = 0;
    (**(code **)(*piVar7 + 4))();
  }
  cVar5 = (**(code **)*puVar6)(&local_10,0x10fd73f0,piVar1);
  if (cVar5 == '\0') {
    puVar6 = (undefined4 *)FUN_004e4500(0x80,"SpeedTree/TreeTemplateData",0);
    if (puVar6 == (undefined4 *)0x0) {
      piVar7 = (int *)0x0;
    }
    else {
      piVar7 = (int *)TreeTemplate_ConstructDefault(puVar6);
    }
    piVar3 = (int *)*piVar1;
    if (piVar7 != piVar3) {
      if (piVar7 != (int *)0x0) {
        (**(code **)*piVar7)();
      }
      *piVar1 = (int)piVar7;
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 4))();
      }
    }
  }
  iVar4 = *(int *)(*(int *)((int)this + 8) + 0xc);
  for (iVar9 = *(int *)(*(int *)((int)this + 8) + 8); iVar9 != iVar4; iVar9 = iVar9 + 0x50) {
    fVar11 = 0.5;
    cVar5 = FUN_00588be0();
    if (cVar5 == '\0') {
      fVar10 = TreeVariation_DrawUniform((int *)&DAT_011ea294);
      fVar11 = (float)fVar10;
    }
    fVar2 = *(float *)(*piVar1 + 0x50);
    *(float *)(iVar9 + 0x48) = ((fVar11 * 2.0 - 1.0) * *(float *)(*piVar1 + 0x54) + fVar2) / fVar2;
    if ((*piVar1 == 0) ||
       ((*(float *)(*piVar1 + 0x54) <= 1.1920929e-07 &&
        (-1.1920929e-07 <= *(float *)(*piVar1 + 0x54))))) {
      uVar8 = VariationWords_Lookup1999(*(uint *)(*(int *)((int)this + 4) + 8));
                    /* SIGNED FILD of raw lookup bits; conditional DOUBLE +2^32 recovers unsigned
                       numeric value. No FSTPfloat until final primitive+4C after DOUBLE
                       *constant01045940(bits3DF0000000100000, NOT exact2^-32). C casts/stack reuse
                       do not add a float32 rounding boundary. */
      fVar11 = (float)(int)uVar8;
      if ((int)uVar8 < 0) {
        fVar11 = fVar11 + 4.2949673e+09;
      }
      *(float *)(iVar9 + 0x4c) = fVar11 * 2.3283064e-10;
    }
    else {
      *(float *)(iVar9 + 0x4c) = fVar11;
    }
  }
  TreeComponent_RefreshClusterBounds((int)this);
  return;
}

