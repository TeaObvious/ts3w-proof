/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note, PC1.67 static; analyst-assigned name. Physical thiscall ECX drawable plus three
   stack arguments render context,bounds,state descriptor; RET0C. Both color image and mask arrays
   use53DC40(state word,array). Scale-type dispatch+54 uses1 direct,2 asymmetric borders510A70,3
   tile50FCF0,4 alternate-border510140. Mask selects renderer virtual5C instead of50 in direct path
   and is forwarded to border/tile paths. Missing selected image draws fallback frame via511640 and
   optional state-bit10 overlay511900. Optional secondary image+50 and color+84 have separate state
   gating+80, scaled rectangle+70/+74, and same scale dispatch. No broad
   normal/hover/active/disabled fallback chain or per-host alpha-bound policy is proven by this
   consumer. Decompiler transient stack aliases are not source-level locals; the physical
   three-argument prototype records actual rectangle and state dependencies, but actual C still
   mislabels state reads as bounds after the indirect renderer-color call; do not interpret that
   float cast or omitted argument use as original logic. Referenced three switch tables are retained
   as original data. */

void __thiscall UiStdDrawable_Draw(void *this,void *renderContext,float *bounds,uint *state)

{
  uint *puVar1;
  byte bVar2;
  int *piVar3;
  undefined4 *****pppppuVar4;
  void *pvVar5;
  bool bVar6;
  float fVar7;
  float fVar8;
  float fStack_28;
  float fStack_24;
  undefined4 uStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  float fStack_10;
  float fStack_c;
  float fStack_8;
  
  piVar3 = (int *)FUN_0050ec40(renderContext,0,0);
  (**(code **)(*piVar3 + 4))(0xffffffff);
  fVar7 = *bounds;
  pppppuVar4 = UiStdDrawable_SelectStateImage((uint)fVar7,(void **)((int)this + 0x10));
  pvVar5 = UiStdDrawable_SelectStateImage((uint)fVar7,(void **)((int)this + 0x30));
  fStack_24 = *(float *)((int)this + 0x58);
  uStack_20 = *(undefined4 *)((int)this + 0x5c);
  fStack_28 = FLOAT_00f998f8;
  fStack_1c = FLOAT_00f998f8 - *(float *)((int)this + 0x60);
  fStack_18 = FLOAT_00f998f8 - *(float *)((int)this + 100);
  if (pppppuVar4 == (undefined4 *****)0x0) {
    FUN_00511640(piVar3,renderContext,(uint)bounds[2],(uint)fVar7 & 0xf);
    if (((uint)*bounds & 0x10) != 0) {
      FUN_00511900(piVar3,renderContext,0xffffffff,*(float *)((int)this + 0x7c));
    }
  }
  else {
    switch(*(undefined4 *)((int)this + 0x54)) {
    case 1:
      if (pvVar5 == (void *)0x0) {
        (**(code **)(*piVar3 + 0x50))(renderContext,pppppuVar4);
      }
      else {
        (**(code **)(*piVar3 + 0x5c))(renderContext,pppppuVar4,pvVar5,&stack0xffffffcc);
      }
      break;
    case 2:
      UiDrawable_DrawBorderSlices
                (piVar3,renderContext,&stack0xffffffcc,pppppuVar4,&fStack_24,
                 *(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),(int)pvVar5);
      break;
    case 3:
      FUN_0050fcf0(piVar3,renderContext,(float *)&stack0xffffffcc,(int)pppppuVar4,
                   *(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),0.0,0.0);
      break;
    case 4:
      FUN_00510140(piVar3,renderContext,&stack0xffffffcc,pppppuVar4,&fStack_24,
                   *(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),(int)pvVar5);
    }
  }
  if (*(int *)((int)this + 0x50) == 0) {
    return;
  }
  if (*(int *)((int)this + 0x84) == 0) {
    return;
  }
  puVar1 = (uint *)(*(int *)((int)this + 0x50) + 0x24);
  *puVar1 = *puVar1 | 0x10;
  switch(*(undefined4 *)((int)this + 0x80)) {
  case 0:
    goto switchD_0053df54_caseD_0;
  default:
    goto switchD_0053df54_caseD_1;
  case 2:
    bVar2 = *(byte *)bounds & 2;
    break;
  case 3:
    bVar2 = *(byte *)bounds & 8;
    break;
  case 4:
    bVar2 = *(byte *)bounds & 10;
    break;
  case 5:
    bVar6 = ((uint)*bounds & 1) == 0;
    goto LAB_0053dfa1;
  case 6:
    if (((uint)*bounds & 2) == 0) {
      return;
    }
    bVar6 = ((uint)*bounds & 8) == 0;
LAB_0053dfa1:
    if (!bVar6) {
      return;
    }
    goto switchD_0053df54_caseD_1;
  }
  if (bVar2 != 0) {
switchD_0053df54_caseD_1:
    fStack_14 = (*(float *)renderContext + *(float *)((int)renderContext + 8)) * _DAT_00f9b5b4;
    fVar7 = (*(float *)((int)renderContext + 8) - *(float *)renderContext) *
            *(float *)((int)this + 0x70) * _DAT_00f9b5b4;
    fStack_10 = (*(float *)((int)renderContext + 4) + *(float *)((int)renderContext + 0xc)) *
                _DAT_00f9b5b4;
    fVar8 = (*(float *)((int)renderContext + 0xc) - *(float *)((int)renderContext + 4)) *
            *(float *)((int)this + 0x74) * _DAT_00f9b5b4;
    fStack_8 = fVar8 + fStack_10;
    fStack_c = fVar7 + fStack_14;
    fStack_10 = fStack_10 - fVar8;
    fStack_14 = fStack_14 - fVar7;
    (**(code **)(*piVar3 + 4))(*(undefined4 *)((int)this + 0x84));
    switch(*(undefined4 *)((int)this + 0x54)) {
    case 1:
      (**(code **)(*piVar3 + 0x50))(&fStack_18,*(undefined4 *)((int)this + 0x50),&stack0xffffffc8);
      return;
    case 2:
      UiDrawable_DrawBorderSlices
                (piVar3,&fStack_18,&stack0xffffffc8,*(undefined4 ****)((int)this + 0x50),&fStack_28,
                 *(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),0);
      return;
    case 3:
      FUN_0050fcf0(piVar3,&fStack_18,(float *)&stack0xffffffc8,*(int *)((int)this + 0x50),
                   *(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),0.0,0.0);
      return;
    case 4:
      FUN_00510140(piVar3,&fStack_18,&stack0xffffffc8,*(undefined4 ******)((int)this + 0x50),
                   &fStack_28,*(float *)((int)this + 0x68),*(float *)((int)this + 0x6c),0);
    }
  }
switchD_0053df54_caseD_0:
  return;
}

