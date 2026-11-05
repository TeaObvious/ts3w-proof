/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(inputStream,outputStream,manifestOnlyByte).
   Save output position; read length-prefixed header into capacity8 buffer with native-endian flag1
   and compare TS3Pack. Bounded string truncation means this comparison alone does NOT require
   declared length7. Read two version bytes and UInt32 manifest length; no explicit version
   validation here. If manifestOnly is zero, write header, versions and length. Copy nonzero
   manifest length only when <= input virtual+2C available bytes. Rewind output to saved position,
   return AL true. Zero/oversized length skips manifest copy without false return in this leaf.
   Virtual-call stack recovery can still distort decompiled locals; original pushes and helper
   prototypes control arguments. */

bool __cdecl Sims3Pack_CopyHeaderAndManifest(void *inputStream,void *outputStream,byte manifestOnly)

{
  void *arg0;
  uint arg1;
  int iVar1;
  uint uVar2;
  void *arg1_00;
  byte bStack_d;
  uint uStack_c;
  byte abStack_8 [8];
  
  arg0 = outputStream;
                    /* Instruction-verified stream virtual-call ABI: Stream_Position; ECX receiver,
                       1 stack arguments. Concrete virtual target is separate evidence. */
  arg1 = (**(code **)(*(int *)outputStream + 0x24))(outputStream,0);
  abStack_8[0] = 0;
  abStack_8[1] = 0;
  abStack_8[2] = 0;
  abStack_8[3] = 0;
  abStack_8[4] = 0;
  abStack_8[5] = 0;
  abStack_8[6] = 0;
  abStack_8[7] = 0;
  Stream_ReadLengthPrefixedBytes(inputStream,abStack_8,8,1);
  iVar1 = FUN_004fe6e0((byte *)"TS3Pack",abStack_8);
  if (iVar1 != 0) {
    return false;
  }
  Stream_ReadByte(inputStream,(byte *)&outputStream);
  Stream_ReadByte(inputStream,&bStack_d);
  Stream_ReadUInt32(inputStream,&uStack_c,1);
                    /* Instruction-verified stream virtual-call ABI: Stream_Position; ECX receiver,
                       1 stack arguments. Concrete virtual target is separate evidence. */
  (**(code **)(*(int *)arg0 + 0x24))(arg0,0);
  if (manifestOnly == 0) {
    FUN_004de1d0(arg0,"TS3Pack",7,1);
                    /* Instruction-verified stream virtual-call ABI: Stream_Write; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    (**(code **)(*(int *)arg0 + 0x38))(arg0,&outputStream,1);
                    /* Instruction-verified stream virtual-call ABI: Stream_Write; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    (**(code **)(*(int *)arg0 + 0x38))(arg0,&bStack_d,1);
                    /* Instruction-verified stream virtual-call ABI: Stream_Write; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
    (**(code **)(*(int *)arg0 + 0x38))(arg0,&uStack_c,4);
  }
  if (uStack_c != 0) {
                    /* Instruction-verified stream virtual-call ABI: Stream_Available; ECX receiver,
                       0 stack arguments. Concrete virtual target is separate evidence. */
    uVar2 = (**(code **)(*(int *)inputStream + 0x2c))(inputStream);
    if (uStack_c <= uVar2) {
      arg1_00 = (void *)FUN_004e4500(uStack_c,"Scratch/DownloadContent/Sims3PackFile/pManifestData",
                                     0);
                    /* Instruction-verified stream virtual-call ABI: Stream_Read; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
      (**(code **)(*(int *)inputStream + 0x30))(inputStream,arg1_00,uStack_c);
                    /* Instruction-verified stream virtual-call ABI: Stream_Write; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
      (**(code **)(*(int *)arg0 + 0x38))(arg0,arg1_00,uStack_c);
      Memory_FreeIfNonNull(arg1_00);
    }
  }
                    /* Instruction-verified stream virtual-call ABI: Stream_Position; ECX receiver,
                       1 stack arguments. Concrete virtual target is separate evidence. */
  (**(code **)(*(int *)arg0 + 0x24))(arg0,0);
                    /* Instruction-verified stream virtual-call ABI: Stream_Seek; ECX receiver, 2
                       stack arguments. Concrete virtual target is separate evidence. */
  (**(code **)(*(int *)arg0 + 0x28))(arg0,arg1,0);
  return true;
}

