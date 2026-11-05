/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Physical ECX settings record, plain RET. Registers UserTools debug controls for highlighting,
   upgrade/normal slot search radii, two snap distances, sledgehammer movement and deck water
   height. Record+8/+C snap distances are mutable debug settings; caller CF1780 supplies the
   manager150 subrecord. This registration does not make constructor values immutable constants. */

void __fastcall UserToolSettings_RegisterDebugTunables(int param_1)

{
  int *piVar1;
  
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x18))(L"UserTools",0x4b0);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x28))(param_1 + 0x11,L"Highlight Found Slots");
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x28))(param_1 + 0x10,L"Highlight Slots Search Spheres");
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x34))(param_1,L"Upgrade Slot Search Radius",0,0x1e,1);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x34))(param_1 + 4,L"Normal Slot Search Radius",0,0x1e,1);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x30))
              (param_1 + 8,L"Snap Distance On Floor",0,_DAT_01062bc8,FLOAT_00fa2bac);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x30))
              (param_1 + 0xc,L"Snap Distance On Object",0,_DAT_01062bc8,FLOAT_00fa2bac);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x30))
              (param_1 + 0x14,L"SledgeHammer : Min mouse move dist for drag mode",0,DAT_00fbc938,
               0x3f800000);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x30))
              (param_1 + 0x18,L"Deck tools: Initial height for deck on water",DAT_00fbb83c,
               DAT_00fa2b9c,_DAT_0104487c);
  }
  piVar1 = (int *)FUN_005a08d0();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x18))(0,0x7fffffff);
  }
  return;
}

