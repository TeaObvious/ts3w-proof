/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX owner; builder pointer, RET4.
   Owner+2C/+30 is64-byte record range. Jump table936274: kinds0/3 append string(type1),1
   inline16-byte key(type3),2 skips here,4 appends rawword(type5). Above4 skips. No deduplication or
   replacement; order is retained until final sort. Count uses signed SAR6 on byte span; malformed
   range admission unproved. */

void __thiscall ObjectParams_AppendDirectDefaults(void *this,void *builder)

{
  int iVar1;
  uint *puVar2;
  int iVar3;
  
  iVar1 = *(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 6;
  if (iVar1 != 0) {
    iVar3 = 0;
    do {
      puVar2 = (uint *)(*(int *)((int)this + 0x2c) + iVar3);
      switch(*(undefined1 *)(*(int *)((int)this + 0x2c) + 0x3c + iVar3)) {
      case 0:
      case 3:
        ParameterBuilder_AppendByteString(builder,*puVar2,(char *)puVar2[1]);
        break;
      case 1:
        ParameterBuilder_AppendResourceKey16(builder,*puVar2,puVar2 + 6);
        break;
      case 4:
        ParameterBuilder_AppendRawWordType5(builder,*puVar2,puVar2[0xe]);
      }
      iVar3 = iVar3 + 0x40;
      iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
  }
  return;
}

