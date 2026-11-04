/* Binds the attached renderer owner, saves the current dispatcher and registers 18 IDs from
   010649B8, including 0431BFC9. Listener pointer is this, retain flag 0, ordering word 0. It does
   not set receiver enabled byte +70. Analyst-assigned name. */

undefined4 __thiscall BindFloorMessageOwnerAndRegister(void *this,int param_1)

{
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uVar3;
  uint uVar4;

  *(undefined1 *)((int)this + 4) = 1;
  /* 00AA064B: Attached renderer owner is stored at receiver +8. AA4350 later compares message +8/+C against this attached record +10/+14; identity requires the actual copied values, not equal field names. */
  *(int *)((int)this + 8) = param_1;
  *(undefined4 *)((int)this + 0xc) = *(undefined4 *)(param_1 + 0x68);
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)(param_1 + 0x6c);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)(param_1 + 0x60);
  *(undefined4 *)((int)this + 0x18) = *(undefined4 *)(param_1 + 100);
  DAT_011ec370 = CachedGlobalMask8000_Query();
  puVar1 = (undefined4 *)FUN_00c8b3f0();
  *(undefined4 *)((int)this + 0x20) = *puVar1;
  *(undefined4 *)((int)this + 0x24) = puVar1[1];
  *(undefined4 *)((int)this + 0x28) = puVar1[2];
  *(undefined4 *)((int)this + 0x2c) = puVar1[3];
  piVar2 = (int *)MessageDispatch_GetCurrent();
  *(int **)((int)this + 0x30) = piVar2;
  *(void **)((int)this + 0x34) = this;
  /* 00AA069C: Registration table contains 18 UInt32 IDs; 0431BFC9 is index 2 at 010649C0. Receiver constructor AA3080 installs callback AA4350 at listener vtable +4. */
  *(undefined4 **)((int)this + 0x38) = &DAT_010649b8;
  *(undefined4 *)((int)this + 0x3c) = 0x12;
  *(undefined4 *)((int)this + 0x40) = 0;
  uVar3 = 0;
  if (piVar2 != (int *)0x0) {
    uVar4 = 0;
    do {
      /* 00AA06D3: Virtual +24 receives this listener pointer and the current table ID, with both remaining arguments zero. On this concrete dispatcher it enters 44C640. */
      uVar3 = (**(code **)(*piVar2 + 0x24))(this,*(undefined4 *)((int)&DAT_010649b8 + uVar4),0,0);
      uVar4 = uVar4 + 4;
    } while (uVar4 < 0x48);
  }
  return CONCAT31((int3)((uint)uVar3 >> 8),1);
}
