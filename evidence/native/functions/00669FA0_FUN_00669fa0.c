/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC 1.67 TS3W.exe; analyst display name FootprintQueryCell_CollectCandidates.
   Original Ghidra database symbol: FUN_00669fa0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00669fa0,0066a003); 0 envelope gap bytes are not owned instructions.
*/

/* A null selected-storage pointer yields no candidates. A nonzero low-byte subcell code selects masked collection. Code0 separately dispatches an ordinary leaf or recursive child traversal. This helper writes no collector count itself; its downstream insertion path owns that state. */

void __thiscall FootprintQueryCell_CollectCandidates(void *this,int param_1,void *param_2,undefined4 param_3)

{
  void *this_00;
  uint uVar1;
  
  this_00 = *(void **)((int)this + 0xc);
  if (this_00 != (void *)0x0) {
    uVar1 = *(uint *)((int)this + 0x1c) & 0xff;
    if (uVar1 != 0) {
      FootprintCell_CollectMaskedRecords(this_00,param_1,uVar1,param_2,(char)param_3);
      return;
    }
    if ((*(byte *)((int)this_00 + 4) & 3) == 0) {
      FootprintCell_CollectLeafRecords(this_00,param_1,param_2,(char)param_3,'\x01','\0');
      return;
    }
    FootprintCell_CollectChildren(this_00,param_1,param_2,param_3,1,0);
  }
  return;
}
