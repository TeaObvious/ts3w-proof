/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX lot,normalreturn.
   Ifattachednativeobject+2E8 exists, computeB03360hash and comparebothDWORDsagainstcached+310/+314.
   Onchange publishnewhash,retainobject,calllotremove/readd tile consumersACC920/ACC2B0,set+425dirty
   andrefreshfloor footprint/tile dependencies,thenreleaseborrowedreference. This is a real hash
   producer/consumer join, not an inferred household association. */

void __fastcall Lot_RefreshAttachedObjectFootprintHash(int *param_1)

{
  undefined4 *puVar1;
  undefined8 uVar2;
  undefined4 *local_14;
  void *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  if ((void *)param_1[0xba] != (void *)0x0) {
    uVar2 = Object_ComputeFootprintResourceHash((void *)param_1[0xba]);
    puVar1 = (undefined4 *)param_1[0xba];
    if ((puVar1 != (undefined4 *)0x0) &&
       ((param_1[0xc4] != (int)uVar2 || (param_1[0xc5] != (int)((ulonglong)uVar2 >> 0x20))))) {
      *(undefined8 *)(param_1 + 0xc4) = uVar2;
      LOCK();
      puVar1[1] = puVar1[1] + 1;
      UNLOCK();
      local_14 = puVar1;
      FUN_00acc920(param_1,puVar1);
      Lot_InsertObjectTileMembership(param_1,puVar1);
      *(undefined1 *)((int)param_1 + 0x425) = 1;
      if (param_1[0xa4] != 0) {
        local_10 = (void *)0x0;
        local_c = 0;
        local_8 = 0;
        local_4 = "Lot/AddObjectToLotTile/tilePartArray";
        FUN_00ad2190((int)param_1,&local_10);
        FUN_00a9a010((void *)param_1[0xa4],&local_10);
        FUN_00cccdb0(param_1,puVar1);
        FUN_00a91ae0((void *)param_1[0xa4]);
        FUN_00a97180(param_1[0xa4]);
        if (local_10 != (void *)0x0) {
          Memory_FreeIfNonNull(local_10);
        }
      }
      FUN_007462e0((int *)&local_14);
    }
  }
  return;
}

