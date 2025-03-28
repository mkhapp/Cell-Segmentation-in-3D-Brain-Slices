path = getDirectory("image");
name = getTitle();
setThreshold(1.0000, 1000000000000000000000000000000.0000);
setOption("BlackBackground", false);
run("Convert to Mask", "background=Dark");
newname = split(name, "_");
rename(newname[0]+"_binary.tif");
saveAs("tiff", path+newname[0]+"_binary.tif");
close();