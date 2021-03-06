if [ $# -gt 0 ]; then

  CORNERSTONE_SDK_ROOT=/opt/cornerstone-2.0.1

  ROOT=`dirname "$0"`
  CORNERSTONE_ROOT=${CORNERSTONE_SDK_ROOT:-$CORNERSTONE_ROOT_2_0_1}
  CMD="$ROOT/$@"
  if [ -e "$CORNERSTONE_ROOT/bin/ScriptRunner" ]; then
    exec $CORNERSTONE_ROOT/bin/ScriptRunner $CMD
  elif [ -e "$CORNERSTONE_ROOT/bin/ScriptRunner.app/Contents/MacOS/ScriptRunner" ]; then
    exec $CORNERSTONE_ROOT/bin/ScriptRunner.app/Contents/MacOS/ScriptRunner $CMD
  elif [ -e "$CORNERSTONE_ROOT/Applications/ScriptRunner/ScriptRunner" ]; then
    exec $CORNERSTONE_ROOT/Applications/ScriptRunner/ScriptRunner $CMD
  elif [ -e "$CORNERSTONE_ROOT/Applications/ScriptRunner/ScriptRunner.app/Contents/MacOS/ScriptRunner" ]; then
    exec $CORNERSTONE_ROOT/Applications/ScriptRunner/ScriptRunner.app/Contents/MacOS/ScriptRunner $CMD
  elif [ -e "$ROOT/../../../bin/ScriptRunner" ]; then
    exec "$ROOT/../../../bin/ScriptRunner" $CMD
  elif [ -e "$ROOT/../../../bin/ScriptRunner.app/Contents/MacOS/ScriptRunner" ]; then
    exec "$ROOT/../../../bin/ScriptRunner.app/Contents/MacOS/ScriptRunner" $CMD
  else
    exec ScriptRunner $CMD
  fi
fi
