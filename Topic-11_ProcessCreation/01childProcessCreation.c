//! Child process creation using fork() system call

#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>

int main()
{
    pid_t pid; 
    pid = fork();
    fork();
    if (pid == 0)
    {
        printf("Child: child process id %d, ParentProcess id %d\n", getpid(), getppid());
    }
    else
    {
        wait(NULL);
        printf("Parent: proces ID %d, parent process ID %d\n", getpid(), getppid());
        printf("New child process ID %d\n", pid);
    }
    return 0;
}
