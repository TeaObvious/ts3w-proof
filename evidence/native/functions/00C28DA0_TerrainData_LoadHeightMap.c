/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. onlyIfReloadable && !this+1c refuses. Opens database
   resource owner, stores+1c=0/+1d=argument, allocates100-byte HeightMap with constructor00aa6bc0
   into+8, increments object+4, selects resource type2ad195f2, and invokes00aa6c30 with selector7.
   Successful resource scope sets+20 and returns trueAL. A false result need not imply+8 isnull;
   original allocation-null path is not guarded before refcount access. */

bool __thiscall
TerrainData_LoadHeightMap(void *this,void *database,uint streamMode,bool onlyIfReloadable)

{
  char cVar1;
  bool bVar2;
  void *pvVar3;
  undefined1 local_18 [8];
  void *local_10;
  char local_4;
  
  if ((onlyIfReloadable) && (*(char *)((int)this + 0x1c) == '\0')) {
    return false;
  }
  FUN_007d7920(local_18,database,streamMode);
  *(undefined1 *)((int)this + 0x1c) = 0;
  *(bool *)((int)this + 0x1d) = onlyIfReloadable;
  pvVar3 = (void *)FUN_004e4500(100,"Terrain/TerrainData/HeightMap",0);
  if (pvVar3 == (void *)0x0) {
    pvVar3 = (void *)0x0;
  }
  else {
    pvVar3 = HeightMap_Construct(pvVar3);
  }
  *(void **)((int)this + 8) = pvVar3;
  LOCK();
  *(int *)((int)pvVar3 + 4) = *(int *)((int)pvVar3 + 4) + 1;
  UNLOCK();
  cVar1 = FUN_007d9410(local_18,0x2ad195f2);
  if (cVar1 != '\0') {
    bVar2 = HeightMap_ReadSamplePayload(*(void **)((int)this + 8),local_10,streamMode,7);
    if (bVar2) {
      FUN_007d7a70((int)local_18);
      if (local_4 != '\0') {
        *(undefined1 *)((int)this + 0x20) = 1;
        FUN_007d7990((int)local_18);
        return true;
      }
    }
  }
  FUN_007d7990((int)local_18);
  return false;
}

