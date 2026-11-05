/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Global resource-manager vtable 0x10B18F10 slot +98. Locks
   +140 and inserts the type-to-name association into owned TNMap +F0 when absent, copying the
   UTF-16 name. For an existing type, 0x1087D770 compares UTF-16 length and bytes and returns true
   only for an identical name; a conflicting registration returns false without replacing the name.
   This API proves registration support, not a fixed built-in extension table. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

uint __thiscall CAW_ResourceManagerRegisterTypeName(void *this,undefined4 param_1,byte *param_2)

{
  LPCRITICAL_SECTION this_00;
  undefined2 *puVar1;
  void **this_01;
  LONG LVar2;
  undefined4 uVar3;
  void *pvVar4;
  void *local_10;
  int *local_c;
  int local_8;
  char *local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x140);
  FUN_109166c0(this_00,(uint *)&DAT_10b87e8c);
  pvVar4 = (void *)((int)this + 0xf0);
  FUN_10723050(pvVar4,&local_10,&param_1);
  if (local_10 == *(void **)(*(int *)((int)this + 0xf4) + *(int *)((int)this + 0xf8) * 4)) {
    puVar1 = FUN_108e73b0(pvVar4,&param_1);
    *(char **)(puVar1 + 6) = "ResourceSystem/ResourceMan/Manager";
    local_10 = (void *)0x0;
    local_c = (int *)0x0;
    local_8 = 0;
    local_4 = "ResourceSystem/ResourceMan/String";
    FUN_1006a620(&local_10,(short *)param_2);
    this_01 = (void **)FUN_108e73b0(pvVar4,&param_1);
    pvVar4 = local_10;
    if (&local_10 != this_01) {
      FUN_1001f8c0(this_01,local_10,local_c);
    }
    if ((2 < (int)(local_8 - (int)pvVar4 & 0xfffffffeU)) && (pvVar4 != (void *)0x0)) {
      FUN_10918e90((int)pvVar4);
    }
    LVar2 = FUN_10916780(this_00);
    return CONCAT31((int3)((uint)LVar2 >> 8),1);
  }
  uVar3 = CAW_Utf16OwnedStringEquals((undefined4 *)((int)local_10 + 4),param_2);
  LVar2 = FUN_10916780(this_00);
  return CONCAT31((int3)((uint)LVar2 >> 8),(char)uVar3);
}

