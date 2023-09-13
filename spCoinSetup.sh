# NOTE: Requires git setup

currDir=$PWD
#repo=spCoinHardHatTests
#repo=spCoinUniSwapTests
#repo=spCoinSimpleSwapTest
#repo=V3SwapRouter
#repo=spCoinFrontEndTests
repo=MORALIS
git clone --recurse-submodules git@github.com:sponsorCoinAdmin/$repo.git
cd ./$repo/setupEnv
. ./spCoinEnvSetup.sh | tee -a ../logs/spCoinEnvSetup.log
cdspc
