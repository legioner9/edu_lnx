# TMOUT=3            бесполезно в сценариях

TIMELIMIT=3  # Три секунды в данном случае, но может быть установлено и другое значение

PrintAnswer()
{
  if [ "$answer" = TIMEOUT ]
  then
    echo $answer
  else       # Чтобы не спутать разные варианты вывода.
    echo "Ваше любимое растение $answer"
    kill $!  # "Прибить" ненужную больше функцию TimerOn, запущенную в фоновом процессе.
             # $! -- PID последнего процесса, запущенного в фоне.
  fi

}



TimerOn()
{
  sleep $TIMELIMIT && kill -s 14 $$ &
  # Ждать 3 секунды, после чего выдать sigalarm сценарию.
}

Int14Vector()
{
  answer="TIMEOUT"
  PrintAnswer
  exit 14
}

trap Int14Vector 14   # переназначить процедуру обработки прерывания от таймера (14)

# In CLI:
echo "Ваше любимое растение? "
TimerOn
read -r answer
PrintAnswer
