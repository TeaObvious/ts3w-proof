// PC1.67 identified original managed method(s); execution-free ILSpy rendering.
// Original metadata names/tokens retained; accessor fragments need not be standalone compilable C#.
// See guides/appearance/color-info-serialization.md and the central managed reference inputs.
using System;
using System.Collections;
using System.IO;
using System.Text;
using Sims3.SimIFace;
using Sims3.SimIFace.CustomContent;

public Hashtable ExportNamedInstance(string instanceName, uint instanceGroupId, uint classResourceType, ISKUUtils skuUtils)
{
	ResKeyTable resKeyTable = new ResKeyTable();
	MemoryStream memoryStream = new MemoryStream();
	BinaryWriter binaryWriter = new BinaryWriter(memoryStream);
	mSkuUtils = skuUtils;
	switch (mUse)
	{
	case PreferredUse.Hair:
		classResourceType = 103965146u;
		break;
	case PreferredUse.CAS:
		classResourceType = 103965168u;
		break;
	case PreferredUse.Object:
		classResourceType = 103965203u;
		break;
	case PreferredUse.Makeup:
		classResourceType = 979742505u;
		break;
	}
	ResourceKey resourceKey = new ResourceKey(ResourceUtils.HashString64(instanceName), classResourceType, instanceGroupId);
	binaryWriter.Write((ushort)UsageSubCategory);
	binaryWriter.Write((uint)mColors.Length);
	for (int i = 0; i < mColors.Length; i++)
	{
		binaryWriter.Write(mColors[i].ARGB);
	}
	binaryWriter.Write((uint)mFabrics.Length);
	for (int j = 0; j < mFabrics.Length; j++)
	{
		ResourceKey newKey = BuildKey(mFabrics[j].ResKeyStr);
		binaryWriter.Write((byte)resKeyTable.AddKey(newKey));
		binaryWriter.Write((uint)mFabrics[j].Colors.Length);
		for (int k = 0; k < mFabrics[j].Colors.Length; k++)
		{
			binaryWriter.Write(mFabrics[j].Colors[k].ARGB);
		}
		if (mFabrics[j].HSVBases == null)
		{
			binaryWriter.Write(0u);
			continue;
		}
		binaryWriter.Write((uint)mFabrics[j].HSVBases.Length);
		for (int l = 0; l < mFabrics[j].HSVBases.Length; l++)
		{
			binaryWriter.Write((uint)(mFabrics[j].HSVBases[l] * 1000f));
		}
	}
	binaryWriter.Write(mFavorite);
	binaryWriter.Write(mFavoriteContentType);
	binaryWriter.Flush();
	byte[] array = new byte[memoryStream.Length];
	Array.Copy(memoryStream.GetBuffer(), array, memoryStream.Length);
	memoryStream = new MemoryStream();
	binaryWriter = new BinaryWriter(memoryStream, Encoding.BigEndianUnicode);
	binaryWriter.Write(kVersion);
	binaryWriter.Write(array.Length);
	binaryWriter.Write(array, 0, array.Length);
	binaryWriter.Write((byte)resKeyTable.Count);
	foreach (ResourceKey key in resKeyTable.KeyList)
	{
		binaryWriter.Write(key.InstanceId);
		binaryWriter.Write(key.GroupId);
		binaryWriter.Write(key.TypeId);
	}
	binaryWriter.Flush();
	return ResourceKeyToData.Create(resourceKey, memoryStream);
}
