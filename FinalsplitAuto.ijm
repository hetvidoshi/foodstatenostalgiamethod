		
run("Conversions...", " ");    // turns both off
run("Conversions...", "scale");
		longName = getTitle();
		run("Split Channels");
		selectWindow(longName + " (green)");
run("Conversions...", " ");    // turns both off
run("Conversions...", "scale");
		//run("Brightness/Contrast...");
		run("Enhance Contrast", "saturated=0.35");
		run("Apply LUT");
		selectWindow(longName + " (red)");
		run("Enhance Contrast", "saturated=0.35");
		run("Apply LUT");
		selectWindow(longName + " (blue)");
		run("Enhance Contrast", "saturated=0.35");
		run("Apply LUT");
		run("Merge Channels...", "c1=["+ longName + " (red)]"+ " c2=[" + longName + " (green)]"+ " c3=[" + longName +" (blue)] create");
