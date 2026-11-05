/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXroofmanager +packedcell pointer, RET4 ALbool. Collects roof IDs at SIGNED cell.level-1
   viaB97D00/C02AF0; resolves and retains actual roof object then virtual64hex packedcell support
   predicate. Firsttrue succeeds after releasing references and temporary buffer. Geometric point
   coverage at currentlevel is a separate query; do not substitute it. */

bool __thiscall RoofManager_HasCellSupportBelow(void *this,char *cell)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  uint *puVar4;
  char cVar5;
  undefined4 uVar6;
  uint *puVar7;
  int *local_118;
  uint *local_114;
  uint *local_110;
  uint local_100 [64];
  
  local_114 = local_100;
  local_110 = local_100;
  FUN_00b97d00(this,&local_114,cell[2] + -1,FUN_00c02af0);
  puVar4 = local_110;
  puVar7 = local_114;
  do {
    if (puVar7 == puVar4) {
      if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
        Memory_FreeIfNonNull(local_114);
      }
      return false;
    }
    local_118 = (int *)0x0;
    uVar6 = FUN_00b95b30(this,*puVar7,(int *)&local_118);
    piVar1 = local_118;
    if ((char)uVar6 == '\0') {
      if (local_118 != (int *)0x0) {
        piVar1 = local_118 + 1;
        LOCK();
        iVar3 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar3 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*local_118)(1);
        }
      }
    }
    else if (local_118 != (int *)0x0) {
      cVar5 = (**(code **)(*local_118 + 100))(cell);
      piVar2 = piVar1 + 1;
      if (cVar5 != '\0') {
        LOCK();
        iVar3 = *piVar2;
        *piVar2 = *piVar2 + -1;
        UNLOCK();
        if (iVar3 == 1) {
          LOCK();
          *piVar2 = 1;
          UNLOCK();
          (**(code **)*piVar1)(1);
        }
        if ((local_114 != (uint *)0x0) && (local_114 != local_100)) {
          Memory_FreeIfNonNull(local_114);
        }
        return true;
      }
      LOCK();
      iVar3 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar3 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*piVar1)(1);
      }
    }
    puVar7 = puVar7 + 1;
  } while( true );
}

