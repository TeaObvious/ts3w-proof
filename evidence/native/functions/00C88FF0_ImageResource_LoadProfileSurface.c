/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl FOURwords key16,preserveSourceFormat,outSurface,allocate; callerD1A104
   pushes1,outD0,1,key thenADDESP10hex. Selects onlytype2F7D0002/4/6
   ->decoderformat2/4/6;otherreturnsAL0withoutlookup. Resource service virtual4
   getskey,outstream,0,1,6;streamvirtual18 byte source,virtual20 release view,virtual8 release
   stream. Decompiler seededonearg signature hid threeargs and caused false unaff_SI/unaff_EDI;
   physicalargs are stackwords,notincoming SI/DI. */

bool __cdecl
ImageResource_LoadProfileSurface
          (undefined *key,bool preserveSourceFormat,undefined *outSurface,bool allocate)

{
  int iVar1;
  char cVar2;
  bool bVar3;
  int *piVar4;
  undefined *puVar5;
  undefined1 unaff_SI;
  uint format;
  undefined *unaff_EDI;
  undefined1 preserveSourceFormat_00;
  
  puVar5 = key;
  iVar1 = *(int *)(key + 8);
  if (iVar1 == 0x2f7d0002) {
    format = 2;
  }
  else if (iVar1 == 0x2f7d0004) {
    format = 4;
  }
  else {
    if (iVar1 != 0x2f7d0006) {
      return false;
    }
    format = 6;
  }
  piVar4 = (int *)FUN_0072f140();
  key = (undefined *)0x0;
  cVar2 = (**(code **)(*piVar4 + 4))(puVar5,&key,0);
  if (cVar2 == '\0') {
    (**(code **)(iRam00000001 + 8))();
    return false;
  }
  preserveSourceFormat_00 = 6;
  puVar5 = (undefined *)(**(code **)(iRam00000001 + 0x18))();
  bVar3 = ImageResource_DecodeFirstFrameToSurface
                    (puVar5,format,(bool)preserveSourceFormat_00,unaff_EDI,(bool)unaff_SI);
  (**(code **)(iRam00000001 + 0x20))();
  (**(code **)(iRam00000001 + 8))();
  return bVar3;
}

