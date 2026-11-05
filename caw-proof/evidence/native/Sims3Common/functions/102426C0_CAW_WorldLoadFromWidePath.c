/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 internal world-load helper reached from WorldWrap_Load at 0x10997BD0. It rejects
   null/empty UTF-16 path, prepares path-dependent state, calls resource-stage helpers including
   0x102377D0 and 0x10238CC0, then returns a byte success flag. The wrapper normalizes that byte to
   int 0/1. Sidecar ownership, failure rollback and full DBPF parsing require following the
   subordinate calls; this plate is limited to this call path. */

char __thiscall CAW_WorldLoadFromWidePath(void *this,wchar_t *param_1)

{
  wchar_t wVar1;
  char cVar2;
  void *this_00;
  wchar_t *pwVar3;
  uint uVar4;
  
  if ((param_1 != (wchar_t *)0x0) && (*param_1 != L'\0')) {
    cVar2 = '\0';
    *(undefined4 *)((int)this + 0x1b4) = 0;
    this_00 = (void *)FUN_100f8460();
    if (this_00 != (void *)0x0) {
      FUN_100f8be0(this_00,'\0');
    }
    wVar1 = *param_1;
    pwVar3 = param_1;
    while (wVar1 != L'\0') {
      pwVar3 = pwVar3 + 1;
      wVar1 = *pwVar3;
    }
    FUN_1001f8c0((void *)((int)this + 0xf0),param_1,
                 (int *)(param_1 + ((int)pwVar3 - (int)param_1 >> 1)));
    FUN_102342d0((int)this);
    uVar4 = FUN_102377d0(param_1,(uint *)((int)this + 0x80),1,6);
    if ((char)uVar4 != '\0') {
      FUN_1000c350((DWORD *)&DAT_10c701f8);
      cVar2 = FUN_10238cc0('\x01',this,FUN_10241cd0);
      if (cVar2 == '\0') {
        FUN_1023ff20(this);
        return '\0';
      }
    }
    return cVar2;
  }
  return '\0';
}

