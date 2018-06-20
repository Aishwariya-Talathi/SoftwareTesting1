#define n 3
int x[n];

active proctype specProcess()
{
x[_pid]= 0;
label1: if :: x[_pid]==x[n-1] -> x[_pid]=(x[_pid]+1)%n;
printf("Process ID := %d\n", _pid); /*printing _pids to check traces*/
fi;
goto label1;
}

active[2] proctype process()
{
x[_pid] = 0;
label2: if :: x[_pid]!=x[_pid-1] -> x[_pid]=x[_pid-1];
printf("Process ID := %d\n", _pid);
fi;
goto label2;
}
