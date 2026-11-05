/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Actual ECX receiver and three stackDWORDs(owner-low,owner-high,texture)/RET0xC; stored prototype
   declares only two stack parameters and remains unchanged. Lookup owner pair, query
   interface017F1D88, allocate12bytes Renderer/VideoFixupLOD.006FE4BB reads actual third texture
   word from[ESP+20] for00725490. Calls component virtual+80(fixup,opaque8-byte identifier
   at00FFAF2C), then006DCC00(component+210). Unselected helpers define their own semantics; AL1 can
   follow null fixup and does not prove resource publication. Sets AL only despite stored undefined4
   return. Preserve body/prototype/storage/CC. */

undefined4 __thiscall ObjectRenderer_ApplyVideoTextureOverride(void *this,uint param_1,int *param_2)

{
  int *piVar1;
  void *this_00;
  int *piVar2;
  undefined4 extraout_EAX;
  undefined4 uVar3;
  uint uVar4;
  int *piVar5;
  uint local_8;
  int *local_4;
  
  local_8 = param_1;
  local_4 = param_2;
  RenderGuidMap_FindIterator((void *)((int)this + 4),&param_1,(byte *)&local_8);
  uVar4 = param_1;
  if (((param_1 != *(uint *)((int)this + 0x1028)) && (param_1 != 0)) &&
     ((int *)(param_1 - 8) != (int *)0x0)) {
    piVar1 = (int *)(**(code **)(*(int *)(param_1 - 8) + 0xc))(0x17f1d88);
    uVar4 = 0;
    if (piVar1 != (int *)0x0) {
      this_00 = (void *)FUN_004e4520(0xc,4,0,"Renderer/VideoFixupLOD",0);
      piVar5 = (int *)0x0;
      if (this_00 != (void *)0x0) {
        piVar2 = FUN_00725490(this_00,param_2);
        if (piVar2 != (int *)0x0) {
          (**(code **)*piVar2)();
          piVar5 = piVar2;
        }
      }
      (**(code **)(*piVar1 + 0x80))(piVar5,&DAT_00ffaf2c);
      ModelBinding_ApplyMaterialToAvailableLod(piVar1 + 0x84);
      uVar3 = extraout_EAX;
      if (piVar5 != (int *)0x0) {
        uVar3 = (**(code **)(*piVar5 + 4))();
      }
      return CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
  }
  return uVar4 & 0xffffff00;
}

