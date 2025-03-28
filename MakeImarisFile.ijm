path = getDirectory("image");
names = newArray("SingleChannelNuclei.tif", "SingleChannelD1.tif", "SingleChannelPV.tif", "SingleChannelNeuN.tif", "SingleChannelD1_binary.tif", "SingleChannelNeuN_binary.tif");
for (i = 0; i < names.length; i++) {
	open(path + names[i]);
}
selectImage("AllCells_binary.tif");
run("16-bit");
selectImage("SingleChannelD1_binary.tif");
run("16-bit");
selectImage("SingleChannelNeuN_binary.tif");
run("16-bit");
run("Merge Channels...", "c1=SingleChannelNuclei.tif c2=SingleChannelD1.tif c3=SingleChannelPV.tif c4=SingleChannelNeuN.tif c5=AllCells_binary.tif c6=SingleChannelD1_binary.tif c7=SingleChannelNeuN_binary.tif create ignore");
saveAs("tiff", path + "Imaris.tif");
close();