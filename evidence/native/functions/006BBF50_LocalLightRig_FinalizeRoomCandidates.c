/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. ECX rig, no stack arguments, RET, void. If marker+1E4
   !=FEEDBAAD calls unexpanded6B83C0. Main gate requires owner+1B0 nonnull andflags+224 bit80;
   absent gate no finalization. Resolves child byword+1E0; validchild ANDnonzeroword reset shared
   candidate end1159D24=begin1159D20, prepare/project through6A1830 and6BB460 (each ECX+3stack,
   corrected scopedABI), then6B7510. These producers remain unexpanded. StateDWORD+1D4==1 supplies
   selection{1,3,4}; everyotherstate supplies{0,4,4}, not onlystate2. Dispatch6BBBC0. Child
   predicate69E860 mayscale fullfourlane colors at+50..80,+D0..100 andthreeblocks+110..130 by
   dynamicsetting11D1C50. Clears+1F0, invokes6B8730 output+200. Nullchild/zeroword
   invokes6BAB40/6BBD10 fallbacks. Global candidate scratch means independent-rig parallel safety is
   NOT established. */

void __thiscall LocalLightRig_FinalizeRoomCandidates(void *this)

{
  float fVar1;
  char cVar2;
  void *arg0;
  void *arg3;
  undefined *this_00;
  float *pfVar3;
  int iVar4;
  bool bVar5;
  uint uVar6;
  Analyst_RigBankSelection local_20 [2];
  
  if (*(int *)((int)this + 0x1e4) != -0x1124553) {
    FUN_006b83c0((int)this);
  }
  if ((*(void **)((int)this + 0x1b0) != (void *)0x0) && ((*(byte *)((int)this + 0x224) & 0x80) != 0)
     ) {
    arg0 = (void *)FUN_006a6620(*(void **)((int)this + 0x1b0),*(uint *)((int)this + 0x1e0));
    if ((arg0 != (void *)0x0) && (*(int *)((int)this + 0x1e0) != 0)) {
      DAT_01159d24 = DAT_01159d20;
      arg3 = FUN_006a1830(arg0,local_20,(void *)((int)this + 0x140),(void *)((int)arg0 + 0x110));
      FUN_006bb460(this,(void *)((int)arg0 + 0x30),(void *)((int)arg0 + 200),arg3);
      FUN_006b7510((int)this);
      uVar6 = (DAT_01159d24 - DAT_01159d20) / 0x30;
      this_00 = FUN_006c36b0();
      FUN_006c2480(this_00,uVar6);
      bVar5 = *(int *)((int)this + 0x1d4) != 1;
      local_20[0].maxSecondaryCandidates = 4;
      if (bVar5) {
        local_20[0].maxPrimaryCandidates = 4;
      }
      else {
        local_20[0].maxPrimaryCandidates = 3;
      }
      local_20[0].firstPrimarySlot = (uint)!bVar5;
      Rig_DispatchCandidateFinalization(this,local_20);
      cVar2 = FUN_0069e860((int)arg0);
      if (cVar2 != '\0') {
        pfVar3 = (float *)FUN_007e51a0(&DAT_011d1c50);
        fVar1 = *pfVar3;
        pfVar3 = (float *)((int)this + 0xd0);
        iVar4 = 4;
        do {
          pfVar3[-0x20] = fVar1 * pfVar3[-0x20];
          pfVar3[-0x1f] = fVar1 * pfVar3[-0x1f];
          pfVar3[-0x1e] = fVar1 * pfVar3[-0x1e];
          pfVar3[-0x1d] = fVar1 * pfVar3[-0x1d];
          *pfVar3 = *pfVar3 * fVar1;
          pfVar3[1] = pfVar3[1] * fVar1;
          pfVar3[2] = pfVar3[2] * fVar1;
          pfVar3[3] = pfVar3[3] * fVar1;
          pfVar3 = pfVar3 + 4;
          iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        pfVar3 = (float *)((int)this + 0x110);
        iVar4 = 3;
        do {
          *pfVar3 = fVar1 * *pfVar3;
          pfVar3[1] = fVar1 * pfVar3[1];
          pfVar3[2] = fVar1 * pfVar3[2];
          pfVar3[3] = fVar1 * pfVar3[3];
          pfVar3 = pfVar3 + 4;
          iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
      }
      *(undefined4 *)((int)this + 0x1f0) = 0;
      FUN_006b8730(this,(float *)((int)this + 0x200));
      return;
    }
    FUN_006bab40((int)this);
    FUN_006bbd10(this);
  }
  return;
}

