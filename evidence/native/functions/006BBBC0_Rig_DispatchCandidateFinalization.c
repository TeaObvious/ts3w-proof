/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 local light rig contract. ECX rig+selection stackword RET4. Clears bit0 at+224;
   derives nontrivial extraRGB flag frombit2 andsum(+210RGB) >stored.01
   viaCOMISS/JBE(unorderedfalse). Optionalowner+0C/global1159D74 invokes6BB770 beforefill and6BB140
   aftersort. Clearsbit0again; only selectionfirst==0, rig+8==0 andnoextraRGB invokes6BB550. Sorts
   global48bytecandidate range through6BB360. rig+8!=0 selects6B7D30; elseglobal1159D30 && !flags20
   selects6B78C0 (ECX+TWOstackargs); otherwise6BA4B0. Alternate selectors, optionalcallbacks
   andfullsourceadmission remainopen. */

void __thiscall Rig_DispatchCandidateFinalization(void *this,Analyst_RigBankSelection *selection)

{
  uint uVar1;
  bool bVar2;
  
  *(byte *)((int)this + 0x224) = *(byte *)((int)this + 0x224) & 0xfe;
  uVar1 = selection->firstPrimarySlot;
  bVar2 = false;
  if ((*(byte *)((int)this + 0x224) & 2) != 0) {
    if (_DAT_0106e6ec <
        *(float *)((int)this + 0x218) +
        *(float *)((int)this + 0x210) + *(float *)((int)this + 0x214)) {
      bVar2 = true;
    }
  }
  if ((*(void **)((int)this + 0xc) != (void *)0x0) && (DAT_01159d74 != '\0')) {
    FUN_006bb770(*(void **)((int)this + 0xc),(int *)&DAT_01159d20);
  }
  *(byte *)((int)this + 0x224) = *(byte *)((int)this + 0x224) & 0xfe;
  if (((uVar1 == 0) && (*(int *)((int)this + 8) == 0)) && (!bVar2)) {
    Rig_AddThresholdFillCandidates(this,&DAT_01159d20);
  }
  RigCandidates_SortRange(DAT_01159d20,DAT_01159d24);
  if ((*(void **)((int)this + 0xc) != (void *)0x0) && (DAT_01159d74 != '\0')) {
    FUN_006bb140(*(void **)((int)this + 0xc),(int *)&DAT_01159d20);
  }
  if (*(int *)((int)this + 8) != 0) {
    FUN_006b7d30(this,(int *)&DAT_01159d20);
    return;
  }
  if ((DAT_01159d30 != '\0') && ((*(byte *)((int)this + 0x224) & 0x20) == 0)) {
    FUN_006b78c0(this,&DAT_01159d20,selection);
    return;
  }
  Rig_SelectCandidateBanks(this,&DAT_01159d20,selection);
  return;
}

