
## Summary

* I have to build `genders` using WSL(Windows Subsystem Linux) since that was only Linux environment I can make use of on my laptop

* Did some test using Mingw and MSYS with mixed results

* Though not all tools can be build due to limitation with JDK deps, but we managed to create binary for `nodeattr`

* Included are small bash program called `update.sh`, for now are only capable of updating mac address of intended node

* Script usage: 
	* `./update.sh genders`
	* input on terminal which node intended for change were to happen
	* input on terminal the new Mac address for the node  
