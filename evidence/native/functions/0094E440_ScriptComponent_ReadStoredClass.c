/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX component and three stack words, RET0C. Read
   native byte-string propertyBE0E9060. Normal path assigns string at component+10; alternate path
   sets flag+20 and clears it if comparator succeeds. Missing name still returnsAL1. Current
   metadata string read is a projection; it does not implement original component flags or class
   instantiation. */

undefined4 __thiscall
ScriptComponent_ReadStoredClass(void *this,void *param_1,undefined4 param_2,char param_3)

{
  char cVar1;
  undefined4 uVar2;
  undefined1 *extraout_EAX;
  undefined1 *allocation;
  undefined *puVar3;
  undefined1 *local_20;
  undefined1 *local_1c;
  undefined *local_18;
  char *local_14;
  undefined1 *local_10;
  undefined1 *local_c;
  undefined *local_8;
  char *local_4;
  
  if (param_3 == '\0') {
    local_14 = "Objects/ScriptComponent";
    local_20 = &DAT_011c8e54;
    local_1c = &DAT_011c8e54;
    local_18 = &DAT_011c8e55;
    cVar1 = NativePropertyStream_ReadByteString(param_1,0xbe0e9060,&local_20);
    allocation = local_20;
    puVar3 = local_18;
    if ((cVar1 != '\0') && (&local_20 != (undefined1 **)((int)this + 0x10))) {
      FUN_00405910((undefined1 **)((int)this + 0x10),local_20,local_1c);
      allocation = local_20;
      puVar3 = local_18;
    }
  }
  else {
    local_10 = &DAT_011c8e54;
    local_c = &DAT_011c8e54;
    *(undefined1 *)((int)this + 0x20) = 1;
    local_4 = "Objects/ScriptComponent";
    local_8 = &DAT_011c8e55;
    cVar1 = NativePropertyStream_ReadByteString(param_1,0xbe0e9060,&local_10);
    allocation = local_10;
    puVar3 = local_8;
    if ((cVar1 != '\0') &&
       (uVar2 = FUN_00d72620((undefined4 *)((int)this + 0x10),&local_10), allocation = local_10,
       puVar3 = local_8, (char)uVar2 != '\0')) {
      *(undefined1 *)((int)this + 0x20) = 0;
    }
  }
  if ((1 < (int)puVar3 - (int)allocation) && (allocation != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(allocation);
    allocation = extraout_EAX;
  }
  return CONCAT31((int3)((uint)allocation >> 8),1);
}

