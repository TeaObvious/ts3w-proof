/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,name and output pointer RET8. Original
   XOR FFF75A95, seek encoded entry, allocate34-byte retained child with native fields/map defaults,
   open child on shared parent stream and publish output only on success, release temporary retain
   on failure. Current independent array view/null return does not model native retains or shared
   stream cursor. */

undefined4 __thiscall
NativePropertyStream_OpenChild(void *this,undefined4 param_1,undefined4 *param_2)

{
  float fVar1;
  uint uVar2;
  undefined4 *this_00;
  undefined4 uVar3;
  int iVar4;
  
  uVar2 = NativePropertyStream_SeekEncodedEntry((int)this);
  if ((char)uVar2 != '\0') {
    this_00 = (undefined4 *)FUN_004e4500(0x34,"Services/PropertyStreamReader",0);
    fVar1 = FLOAT_00f998f8;
    uVar2 = 0;
    if (this_00 != (undefined4 *)0x0) {
      this_00[1] = 0;
      *this_00 = &PTR_FUN_0101b2e8;
      this_00[2] = 0;
      this_00[3] = 0xffffffff;
      this_00[4] = 0xffffffff;
      this_00[9] = fVar1;
      this_00[10] = DAT_0103fd88;
      this_00[0xc] = "Services/PropertyStreamReader/Entries";
      this_00[7] = 1;
      this_00[6] = &DAT_0114d900;
      this_00[8] = 0;
      this_00[0xb] = 0;
      this_00[1] = this_00[1] + 1;
      uVar3 = NativePropertyStream_OpenIndex(this_00,*(void **)((int)this + 8));
      if ((char)uVar3 != '\0') {
        this_00[1] = this_00[1] + 1;
        *param_2 = this_00;
        iVar4 = this_00[1] + -1;
        this_00[1] = iVar4;
        if (iVar4 == 0) {
          this_00[1] = 1;
          iVar4 = (**(code **)*this_00)(1);
        }
        return CONCAT31((int3)((uint)iVar4 >> 8),1);
      }
      uVar2 = this_00[1] - 1;
      this_00[1] = uVar2;
      if (uVar2 == 0) {
        this_00[1] = 1;
        uVar2 = (**(code **)*this_00)(1);
      }
    }
  }
  return uVar2 & 0xffffff00;
}

