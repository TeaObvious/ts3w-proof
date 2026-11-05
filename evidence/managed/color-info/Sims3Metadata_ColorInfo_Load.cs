// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using System.IO;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

private bool Load(byte[] bytes)
{
	MemoryStream memoryStream = new MemoryStream(bytes);
	BinaryReader binaryReader = new BinaryReader(memoryStream);
	int num = binaryReader.ReadInt32();
	if (num > kVersion)
	{
		return false;
	}
	if (num >= 1)
	{
		int num2 = binaryReader.ReadInt32();
		long position = memoryStream.Position;
		memoryStream.Position += num2;
		byte b = binaryReader.ReadByte();
		ushort num3 = b;
		ResKeyTable resKeyTable = new ResKeyTable();
		for (ushort num4 = 0; num4 < num3; num4++)
		{
			resKeyTable.AddKey(new ResourceKey
			{
				InstanceId = binaryReader.ReadUInt64(),
				GroupId = binaryReader.ReadUInt32(),
				TypeId = binaryReader.ReadUInt32()
			});
		}
		long position2 = memoryStream.Position;
		memoryStream.Position = position;
		if (num >= 2)
		{
			mUseSubCategory = (eUsageSubCategory)binaryReader.ReadUInt16();
		}
		int num5 = binaryReader.ReadInt32();
		mColors = new Color[num5];
		for (int i = 0; i < num5; i++)
		{
			mColors[i].ARGB = binaryReader.ReadUInt32();
		}
		uint num6 = binaryReader.ReadUInt32();
		mFabrics = new FabricInfo[num6];
		for (int j = 0; j < num6; j++)
		{
			byte index = binaryReader.ReadByte();
			ResourceKey resKey = resKeyTable.KeyList[index];
			mFabrics[j].ResKey = resKey;
			uint num7 = binaryReader.ReadUInt32();
			mFabrics[j].Colors = new Color[num7];
			for (int k = 0; k < num7; k++)
			{
				mFabrics[j].Colors[k].ARGB = binaryReader.ReadUInt32();
			}
			if (num >= 4)
			{
				uint num8 = binaryReader.ReadUInt32();
				mFabrics[j].HSVBases = new float[num8];
				for (int l = 0; l < num8; l++)
				{
					mFabrics[j].HSVBases[l] = (float)binaryReader.ReadUInt32() / 1000f;
				}
			}
			else if (num >= 3)
			{
				uint num9 = binaryReader.ReadUInt32();
				mFabrics[j].HSVBases = new float[num9];
				for (int m = 0; m < num9; m++)
				{
					mFabrics[j].HSVBases[m] = float.Parse(binaryReader.ReadString());
				}
			}
			else
			{
				mFabrics[j].HSVBases = new float[0];
			}
		}
		if (num >= 5)
		{
			mFavorite = binaryReader.ReadBoolean();
		}
		if (num >= 6)
		{
			mFavoriteContentType = binaryReader.ReadUInt32();
		}
		memoryStream.Position = position2;
	}
	return true;
}
