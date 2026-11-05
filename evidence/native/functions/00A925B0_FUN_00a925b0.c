/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Analyst role: Pending floor cell refresh and removal; descriptive label, not recovered original symbol.
   ECX manager plus packed three-byte cell, RET4 void. A8E850 selects equal pending location. If found, callsA913D0 with a copied fullmask0F and arguments0,0,1, THEN removes exactly that three-byte pending record by forward shift and end-=3. If callback fails, later erase is not reached; no rollback/lock guarantee. */



void __thiscall FUN_00a925b0(void *this,char *param_1)

{
  undefined2 *puVar1;
  char *pcVar2;
  undefined2 *puVar3;
  undefined2 *local_8;
  undefined2 *local_4;
  
  pcVar2 = param_1;
  FUN_00a8e850((void *)((int)this + 0xf0),&local_8,param_1);
  if (local_8 == local_4) {
    local_8 = *(undefined2 **)((int)this + 0xf4);
  }
  if (local_8 != *(undefined2 **)((int)this + 0xf4)) {
    param_1 = (char *)CONCAT13(0xf,*(undefined3 *)pcVar2);
    RefreshFloorUpperQuarterFlags(this,(char *)&param_1,0,0,'\x01');
    puVar1 = *(undefined2 **)((int)this + 0xf4);
    puVar3 = (undefined2 *)((int)local_8 + 3);
    if (puVar3 < puVar1) {
      do {
        *local_8 = *puVar3;
        *(undefined1 *)(local_8 + 1) = *(undefined1 *)(puVar3 + 1);
        puVar3 = (undefined2 *)((int)puVar3 + 3);
        local_8 = (undefined2 *)((int)local_8 + 3);
      } while (puVar3 != puVar1);
    }
    *(int *)((int)this + 0xf4) = *(int *)((int)this + 0xf4) + -3;
  }
  return;
}

