//setBatchMode("hide");
rename("Image");

for (i = 1; i <= nSlices; i++) {
	run("Slice Keeper", "first="+i+" last="+i+" increment=1");
	selectImage("Image kept stack");
	run("Cellpose ...", "env_path=C:\\Users\\travermk\\AppData\\Local\\miniconda3\\envs\\cellpose env_type=conda model=cyto3 model_path=path\\to\\own_cellpose_model diameter=31 ch1=0 ch2=-1 additional_flags=--use_gpu, --flow_threshold, 0.6, --cellprob_threshold, -1");
	selectImage("Image-cellpose");
	rename(i);
	close("Image kept stack");
	selectImage("Image");
}

close("Image");
run("Images to Stack", "use");
setBatchMode("exit and display");