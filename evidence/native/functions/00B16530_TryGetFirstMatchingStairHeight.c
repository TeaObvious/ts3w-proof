/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* Analyst PC1.67 static: INCOMPLETE STORED BODY: B16530..B1654C and B16550..B16605 omit true branch
   B16606..B1663C; B1654D..4F are three alignment bytes. No body repair or complete-function C/ASM
   claim. Original raw true branch was checked separately. Map traversal chooses first B15A60 match,
   samples via A8C690, optional local slope via B14C80/B14E50. Actual AL success with RET0x08; upper
   EAX unspecified. Current all-match agreement policy is different. Descriptive analyst role, not a
   recovered original symbol.
   
   Analyst-assigned PC 1.67 first-matching stair height query. ECX is the stair container; two stack
   words are a pointer to {Float32 X,Z; signed Int32 level} and a Float32 output pointer; RET8, only
   AL is the general success result. Traverse the stored pointer-bucket/node+80 order and stop at
   the first B15A60 admission. If no candidate is admitted, return AL0 without a direct output
   store. For a selected stair, sample its first endpoint {X,Z,topLevel} at record+44 through
   A8C690, round the base to Float32, then use B14C80 to choose zero or B14E50's slope contribution.
   Either selected branch writes the output and returns AL1; no all-match agreement or continued
   search follows a rejected second footprint test. JNE B165E3 enters separately defined B16606 with
   live selected-record/x87/frame state; that definition remains separate, not merged into this
   body. Pointer validity, container ordering/lifetime, product admission and sampler dependencies
   remain required. No original runtime observation. */

uint __thiscall TryGetFirstMatchingStairHeight(void *this,float *param_1,float *param_2)

{
  void *this_00;
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  undefined4 extraout_EAX;
  uint *puVar5;
  float10 fVar6;
  float10 extraout_ST0;
  float10 fVar7;
  float10 extraout_ST1;
  
  puVar5 = *(uint **)((int)this + 0x20);
  uVar4 = *puVar5;
  if (uVar4 == 0) {
    puVar5 = puVar5 + 1;
    uVar4 = *puVar5;
    while (uVar4 == 0) {
      puVar5 = puVar5 + 1;
      uVar4 = *puVar5;
    }
    uVar4 = *puVar5;
  }
  uVar2 = *(uint *)(*(int *)((int)this + 0x20) + *(int *)((int)this + 0x24) * 4);
  uVar3 = uVar2;
  while( true ) {
    if (uVar4 == uVar2) {
      return uVar3 & 0xffffff00;
    }
    this_00 = (void *)(uVar4 + 8);
    uVar3 = FUN_00b15a60(this_00,param_1);
    if ((char)uVar3 != '\0') break;
    uVar4 = *(uint *)(uVar4 + 0x80);
    while (uVar4 == 0) {
      puVar1 = puVar5 + 1;
      puVar5 = puVar5 + 1;
      uVar4 = *puVar1;
    }
  }
  fVar6 = LotLevelHeight_SampleLocalPosition
                    (*(void **)(*(int *)((int)this + 0x18) + 0x290),(LotXZLevel *)(uVar4 + 0x4c));
  uVar4 = TestStairSlopeFootprint(this_00,*param_1,param_1[1]);
  if ((char)uVar4 == '\0') {
    *param_2 = (float)fVar6 + 0.0;
    return CONCAT31((int3)(uVar4 >> 8),1);
  }
  fVar7 = ComputeStairSlopeHeightOffset(this_00,(float)extraout_ST0,(float)extraout_ST1);
  *param_2 = (float)fVar7 + (float)fVar6;
  return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
}

