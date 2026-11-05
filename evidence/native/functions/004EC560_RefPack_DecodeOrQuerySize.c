/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Bounded role RefPack_DecodeOrQuerySize: ECX unused by this body; five physical stack DWORDs with
   RET14, fifth ignored. Header mask1FFF==10FB;3/4-byte BE declared size. Null output returns
   declared size, otherwise capacity check then4EB900. The __stdcall signature has an opaque ignored
   fifth UInt32 word at stack+14. Both query and decode calls pass1 there; this body does not read
   that word. */

uint RefPack_DecodeOrQuerySize
               (ushort *param_1,uint param_2,byte *param_3,uint param_4,uint ignoredWord5)

{
  ushort uVar1;
  uint uVar2;
  
  uVar1 = *param_1;
  if ((CONCAT11((char)uVar1,(char)(uVar1 >> 8)) & 0x1fff) == 0x10fb) {
    uVar2 = ReadBigEndianUnsignedWord((uint *)(param_1 + 1),4 - (uint)((uVar1 & 0x80) != 0x80));
    if (param_3 == (byte *)0x0) {
      return uVar2;
    }
    if (uVar2 <= param_4) {
      uVar2 = RefPack_ExpandCommands(param_3,param_4,(byte *)param_1,param_2);
      return uVar2;
    }
  }
  return 0xffffffff;
}

