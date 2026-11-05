/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Manager virtual+88 owns the complete parsed UTF-16 input
   name under the full resource key at+118, replacing an existing key name. This differs from
   type-name registry108E7A90 which rejects conflicting names. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

bool __thiscall
CAW_ResourceManagerRememberKeyName(void *this,ResourceKeyWords *key,wchar_t *inputName)

{
  void *pvVar1;
  undefined2 *puVar2;
  void **this_00;
  void *local_10;
  int *local_c;
  int local_8;
  char *local_4;
  
  FUN_109166c0((LPCRITICAL_SECTION)((int)this + 0x140),(uint *)&DAT_10b87e8c);
  puVar2 = FUN_108e7460((void *)((int)this + 0x118),&key->instanceLow);
  *(char **)(puVar2 + 6) = "ResourceSystem/ResourceMan/Manager";
  local_10 = (void *)0x0;
  local_c = (int *)0x0;
  local_8 = 0;
  local_4 = "ResourceSystem/ResourceMan/String";
  FUN_1006a620(&local_10,inputName);
  this_00 = (void **)FUN_108e7460((void *)((int)this + 0x118),&key->instanceLow);
  pvVar1 = local_10;
  if (&local_10 != this_00) {
    FUN_1001f8c0(this_00,local_10,local_c);
  }
  if ((2 < (int)(local_8 - (int)pvVar1 & 0xfffffffeU)) && (pvVar1 != (void *)0x0)) {
    FUN_10918e90((int)pvVar1);
  }
  FUN_10916780((LPCRITICAL_SECTION)((int)this + 0x140));
  return true;
}

