# Cell-Segmentation-in-3D-Brain-Slices
For Lee Peyton


Step 1 - Manually remove slices with unequal numbers of tiles.\
Step 2 - Despeckle all remaining slices.\
Step 3 - Make single channel images using "SingleChannels.ijm".\
Step 4 - Open the D1, NeuN, and PV images.  Check the histograms and multiply to scale images similarly if needed.  Add the images together (32-bits) using "D1+NeuN+PV.ijm" and save as D1+NeuN+PV.\
Step 5 - Run a single channel image through Cellpose using "CellposeMacro.ijm".\
Step 6 - Track single cells using TrackMate, the label image detector, and the LAP tracker with a max distance of 2.0 microns and no gap closing. Remove spots that aren't assigned to tracks. Export a label image. Convert time frames to z-slices using image properties. Save as "_label" image.\
Step 7 - Convert label image to binary image using "Binarize.ijm".\
Step 8 - Repeat steps 5-7 for all single channel and additive images EXCEPT PV image.\
Step 9 - For each folder, open the following binary images:  D1+NeuN+PV, D1, NeuN.  Add the binaries together using "AllCellsCombo.ijm".  This makes the all cells binary in the final more accurate, since Cellpose picks up cells in additive image that it misses in the single channel, and vice versa.\

