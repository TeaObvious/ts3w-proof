/* Resolves the UInt32 event-ID map at dispatcher+58 and inserts a 20-byte listener record in
   signed-priority order. Map/list allocation and generic helpers remain separate children; no
   rollback or duplicate suppression is established. Analyst-assigned name. */

void __thiscall InsertMessageListenerByPriority(void *this,undefined4 *param_1,uint param_2)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint local_14;
  int iStack_10;
  undefined4 auStack_c [3];

  if (*(char *)((int)this + 0xb0) != '\0') {
    FUN_004e1c00((void *)((int)this + 0x80),(uint *)&DAT_00fa2ac8);
  }
  /* 0044D0A1: Lookup the exact UInt32 event ID in map+58, comparing with its sentinel. Floor registration supplies ID0431BFC9 and the same receiver pointer whose vtable+4 is AA4350. */
  UInt32PairMap_Find((void *)((int)this + 0x58),&local_14,&param_2);
  if (local_14 == *(uint *)(*(int *)((int)this + 0x5c) + *(int *)((int)this + 0x60) * 4)) {
    iStack_10 = (**(code **)(**(int **)((int)this + 8) + 8))(0x14,"Services/EAMessage/List",0);
    if (iStack_10 != 0) {
      *(undefined4 *)(iStack_10 + 8) = *(undefined4 *)((int)this + 8);
      *(undefined4 *)(iStack_10 + 0xc) = 0;
      *(char **)(iStack_10 + 0x10) = "Services/EAMessage/List";
      *(int *)iStack_10 = iStack_10;
      *(int *)(iStack_10 + 4) = iStack_10;
    }
    FUN_0044c9d0(iStack_10);
    local_14 = param_2;
    param_2 = param_2 & 0xffffff00;
    FUN_0058a130((void *)((int)this + 0x58),auStack_c,&local_14);
  }
  else {
    /* 0044D12E: Existing-list insertion compares record priority as signed Int32. The listener payload is 20 bytes; node size is 1Ch including links. Allocator-null paths do not provide a safe failure return here. */
    piVar1 = *(int **)(local_14 + 4);
    piVar3 = (int *)*piVar1;
    if (piVar3 != piVar1) {
      do {
        if (piVar3[3] <= (int)param_1[1]) {
          FUN_0044cbc0((int)piVar1);
          if (piVar3 != piVar1) goto LAB_0044d19c;
          break;
        }
        piVar3 = (int *)*piVar3;
      } while (piVar3 != piVar1);
    }
    puVar2 = (undefined4 *)(**(code **)(*(int *)piVar1[2] + 8))(0x1c,piVar1[4],piVar1[3]);
    if (puVar2 + 2 != (undefined4 *)0x0) {
      puVar2[2] = *param_1;
      puVar2[3] = param_1[1];
      puVar2[4] = param_1[2];
      puVar2[5] = param_1[3];
      puVar2[6] = param_1[4];
    }
    *puVar2 = piVar3;
    puVar2[1] = piVar3[1];
    *(undefined4 **)piVar3[1] = puVar2;
    piVar3[1] = (int)puVar2;
  }
LAB_0044d19c:
  if (*(char *)((int)this + 0xb0) != '\0') {
    FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x80));
  }
  return;
}
