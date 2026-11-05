/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67 tomb/diving contract. Tree get/insert by full64GUID; default payload x/z
   float-1,intlevel0. Returns payload node+0x18. Original GUID2word comparisons and initializer word
   layout establish types; red-black allocation mechanics are outside this semantic scope. */

LotXZLevel * __thiscall LotRoomSeedTree_GetOrInsertLocation(void *this,ulonglong *guid)

{
  ulonglong *puVar1;
  ulonglong *puVar2;
  uint local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  
  puVar1 = guid;
  FUN_00d24690(this,(int *)&guid,(uint *)guid);
  puVar2 = guid;
  if ((guid == (ulonglong *)((int)this + 4)) ||
     ((*(uint *)((int)puVar1 + 4) <= *(uint *)((int)guid + 0x14) &&
      ((*(uint *)((int)puVar1 + 4) < *(uint *)((int)guid + 0x14) || ((uint)*puVar1 < (uint)guid[2]))
      )))) {
    local_18 = (uint)*puVar1;
    local_14 = *(undefined4 *)((int)puVar1 + 4);
    local_10 = DAT_00fab218;
    local_c = DAT_00fab218;
    local_8 = 0;
    guid = (ulonglong *)((uint)guid & 0xffffff00);
    FUN_00c04b90(this,&guid,(int *)puVar2,&local_18);
  }
  return (LotXZLevel *)(guid + 3);
}

