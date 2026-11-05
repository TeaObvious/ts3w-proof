/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_007db930. ECX adapter plus stream and option DWORD stack inputs. Only attach
   while state+48=0 and stream nonzero. Store stream; if reader+8 absent, allocate/construct reader;
   clear element-tracking state and move adapter state to1 on admitted path. Result is low AL
   success; inferred upper bits are not contract. Underlying scanner allocation/error policy is not
   inferred from adapter calls. */

uint __thiscall XmlStreamAdapter_AttachReader(void *this,int param_1,undefined4 param_2)

{
  uint in_EAX;
  void *pvVar1;
  
  if ((*(int *)((int)this + 0x48) == 0) && (in_EAX = 0, param_1 != 0)) {
    if (*(int *)((int)this + 8) == 0) {
      *(int *)((int)this + 0x44) = param_1;
      pvVar1 = (void *)FUN_004e4500(0x8c,"Services/XML Reader",0);
      if (pvVar1 == (void *)0x0) {
        pvVar1 = (void *)0x0;
      }
      else {
        pvVar1 = FUN_004718b0(pvVar1,*(int **)((int)this + 0x44),param_2,0);
      }
      *(void **)((int)this + 8) = pvVar1;
    }
    FUN_007db4a0(*(int *)((int)this + 0x28),*(uint *)((int)this + 0x2c));
    *(undefined4 *)((int)this + 0x30) = 0;
    in_EAX = 1;
    if ((*(int *)((int)this + 0x48) != 1) || (*(int *)(*(int *)((int)this + 8) + 8) == 0)) {
      *(undefined4 *)((int)this + 0x48) = 1;
      return in_EAX;
    }
  }
  return in_EAX & 0xffffff00;
}

