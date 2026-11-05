/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static. ECX descriptor row,3words/RET0C, AL success only; prior
   undefined4 inference hid partial-upper EAX. Explicit row write override runs first. Without it
   flag8000 rejects, count mismatch rejects, otherwise address callback or signed16 field offset
   obtains destination. Identical pointer succeeds without copy. Primitive tags copy original
   size*count; string/struct have separate actual paths and low-byte child result checks. Selected
   uint32 tag9/count1 copies4bytes; generic authored preparation can already expose that exact field
   as parse destination. Full switch uses3targetwords+19byte selector map; no following data/padding
   owned as instructions. */

bool __thiscall
NativePropertyDescriptor_Write(void *this,void *context,void *inputValue,void *allocator)

{
  int iVar1;
  short *psVar2;
  undefined1 uVar3;
  undefined4 uVar4;
  int *piVar5;
  int *this_00;
  uint uVar6;
  int local_18;
  int *local_14;
  uint local_10;
  undefined4 uStack_c;
  int *piStack_8;
  undefined4 uStack_4;
  
  piVar5 = *(int **)((int)this + 4);
  if ((piVar5 != (int *)0x0) && (*piVar5 != 0)) {
    uVar3 = (*(code *)*piVar5)(context,inputValue,this,allocator);
    return (bool)uVar3;
  }
  if ((short)*(ushort *)((int)this + 0xc) < 0) {
    return false;
  }
  if (*(uint *)((int)inputValue + 8) != *(uint *)((int)this + 0x10)) {
    return false;
  }
  if ((piVar5 == (int *)0x0) || ((code *)piVar5[2] == (code *)0x0)) {
    local_14 = (int *)((int)*(short *)((int)this + 0xe) + *(int *)((int)context + 4));
    local_18 = *(int *)(&DAT_0114f4f8 + (*(ushort *)((int)this + 0xc) & 0xfff) * 4);
    local_10 = *(uint *)((int)inputValue + 8);
  }
  else {
    (*(code *)piVar5[2])(&local_18,context,this,allocator);
  }
  piVar5 = *(int **)((int)inputValue + 4);
  if (local_14 != piVar5) {
    iVar1 = *(int *)(local_18 + 8);
    switch(*(ushort *)((int)this + 0xc) & 0xfff) {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 0xb:
    case 0xc:
    case 0xd:
    case 0xe:
    case 0xf:
    case 0x10:
    case 0x11:
    case 0x13:
      memcpy(local_14,piVar5,iVar1 * local_10);
      break;
    case 0x12:
      uVar6 = 0;
      this_00 = local_14;
      if (local_10 != 0) {
        do {
          psVar2 = (short *)*piVar5;
          if (psVar2 == (short *)0x0) {
            NativeUtf16String_Clear(this_00);
          }
          else if (psVar2 != (short *)*this_00) {
            FUN_00408f50(this_00,psVar2);
          }
          uVar6 = uVar6 + 1;
          piVar5 = piVar5 + 1;
          this_00 = this_00 + 4;
        } while (uVar6 < local_10);
        return true;
      }
      break;
    case 0x14:
      uStack_c = *(undefined4 *)inputValue;
      uStack_4 = *(undefined4 *)((int)inputValue + 8);
      uVar6 = 0;
      piStack_8 = piVar5;
      if (local_10 != 0) {
        do {
          uVar4 = NativeStructProperty_WriteFields(&local_18,(int)&uStack_c,allocator);
          if ((char)uVar4 == '\0') {
            return false;
          }
          piStack_8 = (int *)((int)piStack_8 + iVar1);
          local_14 = (int *)((int)local_14 + iVar1);
          uVar6 = uVar6 + 1;
        } while (uVar6 < local_10);
        return true;
      }
      break;
    default:
      return false;
    }
  }
  return true;
}

