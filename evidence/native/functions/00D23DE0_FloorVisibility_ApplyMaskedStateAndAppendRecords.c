/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 floor geometry preparation comparison.
   For four mask bits in tile record byte3, queries the floor manager reached through bound
   lot+0x290. If queried low-byte state differs from desired argument, calls
   LotTile_ChangeStateAndEmitMessage A96920, then appends a packed five-byte tile/quarter plus
   DESIRED-state record, growing storage through D23C90 when needed.
   Physical ECX receiver plus tile pointer and low-byte desired state, RET8. Appended records hold
   the desired state, not a claimed old state. Native manager state-bit meaning, undo replay,
   synchronization, event child effects and allocation failures remain bounded; no extra transaction
   or current registry equivalence is promised.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

void __thiscall
FloorVisibility_ApplyMaskedStateAndAppendRecords(void *this,undefined3 *param_1,char param_2)

{
  void *this_00;
  undefined4 *puVar1;
  char cVar2;
  undefined2 uVar3;
  byte bVar4;
  bool bVar5;
  byte bVar6;
  undefined1 uStack0000000a;
  undefined1 uStack0000000b;
  int local_c;
  undefined2 local_8;
  undefined1 local_6;
  undefined1 local_5;
  char local_4;
  
  cVar2 = param_2;
  this_00 = *(void **)(*(int *)((int)this + 0x50) + 0x290);
  bVar6 = 0;
  local_c = 4;
  do {
    bVar4 = '\x01' << (bVar6 & 0x1f);
    if ((*(byte *)((int)param_1 + 3) & bVar4) != 0) {
      _param_2 = CONCAT13(bVar4,*param_1);
      bVar5 = FloorManager_TileHasAnyRequestedFlag(this_00,&param_2);
      if (bVar5 != (bool)cVar2) {
        uVar3 = _param_2;
        local_6 = uStack0000000a;
        local_8 = _param_2;
        local_5 = uStack0000000b;
        local_4 = cVar2;
        LotTile_ChangeStateAndEmitMessage(this_00,cVar2,(int *)&param_2);
        puVar1 = *(undefined4 **)((int)this + 0x58);
        if (puVar1 < *(undefined4 **)((int)this + 0x5c)) {
          *(int *)((int)this + 0x58) = (int)puVar1 + 5;
          if (puVar1 != (undefined4 *)0x0) {
            *(undefined2 *)puVar1 = uVar3;
            *(undefined1 *)((int)puVar1 + 2) = local_6;
            *(undefined1 *)((int)puVar1 + 3) = local_5;
            *(char *)(puVar1 + 1) = cVar2;
          }
        }
        else {
          FUN_00d23c90((void *)((int)this + 0x54),puVar1,(undefined4 *)&local_8);
        }
      }
    }
    bVar6 = bVar6 + 1;
    local_c = local_c + -1;
  } while (local_c != 0);
  return;
}

