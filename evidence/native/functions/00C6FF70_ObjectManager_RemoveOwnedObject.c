/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECXmanager+objectpointer/flag two stackDWORDs RET8, void.
   Requires actual object currentmanager == this, then exact pointer in manager vector before
   removal. Erases vector and GUID-owned maps, clears objectmanager pointer, atomically drops this
   manager reference and destroys only at lastreference; optional lowbyteflag removes globalregistry
   GUID. ACD130 passes flag0 on failed tile admission. Thus source/membership identity gates
   removal; not unconditional cleanup by GUID alone. */

void __thiscall ObjectManager_RemoveOwnedObject(void *this,undefined4 *param_1,char param_2)

{
  int iVar1;
  int *piVar2;
  ulonglong guid;
  void *pvVar3;
  int *piVar4;
  uint local_8;
  undefined4 local_4;
  
  pvVar3 = (void *)FUN_0068f130((int)param_1);
  if ((pvVar3 != (void *)0x0) && (pvVar3 == this)) {
    piVar2 = *(int **)((int)this + 0x18);
    piVar4 = *(int **)((int)this + 0x14);
    if (piVar4 != piVar2) {
      do {
        if ((undefined4 *)*piVar4 == param_1) break;
        piVar4 = piVar4 + 1;
      } while (piVar4 != piVar2);
      if (piVar4 != piVar2) {
        local_8 = (uint)*(ulonglong *)(param_1 + 2);
        local_4 = param_1[3];
        guid = *(ulonglong *)(param_1 + 2);
        FUN_00c6f0f0((void *)((int)this + 0x14),piVar4);
        FUN_00c6fda0((void *)((int)this + 0x24),&local_8);
        FUN_00c6fe50((void *)((int)this + 0x7c),&local_8);
        FUN_00934250(param_1,0);
        piVar2 = param_1 + 1;
        LOCK();
        iVar1 = *piVar2;
        *piVar2 = *piVar2 + -1;
        UNLOCK();
        if (iVar1 == 1) {
          LOCK();
          *piVar2 = 1;
          UNLOCK();
          (**(code **)*param_1)(1);
        }
        if (param_2 != '\0') {
          pvVar3 = ObjectRegistry_GetGlobal();
          ObjectRegistry_RemoveGuid(pvVar3,guid);
        }
      }
    }
  }
  return;
}

