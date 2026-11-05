/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Builds a resource-type filter, enumerates matching keys via
   database virtual +30 and uses the first key to open the resource when any match exists. Empty
   enumeration returns false. Three cdecl arguments are database, type and resource-output pointer,
   verified by caller pushes and ADD ESP,0xC at 0x105CC2E5. Manager call uses first key-list
   pointer, count one and argument six. Decompiled indirect-call cleanup expressions have
   register/stack artifacts; original selection instructions govern ordering. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

bool __cdecl CAW_DatabaseOpenFirstResourceOfType(int *database,uint type,void **resourceOutput)

{
  undefined1 uVar1;
  int iVar2;
  int *piVar3;
  undefined **local_18;
  uint local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_14 = type;
  local_18 = &PTR_LAB_10ab5a24;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = "ResourceSystem/Utility/TempKeyList";
  iVar2 = (**(code **)(*database + 0x30))(&local_10,&local_18);
  if (iVar2 == 0) {
    if (local_18 != (undefined **)0x0) {
      FUN_10918e90((int)local_18);
    }
    return false;
  }
  piVar3 = (int *)FUN_105219c0();
  uVar1 = (**(code **)(*piVar3 + 4))(local_18,database,database,1);
  FUN_10918e90(6);
  return (bool)uVar1;
}

