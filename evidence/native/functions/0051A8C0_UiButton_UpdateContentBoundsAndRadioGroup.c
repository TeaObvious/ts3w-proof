/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 instructions. ECX is the button receiver; no consumed stack
   arguments, plain RET on clean branch and a virtual tail jump on dirty completion. Stored
   __fastcall/int pointer declaration is inferred: MOVSS/SUBSS/MULSS/ADDSS operate on float fields,
   not numeric int-to-float conversions. Dirty byte+254 gates work and is cleared before interface+4
   vcall74(8,0). Initialize image bounds+278..284 and caption bounds+288..294 to full local
   width/height from area+40..4C. Flags+25C mask0x2 reserves horizontal artwork only when drawable
   width < window width (COMISS/JBE rejects equality and unordered); alignment+260 1 leading,2
   trailing,3 centered. Mask0x4 vertically centers artwork only when its height is smaller. Half
   scalar00F9B5B4 is binary32 0.5. Then add caption insets+298/+29C to leading coordinates,
   subtract+2A0/+2A4 from trailing, call virtual+AC. A parent/type3/selected-mask0x4/nonzero-group
   gate scans siblings by interface ID8ED27E7A and clears mask0x4 on other same-group buttons.
   Finally tail-call interface+4 vcall90. These inset/radio/lifecycle side effects are outside a
   pure image/caption partition helper; no complete renderer parity or ownership of virtual callees
   inferred. */

void __fastcall UiButton_UpdateContentBoundsAndRadioGroup(int *param_1)

{
  code *pcVar1;
  int *piVar2;
  int iVar3;
  float fVar4;
  int *piVar5;
  float fStack_10;
  float fStack_c;
  
  if ((char)param_1[0x95] == '\0') {
    return;
  }
  pcVar1 = *(code **)(param_1[1] + 0x74);
  *(undefined1 *)(param_1 + 0x95) = 0;
  (*pcVar1)(8,0);
  fVar4 = (float)param_1[0x12] - (float)param_1[0x10];
  piVar5 = (int *)((float)param_1[0x13] - (float)param_1[0x11]);
  param_1[0x9e] = 0;
  param_1[0x9f] = 0;
  param_1[0xa0] = (int)((float)param_1[0x12] - (float)param_1[0x10]);
  param_1[0xa1] = (int)((float)param_1[0x13] - (float)param_1[0x11]);
  param_1[0xa2] = 0;
  param_1[0xa3] = 0;
  param_1[0xa4] = (int)((float)param_1[0x12] - (float)param_1[0x10]);
  param_1[0xa5] = (int)((float)param_1[0x13] - (float)param_1[0x11]);
  if ((param_1[0x97] & 6U) != 0) {
    fStack_10 = 0.0;
    fStack_c = 0.0;
    if ((int *)param_1[0x81] != (int *)0x0) {
      (**(code **)(*(int *)param_1[0x81] + 0x18))(&fStack_10,0,0);
    }
    if (((param_1[0x97] & 2U) != 0) && (fStack_10 < fVar4)) {
      iVar3 = param_1[0x98];
      if (iVar3 == 1) {
        param_1[0x9e] = 0;
        param_1[0xa0] = (int)fStack_10;
        param_1[0xa2] = (int)fStack_10;
        param_1[0xa4] = (int)fVar4;
      }
      else if (iVar3 == 2) {
        param_1[0x9e] = (int)(fVar4 - fStack_10);
        param_1[0xa0] = (int)fVar4;
        param_1[0xa2] = 0;
        param_1[0xa4] = (int)(fVar4 - fStack_10);
      }
      else if (iVar3 == 3) {
        fVar4 = (fVar4 - fStack_10) * 0.5;
        param_1[0x9e] = (int)fVar4;
        param_1[0xa0] = (int)(fVar4 + fStack_10);
        param_1[0xa2] = (int)fVar4;
        param_1[0xa4] = (int)(fVar4 + fStack_10);
      }
    }
    if (((param_1[0x97] & 4U) != 0) && (fStack_c < (float)piVar5)) {
      fVar4 = ((float)piVar5 - fStack_c) * 0.5;
      param_1[0x9f] = (int)fVar4;
      param_1[0xa1] = (int)(fVar4 + fStack_c);
    }
  }
  pcVar1 = *(code **)(*param_1 + 0xac);
  param_1[0xa2] = (int)((float)param_1[0xa6] + (float)param_1[0xa2]);
  param_1[0xa3] = (int)((float)param_1[0xa7] + (float)param_1[0xa3]);
  param_1[0xa4] = (int)((float)param_1[0xa4] - (float)param_1[0xa8]);
  param_1[0xa5] = (int)((float)param_1[0xa5] - (float)param_1[0xa9]);
  (*pcVar1)();
  if ((((param_1[0xb] != 0) && (param_1[0x96] == 3)) && ((*(byte *)(param_1 + 0x1e) & 4) != 0)) &&
     (param_1[0x9c] != 0)) {
    (**(code **)(*(int *)(param_1[0xb] + 4) + 0xd0))(&stack0xffffffe8);
    piVar2 = (int *)(**(code **)(*(int *)(param_1[0xb] + 4) + 0xd4))(&stack0xffffffe8);
    if (piVar5 != (int *)*piVar2) {
      do {
        if (((piVar5 + -1 != (int *)0x0) &&
            (piVar2 = (int *)(**(code **)(piVar5[-1] + 0xc))(0x8ed27e7a), piVar2 != (int *)0x0)) &&
           ((piVar2 != param_1 + 0x94 &&
            (iVar3 = (**(code **)(*piVar2 + 0x40))(), iVar3 == param_1[0x9c])))) {
          (**(code **)(*piVar2 + 0x28))(4,0);
        }
        piVar5 = (int *)*piVar5;
        piVar2 = (int *)(**(code **)(*(int *)(param_1[0xb] + 4) + 0xd4))(&stack0xffffffec);
      } while (piVar5 != (int *)*piVar2);
    }
  }
                    /* WARNING: Could not recover jumptable at 0x0051abeb. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(param_1[1] + 0x90))();
  return;
}

