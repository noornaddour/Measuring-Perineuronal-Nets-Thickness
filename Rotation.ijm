//open Plugins-->Macro--> record...
//make a line selection and double click on the line icon to change the wide
//I prefered 15/ draw the line. take the recording ofthe command from the record 
//window.
//change the names in the comand: selectWindo to your image. then run.
makeLine(498, 101, 499, 248); //needs to change

selectWindow("SODES_WFA_Iba1_Dapi_11 (2).lif - C=1"); //needs to change
run("Plot Profile");
selectWindow("SODES_WFA_Iba1_Dapi_11 (2).lif - C=1"); //needs to change
run("Rotate...", "  angle=45");
run("Plot Profile");
selectWindow("SODES_WFA_Iba1_Dapi_11 (2).lif - C=1"); //needs to change
run("Rotate...", "  angle=45");
run("Plot Profile");
selectWindow("SODES_WFA_Iba1_Dapi_11 (2).lif - C=1"); //needs to change
run("Rotate...", "  angle=45");
run("Plot Profile");
selectWindow("SODES_WFA_Iba1_Dapi_11 (2).lif - C=1"); //needs to change
run("Rotate...", "  angle=45");
