/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintQuadtree_GatherSegmentFootprints.
   Original Ghidra database symbol: FUN_006676a0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [006676a0,00667713); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* 6676B3..C4 selects raw callback 663220 when the filtered flag is nonzero, otherwise 663200. Both remain undefined entries in the database; their separately retained original bytes identify wrappers, not invented Ghidra functions. 667706..0F clears EAX and returns whether collector+14 is nonzero. The active counter+48 is refreshed/incremented/decremented but is not proof of a thread-safe transaction. */

/* Retained historical annotation 3, previous C line 32; earlier snapshot context. */
/* 00667706..0F: normalized count-nonzero result; no wall-kind test here. */



bool __thiscall
FUN_006676a0(void *this,undefined4 param_1,float param_2,float param_3,float param_4,float param_5,
            float param_6,int param_7,char param_8)

{
  undefined *puVar1;
  
  if (*(int *)((int)this + 0x48) < 1) {
    FUN_00666ce0(this);
  }
  *(int *)((int)this + 0x48) = *(int *)((int)this + 0x48) + 1;
  puVar1 = &LAB_00663220;
  if (param_8 == '\0') {
    puVar1 = &LAB_00663200;
  }
  FUN_00663f50(this,param_1,param_2,param_3,param_4,param_5,param_6,puVar1,(undefined *)0x0,param_7)
  ;
  *(int *)((int)this + 0x48) = *(int *)((int)this + 0x48) + -1;
  return *(int *)(param_7 + 0x14) != 0;
}

