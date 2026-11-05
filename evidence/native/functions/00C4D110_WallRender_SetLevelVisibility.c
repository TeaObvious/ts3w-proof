/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. ECX wall renderer, signed intlevel and
   visibility lowbyte, RET8. Bounds level relative to owner's signed minimum and container capacity;
   groups0..6 except1,4 get inverse bool at00C38EE0. Posts04ADF667:
   GUID+8/+C,intlevel+10,statebyte+14. Capacity arithmetic is segmented-container ABI, not a simple
   vector length. */

void __thiscall WallRender_SetLevelVisibility(void *this,int level,byte visibleByte)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  
  iVar3 = level - *(int *)(*(int *)((int)this + 4) + 0x68);
  if ((-1 < iVar3) &&
     (iVar3 < (*(int *)((int)this + 0x1d4) - *(int *)((int)this + 0x1d8)) / 0x81c +
              (*(int *)((int)this + 0x1e0) - *(int *)((int)this + 0x1d0) >> 2) * 4 +
              (*(int *)((int)this + 0x1cc) - *(int *)((int)this + 0x1c4)) / 0x81c + -4)) {
    iVar3 = 0;
    do {
      if ((iVar3 != 1) && (iVar3 != 4)) {
        puVar1 = (undefined4 *)FUN_00c4c250(this,level,iVar3);
        FUN_00c38ee0((void *)*puVar1,(uint)(visibleByte == 0));
      }
      iVar3 = iVar3 + 1;
    } while (iVar3 < 7);
    piVar2 = (int *)FUN_007693a0();
    if (piVar2 != (int *)0x0) {
      puVar1 = FloorMessagePool_AcquireStorage();
      if (puVar1 == (undefined4 *)0x0) {
        puVar1 = (undefined4 *)0x0;
      }
      else {
        *puVar1 = &PTR_DestroyPooledFloorMessage_01065f8c;
        LOCK();
        puVar1[1] = 0;
        UNLOCK();
        *puVar1 = &PTR_DestroyPooledFloorMessage_01065f8c;
      }
      iVar3 = *(int *)((int)this + 4);
      puVar1[2] = *(undefined4 *)(iVar3 + 0x10);
      puVar1[3] = *(undefined4 *)(iVar3 + 0x14);
      puVar1[4] = level;
      *(byte *)(puVar1 + 5) = visibleByte;
      (**(code **)(*piVar2 + 0x1c))(0x4adf667,puVar1,0,0);
    }
  }
  return;
}

