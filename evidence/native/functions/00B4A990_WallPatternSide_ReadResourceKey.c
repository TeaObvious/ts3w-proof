/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX side owner; directed locator stack word, RET4. Initializes ordinal low word0; an existing
   section selects its UInt16 side ordinal through C45040. Calls B49F20 for all ordinal values,
   substitutes address011ED1B8 only for a null key pointer. Runtime contents/initialization of that
   virtual-zero-fill global are not established. */

undefined4 * __thiscall WallPatternSide_ReadResourceKey(void *this,char *param_1)

{
  bool bVar1;
  undefined4 *puVar2;
  uint local_c;
  char local_8;
  char local_7;
  char local_6;
  char local_5;
  char local_4;
  char local_3;
  
  local_8 = -1;
  local_7 = -1;
  local_5 = -1;
  local_4 = -1;
  local_c = 0;
  local_6 = '\0';
  local_3 = '\0';
  FUN_00b47d40(this,param_1,(undefined4 *)&local_8);
  puVar2 = (undefined4 *)FUN_00c418d0(*(void **)((int)this + 100),param_1);
  if (puVar2 != (undefined4 *)0x0) {
    if ((((param_1[2] == local_6) && (*param_1 == local_8)) && (param_1[1] == local_7)) &&
       (((param_1[5] == local_3 && (param_1[3] == local_5)) && (param_1[4] == local_4)))) {
      bVar1 = true;
    }
    else {
      bVar1 = false;
    }
    local_c = WallSideTable_GetOrdinal(*(void **)((int)this + 0x6c),*puVar2,(uint)!bVar1);
    local_c = local_c & 0xffff;
  }
  puVar2 = (undefined4 *)WallPatternSide_ResolveOrdinalKey(this,(ushort *)&local_c);
  if (puVar2 == (undefined4 *)0x0) {
    puVar2 = &DAT_011ed1b8;
  }
  return puVar2;
}

