cd /home/trinhlk/Downloads/IFinder/compiler/distribution
./wrap.sh
cd /home/trinhlk/Downloads/IFinder/ujf.verimag.bip.ifinder
ant -lib ../compiler/distribution/lib jar
chmod u+x /home/trinhlk/Downloads/IFinder/ujf.verimag.bip.ifinder/cli-lib/*.bin 
chmod u+x /home/trinhlk/Downloads/IFinder/ujf.verimag.bip.ifinder/cli-lib/*.so
export PATH=$PATH:/home/trinhlk/Downloads/IFinder/ujf.verimag.bip.ifinder/cli-lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/trinhlk/Downloads/IFinder/ujf.verimag.bip.ifinder/cli-lib
