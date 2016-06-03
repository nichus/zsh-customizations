function t {
  todo.sh $*
  # generate .plan
}
function todo {
  TASK=`echo "$@" | sed -e 's/^\.\([A-Za-z]\)\s/\(\U\1\) /'`
  todo.sh add "$TASK"
  # generate .plan
}
function I {
  todo.sh done $*
  # generate .plan
}
function didlog {
  todo.sh w
  # generate .plan
}
