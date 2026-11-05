/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Swarm collection contract.
   cdeclstream,versionDWORD,destination72bytememoryrecord,RET. Ignores primitive readALs.
   Mixed-endian RAWDWORD fields: BEinitialflags masked007FFFFF
   atdest+0;BE+4/+8;LE+C/+10;BE+14;BYTE+18; delegated8C0C50
   into+1C;LE+24/+28/+2C;BE+34;BEcomponentcount thenresizevector+38. Each component
   has128byteMEMORYstride (NOT proven128wirebytes):BYTE expandsDWORD+0;BEUInt32 thenLOWBYTE
   expandsDWORD+4
   (MOVZXat92F867);BEUInt16+8;BEUInt32+18;delegated8C9B80into+1C;LEUInt32+C/+10/+14;BYTES+40/+41;delegated92F440into+44;BEUInt32+54..+70step4;BEUInt16+74/+76;BEUInt32+78/+7C;
   ifSIGNEDversion>=2, extraBYTES+42/+43. Lower-version leaves those
   lastfieldsunchanged/default-owner, notexplicitzero. ComponentloopusesUNSIGNEDJBcount, unlike
   collection'ssignedfactoryloops. Full nested wire lengths, semantics/defaults andstreamfailure
   containment unexpanded. */

void __cdecl SwarmDescription_Read(void *stream,uint descriptionVersion,byte *destination)

{
  byte *pbVar1;
  uint *puVar2;
  int local_10;
  uint local_c;
  uint local_8;
  byte local_4 [4];
  
  Stream_ReadUInt32(stream,&local_8,0);
  pbVar1 = destination;
  *(uint *)destination = local_8 & 0x7fffff;
  Stream_ReadUInt32(stream,(uint *)(destination + 4),0);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 8),0);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0xc),1);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x10),1);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x14),0);
  Stream_ReadByte(stream,pbVar1 + 0x18);
  FUN_008c0c50(stream,(int *)(pbVar1 + 0x1c));
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x24),1);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x28),1);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x2c),1);
  Stream_ReadUInt32(stream,(uint *)(pbVar1 + 0x34),0);
  Stream_ReadUInt32(stream,&local_c,0);
  FUN_0092f6c0(pbVar1 + 0x38,local_c);
  local_8 = 0;
  if (local_c != 0) {
    local_10 = 0;
    do {
      puVar2 = (uint *)(*(int *)(pbVar1 + 0x38) + local_10);
      Stream_ReadByte(stream,(byte *)&destination);
      *puVar2 = (uint)destination & 0xff;
      Stream_ReadUInt32(stream,(uint *)local_4,0);
                    /* MOVZX takes LOWBYTE of already big-endian-decodedUInt32, not first wire byte;
                       stores widenedDWORD atcomponent+4. */
      puVar2[1] = (uint)local_4[0];
      Stream_ReadUInt16(stream,(ushort *)(puVar2 + 2),0);
      Stream_ReadUInt32(stream,puVar2 + 6,0);
      FUN_008c9b80(stream,puVar2 + 7);
      Stream_ReadUInt32(stream,puVar2 + 3,1);
      Stream_ReadUInt32(stream,puVar2 + 4,1);
      Stream_ReadUInt32(stream,puVar2 + 5,1);
      Stream_ReadByte(stream,(byte *)(puVar2 + 0x10));
      Stream_ReadByte(stream,(byte *)((int)puVar2 + 0x41));
      FUN_0092f440(stream,(int *)(puVar2 + 0x11));
      Stream_ReadUInt32(stream,puVar2 + 0x15,0);
      Stream_ReadUInt32(stream,puVar2 + 0x16,0);
      Stream_ReadUInt32(stream,puVar2 + 0x17,0);
      Stream_ReadUInt32(stream,puVar2 + 0x18,0);
      Stream_ReadUInt32(stream,puVar2 + 0x19,0);
      Stream_ReadUInt32(stream,puVar2 + 0x1a,0);
      Stream_ReadUInt32(stream,puVar2 + 0x1b,0);
      Stream_ReadUInt32(stream,puVar2 + 0x1c,0);
      Stream_ReadUInt16(stream,(ushort *)(puVar2 + 0x1d),0);
      Stream_ReadUInt16(stream,(ushort *)((int)puVar2 + 0x76),0);
      Stream_ReadUInt32(stream,puVar2 + 0x1e,0);
      Stream_ReadUInt32(stream,puVar2 + 0x1f,0);
      if (1 < (int)descriptionVersion) {
        Stream_ReadByte(stream,(byte *)((int)puVar2 + 0x42));
        Stream_ReadByte(stream,(byte *)((int)puVar2 + 0x43));
      }
      local_10 = local_10 + 0x80;
      local_8 = local_8 + 1;
    } while (local_8 < local_c);
  }
  return;
}

