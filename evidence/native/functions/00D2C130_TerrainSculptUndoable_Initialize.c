/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 constructor thiscalllotpointerRET4 EAXreceiver.
   BaseD21810,bindlotB0,actualprimaryvtable01087498; heightmapBC/C0/C4
   andpondmapDC/E0/E4,unitcost108initial1,Float32sum10C0,total1100; tempeditedvector114/118/11C0.
   Actualvtable+34D2C250floatcost,+44D2C090undo,+48D2C0C0redo,+50D2C260submitgate.
   AllFLOATcostsremainfractional,notroundedPriceInt32. Code/bodypointer/lifetime unchanged. */

undefined * __thiscall TerrainSculptUndoable_Initialize(void *this,undefined *lot)

{
  int iVar1;
  
  FUN_00d21810(this,(undefined4 *)lot);
  *(undefined **)((int)this + 0xb0) = lot;
  *(undefined ***)this = &PTR_FUN_01087498;
  *(undefined ***)((int)this + 8) = &PTR_LAB_0108708c;
  *(float *)((int)this + 200) = 1.0;
  *(undefined4 *)((int)this + 0xcc) = 0x40000000;
  *(char **)((int)this + 0xd4) = "UserTool/UndoableTerrainSculpt/mHtChangeMap";
  *(undefined4 *)((int)this + 0xc4) = 0;
  *(undefined4 *)((int)this + 0xd0) = 0;
  *(undefined4 **)((int)this + 0xbc) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0xc0) = 1;
  *(float *)((int)this + 0xe8) = 1.0;
  *(undefined4 *)((int)this + 0xec) = 0x40000000;
  *(char **)((int)this + 0xf4) = "UserTool/UndoableTerrainSculpt/VertToPondPartMap";
  *(undefined4 *)((int)this + 0xe0) = 1;
  *(undefined4 **)((int)this + 0xdc) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0xe4) = 0;
  *(undefined4 *)((int)this + 0xf0) = 0;
  *(float *)((int)this + 0x108) = 1.0;
  *(undefined4 *)((int)this + 0x10c) = 0;
  *(undefined4 *)((int)this + 0x110) = 0;
  *(undefined4 *)((int)this + 0x114) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(char **)((int)this + 0x120) = "UserTool/UndoableTerrainSculpt/TempEditedTerrainVerts";
  *(undefined4 *)((int)this + 0xb4) = *(undefined4 *)(lot + 0x294);
  iVar1 = *(int *)((int)this + 0xb0);
  if (iVar1 != 0) {
    *(undefined4 *)((int)this + 0xf8) = 1;
    *(undefined4 *)((int)this + 0xfc) = 1;
    *(int *)((int)this + 0x100) = *(int *)(iVar1 + 0x174) + -1;
    *(int *)((int)this + 0x104) = *(int *)(iVar1 + 0x178) + -1;
  }
  return this;
}

