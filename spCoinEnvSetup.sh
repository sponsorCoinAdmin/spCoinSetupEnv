git checkout main
export SPONSOR_COIN_SETUP=$PWD;
export SPONSOR_COIN_HOME=${SPONSOR_COIN_SETUP%/*};
export SPONSOR_COIN_ROOT=${SPONSOR_COIN_HOME%/*};
export SPONSOR_COIN_ENV=$SPONSOR_COIN_HOME/env;
export SPONSOR_COIN_LOGS=$SPONSOR_COIN_HOME/logs

echo "SPONSOR_COIN_SETUP=$SPONSOR_COIN_SETUP"
echo "SPONSOR_COIN_HOME=$SPONSOR_COIN_HOME"
echo "SPONSOR_COIN_ROOT=$SPONSOR_COIN_ROOT"
echo "SPONSOR_COIN_ENV=$SPONSOR_COIN_ENV"
echo "SPONSOR_COIN_LOGS=$SPONSOR_COIN_LOGS"
echo ""

echo "Adding startup environment configuration Files For Sponsor Coin $SPONSOR_COIN_ENV/.e"
echo "export SPONSOR_COIN_ENV=$SPONSOR_COIN_ENV    " | tee $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_SETUP=$SPONSOR_COIN_SETUP" | tee -a $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_HOME=$SPONSOR_COIN_HOME  " | tee -a $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_LOG=$SPONSOR_COIN_LOGS   " | tee -a $SPONSOR_COIN_ENV/.e
echo "export SPONSOR_COIN_ROOT=$SPONSOR_COIN_ROOT  " | tee -a $SPONSOR_COIN_ENV/.e

cat $SPONSOR_COIN_SETUP/ORIG.e >> $SPONSOR_COIN_ENV/.e
# cp $SPONSOR_COIN_SETUP/ORIG.ea $SPONSOR_COIN_ENV/.ea
# cp $SPONSOR_COIN_SETUP/ORIG.pa $SPONSOR_COIN_ENV/.pa
# cp $SPONSOR_COIN_SETUP/ORIG.ta $SPONSOR_COIN_ENV/.ta
cp $SPONSOR_COIN_SETUP/ORIG.ua $SPONSOR_COIN_ENV/.ua
echo ""

echo "Adding sponsor coin startup configuration Files to bootstrap file ~/.baschrc"
echo ". "$SPONSOR_COIN_ENV"/.e" | tee -a ~/.bashrc
. $SPONSOR_COIN_ENV/.e

echo "Installing the Node Libraries"
echo "CHANGING TO DIRECTORY "$SPONSOR_COIN_HOME
cd $SPONSOR_COIN_HOME
echo "EXECUTING COMMAND npm i"
npm i
#npm audit fix --force

echo "Starting menu with 'm' alias"
m

iecho "EXECUTING cp $SPONSOR_COIN_ENV/.SAMPLE.env $SPONSOR_COIN_HOME/.env"
cp $SPONSOR_COIN_ENV/.SAMPLE.env $SPONSOR_COIN_HOME/.env
echo ""
echo "*** IMPORTANT SETUP NOTE ***"
echo "Please ensure the '.env' file is configured for proper operations"
echo "    EXAMPLE .env file is located at:"
echo "    $SPONSOR_COIN_SETUP/SAMPLE.env"
