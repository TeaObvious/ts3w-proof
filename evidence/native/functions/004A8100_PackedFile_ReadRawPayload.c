/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Bounded role PackedFile_ReadRawPayload: ECX provider plus destination,offset,size; RETC and AL
   result. Provider+2A0 monitor, required open state+1C, buffer or child seek, then4A7860 read. CMP
   EAX,FFFFFFFF at4A8165 is the READ RESULT sentinel, not a row-offset deletion marker. Short/zero
   read count may report success; managed complete-payload checks are explicitly stricter. */

bool __thiscall PackedFile_ReadRawPayload(void *this,void *param_1,int param_2,size_t param_3)

{
  LPCRITICAL_SECTION this_00;
  char cVar1;
  uint uVar2;
  size_t sVar3;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x2a0);
  FUN_004e1c00(this_00,(uint *)&DAT_00fb3508);
  if (*(int *)((int)this + 0x1c) != 0) {
    uVar2 = *(int *)((int)this + 0x25c) + param_2;
    if (*(int *)((int)this + 0x264) == 0) {
      cVar1 = (**(code **)(**(int **)((int)this + 0x260) + 0x28))(uVar2,0);
      if (cVar1 == '\0') goto LAB_004a817a;
    }
    else {
      if (*(uint *)((int)this + 0x268) <= uVar2) goto LAB_004a817a;
      *(uint *)((int)this + 0x26c) = uVar2;
    }
    sVar3 = PackedFile_ReadBytes(this,param_1,param_3);
    FUN_004e1cc0(this_00);
    return sVar3 != 0xffffffff;
  }
LAB_004a817a:
  FUN_004e1cc0(this_00);
  return false;
}

