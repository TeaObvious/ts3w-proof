/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: extracts up to 0x11 8-byte option records from a vertex-declaration/context structure.
   Reads byte at record +6, maps known values 0..6 to internal option IDs, pairs with the byte at
   +7, and appends packed words. Unknown values are skipped. This is an input producer for the
   shader-set interpreter.
   
   Analyst PC1.67 original contract. ECX packed-option output buffer, one declaration pointer, RET4.
   Read declaration element-array+18/count+1C; at most17 eight-byte NativeVertexElement8 records.
   Map semantic byte+6 values0/1/2/3/4/5/6 to0/1/6/3/4/2/5; pack semantic-index byte+7 in high byte;
   unknown semantics skipped. This argument is not an integer rendering mode. Null pointer
   contributes no packed options. */

void __thiscall ShaderSet_AppendVertexDeclarationOptions(void *this,void *vertexDeclaration)

{
  uint uVar1;
  uint uVar2;
  undefined1 *puVar3;
  
  if (vertexDeclaration != (void *)0x0) {
    uVar1 = *(uint *)((int)vertexDeclaration + 0x1c);
    if (0x11 < uVar1) {
      uVar1 = 0x11;
    }
    if (uVar1 != 0) {
      puVar3 = (undefined1 *)(*(int *)((int)vertexDeclaration + 0x18) + 6);
      do {
        switch(*puVar3) {
        case 0:
          uVar2 = 0;
          break;
        case 1:
          uVar2 = 1;
          break;
        case 2:
          uVar2 = 6;
          break;
        case 3:
          uVar2 = 3;
          break;
        case 4:
          uVar2 = 4;
          break;
        case 5:
          uVar2 = 2;
          break;
        case 6:
          uVar2 = 5;
          break;
        default:
          goto switchD_0079fd4f_default;
        }
        *(uint *)((int)this + *(int *)this * 4 + 4) = (uint)(byte)puVar3[1] << 8 | uVar2;
        *(int *)this = *(int *)this + 1;
switchD_0079fd4f_default:
        puVar3 = puVar3 + 8;
        uVar1 = uVar1 - 1;
      } while (uVar1 != 0);
    }
  }
  return;
}

