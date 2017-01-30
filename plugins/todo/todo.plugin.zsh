function t {
  todo.sh $*
  # generate .plan
}
function todo {
  TASK=`echo "$*" | sed  -e 's/^\.\([A-Za-z]\)\ /(\1) /' -e 's/^(\([a-z]\))/(\U\1)/'`
  todo.sh add "$TASK"
  # generate .plan
}
function I {
  todo.sh done $*
  # generate .plan
}
function did {
  todo.sh do $*
}
function didlog {
  todo.sh lately $*
  # generate .plan
}
