/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Normalizes UTF-16 section/key names and queries their
   stored registry maps. Returns AL1 on a hit and writes the borrowed UTF-16 string pointer when the
   output pointer is non-null; returns AL0 on a miss without writing that output. Resource
   initialization uses this raw string getter and directly compares the value with L"1", rather than
   parsing a boolean. Registry inheritance is resolved by the INI loader, not by this query.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

bool __thiscall
CAW_ConfigRegistryGetRawValue(void *this,wchar_t *section,wchar_t *key,wchar_t **value)

{
  int iVar1;
  wchar_t *pwVar2;
  int iVar3;
  int local_2c;
  int local_28 [2];
  wchar_t *local_20;
  undefined4 local_1c;
  int local_18;
  char *local_14;
  int local_10 [3];
  char *local_4;
  
  local_10[0] = 0;
  local_10[1] = 0;
  local_10[2] = 0;
  local_4 = "Services/ConfigRegistry";
  FUN_1006a620(local_10,section);
  FUN_103230f0(local_10);
  iVar3 = local_10[0];
  local_2c = local_10[0];
  FUN_10389c80((void *)((int)this + 4),local_28,&local_2c);
  iVar1 = local_28[0];
  if (local_28[0] != *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    local_20 = (wchar_t *)0x0;
    local_1c = 0;
    local_18 = 0;
    local_14 = "Services/ConfigRegistry";
    FUN_1006a620(&local_20,key);
    FUN_103230f0(&local_20);
    pwVar2 = local_20;
    key = local_20;
    FUN_10389d20((void *)(iVar1 + 0x10),local_28,&key);
    if (local_28[0] != *(int *)(*(int *)(iVar1 + 0x14) + *(int *)(iVar1 + 0x18) * 4)) {
      if (value != (wchar_t **)0x0) {
        *value = *(wchar_t **)(local_28[0] + 0x10);
      }
      if ((2 < (int)(local_18 - (int)pwVar2 & 0xfffffffeU)) && (pwVar2 != (wchar_t *)0x0)) {
        FUN_10918e90((int)pwVar2);
      }
      if ((2 < (int)(local_10[2] - iVar3 & 0xfffffffeU)) && (iVar3 != 0)) {
        FUN_10918e90(iVar3);
      }
      return true;
    }
    if ((2 < (int)(local_18 - (int)pwVar2 & 0xfffffffeU)) && (pwVar2 != (wchar_t *)0x0)) {
      FUN_10918e90((int)pwVar2);
    }
  }
  if ((2 < (int)(local_10[2] - iVar3 & 0xfffffffeU)) && (iVar3 != 0)) {
    FUN_10918e90(iVar3);
  }
  return false;
}

