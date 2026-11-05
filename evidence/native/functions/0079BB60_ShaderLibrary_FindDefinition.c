/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: lookup of a shader definition by 32-bit key and mode. If found, it may resolve deferred
   stages. If absent and fallback is allowed, it retries once with key 0xa2a9b074, the original
   lowercased FNV-1 hash of shadererror, and mode 0. The negative signed decompiler literal is the
   same 32-bit bit pattern. */

void * __thiscall
ShaderLibrary_FindDefinition(void *this,int param_1,undefined4 param_2,char param_3)

{
  void *this_00;
  char cVar1;
  int *piVar2;
  void *pvVar3;
  int local_18;
  undefined4 local_14;
  undefined4 local_10 [3];
  
  while( true ) {
    local_18 = param_1;
    local_14 = param_2;
    piVar2 = (int *)FUN_0079b5e0((void *)((int)this + 0x50),local_10,&local_18);
    if ((*piVar2 != *(int *)(*(int *)((int)this + 0x54) + *(int *)((int)this + 0x58) * 4)) &&
       (this_00 = *(void **)(*piVar2 + 8), this_00 != (void *)0x0)) {
      if ((*(char *)((int)this + 0x4a) != '\0') &&
         (cVar1 = FUN_00cd7450((int)this_00), cVar1 == '\0')) {
        if (*(char *)((int)this + 0x49) == '\0') {
          pvVar3 = (void *)**(undefined4 **)((int)this + 0x4c);
        }
        else {
          pvVar3 = (void *)0x0;
        }
        FUN_0079a940(this_00,pvVar3,*(void **)(*(int *)((int)this + 0x4c) + 4));
      }
      return this_00;
    }
    if (param_1 == -0x5d564f8c) {
      return (void *)0x0;
    }
    if (param_3 == '\0') break;
    param_3 = '\0';
    param_2 = 0;
    param_1 = -0x5d564f8c;
  }
  return (void *)0x0;
}

