# Cell-Segmentation-in-3D-Brain-Slices
For Lee Peyton


Step 1 - Manually remove slices with unequal numbers of tiles.\
Step 2 - Despeckle all remaining slices.\
Step 3 - Make single channel images using "SingleChannels.ijm".\
Step 4 - Open the D1, NeuN, and PV images.  Check the histograms and multiply to scale images similarly if needed.  Add the images together (32-bits) using "D1+NeuN+PV.ijm" and save as D1+NeuN+PV.\
Step 5 - Run a single channel image through Cellpose using "CellposeMacro.ijm".\
Step 6 - Track single cells using TrackMate, the label image detector, and the LAP tracker. Remove spots that aren't assigned to tracks. Export a label image. Convert time frames to z-slices using image properties. Save as "_label" image.\
Step 7 - Convert label image to binary image using "Binarize.ijm".

