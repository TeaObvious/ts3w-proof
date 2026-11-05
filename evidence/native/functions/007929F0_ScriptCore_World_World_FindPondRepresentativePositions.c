/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163510 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindPondRepresentativePositions [assembly=ScriptCore token=0x060007A6;
   lotId: System.UInt64, posArray: System.Single[]&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered
   representative-position wrapper. Stored metadata one address byte, ZERO actual Listing.
   Separately authenticated bounded PE uses temporary native Single vector and existing
   array-interface slots; original managed facade clears Vector3[]outnull before admission then
   adapts complete float triples. No full stored-body or inferred indirect-stack prototype claim.
   Original managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority.
   All IDs, physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged;
   current resource/cache policy is preserved. */

undefined4
ScriptCore_World__World_FindPondRepresentativePositions(int param_1,int param_2,undefined4 param_3)

{
  uint in_EAX;
  int *piVar1;
  undefined4 extraout_EAX;
  undefined4 uVar2;
  uint extraout_EAX_00;
  int unaff_ESI;
  int unaff_EDI;
  void *allocation;
  void *pvStack_10;
  void *pvStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  if (DAT_011edbc4 != (void *)0x0) {
    in_EAX = param_1;
    if (param_1 != 0 || param_2 != 0) {
      piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
      in_EAX = 0;
      if (piVar1 != (int *)0x0) {
        pvStack_10 = (void *)0x0;
        pvStack_c = (void *)0x0;
        uStack_8 = 0;
        pcStack_4 = "Scratch/PositionArrayForPondVerts";
        FUN_00ab48a0(piVar1,&pvStack_10);
        if (pvStack_10 != pvStack_c) {
          piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
          (**(code **)(*piVar1 + 0x90))(param_3,(int)pvStack_c - (int)pvStack_10 >> 2);
          allocation = (void *)0x0;
          (**(code **)(*piVar1 + 0xa8))(param_3,unaff_EDI,0,unaff_ESI - unaff_EDI >> 2);
          uVar2 = 0;
          if (allocation != (void *)0x0) {
            Memory_FreeIfNonNull(allocation);
            uVar2 = extraout_EAX;
          }
          return CONCAT31((int3)((uint)uVar2 >> 8),1);
        }
        in_EAX = 0;
        if (pvStack_10 != (void *)0x0) {
          Memory_FreeIfNonNull(pvStack_10);
          in_EAX = extraout_EAX_00;
        }
      }
    }
  }
  return in_EAX & 0xffffff00;
}

